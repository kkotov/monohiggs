#include <vector>
#include <sstream>
#include <string>
#include <string.h>
#include <algorithm>
#include <iostream>
#include <map>
//#include <unordered_map>
#include <fstream>
#include "TFile.h"
#include "TTree.h"
#include "TBranch.h"
#include "TLeaf.h"
using namespace std;

void root2csv(const char *leaflist, const char *file="/tmp/kkotov/Step3_ZnnH125.root"){
    if( strlen(leaflist) == 0 ) return;

    TFile *f = new TFile(file);
    TTree *t = (TTree*)f->Get("tree");

//    unordered_map< string, pair<char,size_t> > obs;
    map< string, pair<char,size_t> > obs;
    // parse the leaflist
    char *argument = strdup(leaflist), *token = argument;
    while(1){
        if( (token = strrchr(argument,':')) ) *token++ = '\0'; else token = argument;
        if( !strlen(token) ) continue;
        char *type;
        if( (type = strrchr(token,'/')) != NULL ) *type++ = '\0';
        else type = "D";
        size_t nElements = 1;
        char *bra = strchr(token,'['), *ket = strchr(token,']');
        if( bra != NULL && ket != NULL && ket > bra ){
            *ket = '\0';
            nElements = atoi(bra+1);
            *bra = '\0';
        }
        obs[token] = pair<char,unsigned>(*type,nElements);
        if( token == argument ) break;
    }
    free(argument);
//    reverse(obs.begin(),obs.end());


    string csvFileName(file);
    size_t ext = csvFileName.rfind(".root");
    size_t pre = csvFileName.rfind("/");
    if( ext != string::npos ) csvFileName = csvFileName.substr(0,ext);
    if( pre != string::npos ) csvFileName = csvFileName.substr(pre+1);
    csvFileName.append(".csv");
    ofstream csvFile(csvFileName.c_str());

    map< string, pair<size_t,void*> > memmap;

//    for(unordered_map< string, pair<char,size_t> >::const_iterator observable=obs.begin(); observable!=obs.end(); observable++)
    for(map< string, pair<char,size_t> >::const_iterator observable = obs.begin(); observable != obs.end(); observable++){ 
        TBranch *b  = (TBranch*) t->GetBranch(observable->first.c_str());
        if( !b ){
            cout<<"No branch "<<observable->first<<endl;
        }
        TLeaf *leaf = (TLeaf*)   b->GetListOfLeaves()->At(0);
        memmap[observable->first] = pair<size_t,void*>(15,0); //(leaf->GetLeafCount()?leaf->GetLeafCount()->GetMaximum():1),0);
    }

//    for(unordered_map< string, pair<char,size_t> >::const_iterator observable=obs.begin(); observable!=obs.end(); observable++){ 
    for(map< string, pair<char,size_t> >::const_iterator observable = obs.begin(); observable != obs.end(); observable++){ 
        const string &name  = observable->first;
        const char   &type  = observable->second.first;
        const size_t &nElem = observable->second.second;
        size_t trueSize = memmap[name].first;
        switch( type ){
            case 'I' : memmap[name].second = new int   [trueSize]; break;
            case 'F' : memmap[name].second = new float [trueSize]; break;
            case 'D' : memmap[name].second = new double[trueSize]; break;
            default  : memmap[name].second = 0; break;
        }
        if( nElem > 1 ){
            stringstream elements;
            for(size_t i=0; i<nElem; i++){
                elements<<name<<"["; 
                elements<<i<<"]";
                if( observable != --obs.end() || i+1 != nElem ) elements<<",";
                else elements<<endl;
            }
            csvFile<<elements.str();
        } else {
            csvFile<<name;
            if( observable != --obs.end() ) csvFile<<",";
            else csvFile<<endl;
        }
    }

//    for(unordered_map< string, pair<char,size_t> >::const_iterator observable=obs.begin(); observable!=obs.end(); observable++)
    for(map< string, pair<char,size_t> >::const_iterator observable = obs.begin(); observable != obs.end(); observable++) 
        t->SetBranchAddress(observable->first.c_str(),memmap[observable->first].second);

    for(int event=0; event>-1 && t->GetEvent(event); event++){

        for(map< string, pair<char,size_t> >::const_iterator observable = obs.begin(); observable != obs.end(); observable++){ 
            const string &name  = observable->first;
            const char   &type  = observable->second.first;
            const size_t &nElem = observable->second.second;
            for(size_t item=0; item<nElem; item++){
                if( observable != obs.begin() || item!=0 ) csvFile<<',';
                switch( type ){
                    case 'I' : { int    *array = (int*)   memmap[name].second; csvFile<<array[item]; } break;
                    case 'F' : { float  *array = (float*) memmap[name].second; csvFile<<array[item]; } break;
                    case 'D' : { double *array = (double*)memmap[name].second; csvFile<<array[item]; } break;
                    default  : break;
                }
            }
        }
        csvFile<<endl;
    }

    csvFile.close();
}
