#include "ftp.h"
#include <stdio.h>
#include <string.h>
#include <fstream>
#include <iostream>

using namespace std;

int main()
{
    CFTPManager myftp;
    string serverIP = "192.168.1.107";
    string userName = "tgm";
    string password = "tgm123123";
    myftp.login2Server(serverIP);
    myftp.inputUserName(userName);
    myftp.inputPassWord(password);
    string pwd;
    pwd = myftp.PWD();
    cout << pwd << endl;
    printf("hello world!\r\n");
    myftp.quitServer();
    return 0;
}