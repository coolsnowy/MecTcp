#include "server.h"

#include "muduo/base/Logging.h"
#include "muduo/net/EventLoop.h"
#include "muduo/net/EventLoopThread.h"

#include <unistd.h>

// using namespace muduo;
// using namespace muduo::net;

int main(int argc, char* argv[])
{
  LOG_INFO << "pid = " << getpid();
  if(argc < 3) {
      LOG_ERROR << "Server Port!";
      return 0;
  }
//  muduo::net::EventLoop loop;
//  muduo::net::InetAddress listenAddr(atoi(argv[1]));
//  EchoServer server(&loop, listenAddr);
//  server.start();
//  loop.loop();

//   muduo::Logger::setLogLevel(muduo::Logger::LogLevel::TRACE);
   muduo::net::EventLoopThread t1;
   muduo::net::EventLoop *loop1 = t1.startLoop();
   muduo::net::InetAddress listenAddr1(atoi(argv[1]));
   EchoServer server1(loop1, listenAddr1);
   // start() must be called in the thread same as loop
   //server.start ();
   loop1->runInLoop(std::bind(&EchoServer::start, &server1));

   muduo::net::EventLoopThread t2; // (std::bind(startServer, _1, 10001, server), "thread1");
   muduo::net::EventLoop *loop2 = t2.startLoop();
   muduo::net::InetAddress listenAddr2(atoi(argv[2]));
   EchoServer server2(loop2, listenAddr2);
   loop2->runInLoop(std::bind(&EchoServer::start, &server2));

   while(1) {}

}
