#include<iostream>
using namespace std;
#include "libInclude.h"
#include "newLib.h"
int main()
{
    cout<<"main fun"<<KIEN_NAME<<endl;
    #ifdef RUN_GET
    get();
    #endif
    #ifdef RUN_SET
    set();
    #endif
    test();
    
    return 0;
}