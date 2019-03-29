#ifndef CLIENT_H
#define CLIENT_H


#include <muduo/net/EventLoop.h>
#include <muduo/net/InetAddress.h>
#include <muduo/net/TcpClient.h>
#include <stdio.h>
#include <unistd.h>

class Client {
 public:

    Client(muduo::net::EventLoop* loop,
               const muduo::net::InetAddress& serverAddr);
    void connect();
    void write(const std::string &msg) {
        connection_->send(msg);
    }
 private:
    muduo::net::EventLoop* loop_;
    muduo::net::TcpClient client_;
    muduo::net::TcpConnectionPtr connection_;
    void onConnection(const muduo::net::TcpConnectionPtr& conn);

    void onMessage(const muduo::net::TcpConnectionPtr& conn,
                 muduo::net::Buffer* buf,
                 muduo::Timestamp receiveTime);
};


#endif  // MUDUO_EXAMPLES_SIMPLE_ECHO_ECHO_H
