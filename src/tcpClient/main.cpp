#include "Client.h"
#include <muduo/base/Logging.h>
#include "json/json.h"
#include "autoParking/obstacle.hpp"
#include "AutoParking.h"
#include <lcm/lcm-cpp.hpp>



#include <string>
#include <iostream>
#include <pthread.h>
#include <muduo/net/EventLoopThread.h>


using std::cout;
using std::endl;
using std::cin;
using std::string;


int main(int argc, char** argv)
{
    muduo::Logger::setLogLevel(muduo::Logger::LogLevel::TRACE);



    LOG_INFO << "pid = " << getpid();
    if(argc < 2) {
    printf("Usage: %s host_ip\n", argv[0]);
    }
//    muduo::net::EventLoop loop;
    muduo::net::InetAddress serverAddr(argv[1], atoi(argv[2]));
//    Client tcpClient(&loop, serverAddr);
//    tcpClient.connect();
    string sendMessage;
//    int cnt = 0;
    //      while(cin >> sendMessage){
    //          cout << "send " << ++cnt<< " times" << endl;
    //          timeClient.write(jsonTest);
    //      }

    AutoParking autoPark(serverAddr);
    autoPark.loop();
    return 0;
}

