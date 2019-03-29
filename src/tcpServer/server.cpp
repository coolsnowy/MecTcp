#include "server.h"
#include "json/json.h"
#include <iostream>

#include <muduo/base/Logging.h>

using std::cout;
using std::endl;
using std::string;
using std::placeholders::_1;
using std::placeholders::_2;
using std::placeholders::_3;


// using namespace muduo;
// using namespace muduo::net;

EchoServer::EchoServer(muduo::net::EventLoop* loop,
                       const muduo::net::InetAddress& listenAddr)
  : server_(loop, listenAddr, "EchoServer")
{
  server_.setConnectionCallback(
      std::bind(&EchoServer::onConnection, this, _1));
  server_.setMessageCallback(
      std::bind(&EchoServer::onMessage, this, _1, _2, _3));
}

void EchoServer::start()
{
    server_.start();
}

void EchoServer::onConnection(const muduo::net::TcpConnectionPtr& conn)
{
  LOG_INFO << "EchoServer - " << conn->peerAddress().toIpPort() << " -> "
           << conn->localAddress().toIpPort() << " is "
           << (conn->connected() ? "UP" : "DOWN");
}

void EchoServer::onMessage(const muduo::net::TcpConnectionPtr& conn,
                           muduo::net::Buffer* buf,
                           muduo::Timestamp time)
{

    muduo::string msg(buf->retrieveAllAsString());
    LOG_INFO << conn->name() << " echo " << msg.size() << " bytes, "
           << "data received at " << time.toString();
    cout << "content is : " << msg << endl;
    conn->send(msg);

    cout << "start parse" << endl;
    Json::Reader reader;
    Json::Value root;
    if(reader.parse(msg, root)) {
//        cout<<"读取package中各个成员的信息:"<<endl;
        int a = root["a"].asInt();
//        cout<<"a的值:"<<a<<endl;
        string name=root["key_object"]["name"].asString();
//        cout<<"读取子节点信息:"<<name<<endl;
        //Json::Reader 是用于读取的，说的确切点，是用于将字符串转换为 Json::Value 对象的
    }
}
