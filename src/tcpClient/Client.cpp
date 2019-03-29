#include "Client.h"

#include <iostream>
#include <functional>
#include <muduo/base/Logging.h>
#include <muduo/net/Endian.h>

#include <utility>

using namespace muduo;
using namespace muduo::net;
using std::cin;
using std::cout;
using std::placeholders::_1;
using std::placeholders::_2;
using std::placeholders::_3;

Client::Client(EventLoop* loop, const InetAddress& serverAddr)
  : loop_(loop),
    client_(loop, serverAddr, "TimeClient")
{
  client_.setConnectionCallback(
      std::bind(&Client::onConnection, this, _1));
  client_.setMessageCallback(
      std::bind(&Client::onMessage, this, _1, _2, _3));
  // client_.enableRetry();
}

void Client::connect()
{
  client_.connect();
}

void Client::onConnection(const TcpConnectionPtr& conn)
{
  LOG_INFO << conn->localAddress().toIpPort() << " -> "
           << conn->peerAddress().toIpPort() << " is "
           << (conn->connected() ? "UP" : "DOWN");
   connection_ = conn;
  if (!conn->connected())
  {
    loop_->quit();
  }
}

void Client::onMessage(const TcpConnectionPtr& conn, Buffer* buf, Timestamp receiveTime)
{
  if (buf->readableBytes() >= sizeof(int32_t))
  {
    const void* data = buf->peek();
    int32_t be32 = *static_cast<const int32_t*>(data);
    buf->retrieve(sizeof(int32_t));
    time_t time = sockets::networkToHost32(be32);
    Timestamp ts(implicit_cast<uint64_t>(time) * Timestamp::kMicroSecondsPerSecond);
    LOG_INFO << "Server time = " << time << ", " << ts.toFormattedString();
  }
  else
  {
    LOG_INFO << conn->name() << " no enough data " << buf->readableBytes()
             << " at " << receiveTime.toFormattedString();
  }
}

