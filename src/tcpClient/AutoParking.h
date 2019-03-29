#ifndef AUTOPARKING_H
#define AUTOPARKING_H

#include "lcm/lcm-cpp.hpp"
#include "muduo/net/EventLoop.h"
#include "autoParking/obstacle.hpp"
#include "muduo/net/InetAddress.h"
#include "Client.h"


class AutoParking
{
public:
    AutoParking(const muduo::net::InetAddress& serverAddr);
    ~AutoParking();
    void loop();
private:
    void handleAutoParkingMessage(const lcm::ReceiveBuffer *rbuf,
                                      const std::string &string,
                                      const protocol::obstacle *msg);
    muduo::net::EventLoop _loop;
    lcm::LCM _lcm;
    std::unique_ptr<muduo::net::Channel> _lcmChannel;
    Client tcpClient;
};



#endif // AUTOPARKING_H
