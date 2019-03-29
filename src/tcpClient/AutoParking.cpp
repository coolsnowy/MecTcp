#include "AutoParking.h"
#include "muduo/base/Logging.h"
#include "json/json.h"
#include "muduo/net/Channel.h"

#include <iostream>

using std::cout;
using std::endl;

AutoParking::AutoParking(const muduo::net::InetAddress& serverAddr)
    : _lcm("udpm://239.255.76.67:7667?ttl=1"),
      _loop(),
      tcpClient(&_loop, serverAddr) {
    tcpClient.connect();
    // lcm
    if(!_lcm.good()){
        LOG_ERROR << "lcm init error";
    }
    _lcm.subscribe("OBSTACLE", &AutoParking::handleAutoParkingMessage, this);
    _lcmChannel.reset(new muduo::net::Channel(&_loop, _lcm.getFileno()));
        _lcmChannel->setReadCallback(std::bind(&lcm::LCM::handle, &_lcm));
        _lcmChannel->enableReading();
}

void AutoParking::loop() {
    LOG_INFO<< "loop start";
    _loop.loop();
    LOG_INFO<< "loop end";
}
void AutoParking::handleAutoParkingMessage(const lcm::ReceiveBuffer *rbuf,
                                  const std::string &string,
                              const protocol::obstacle *msg) {
    cout << "**************Receive a new message**************" << endl;
    cout << "id = " << msg->id << endl;
    cout << "type = " << msg->type << endl;
    cout << "x = " << msg->x << endl;
    cout << "y = " << msg->y << endl;

    //test
    // test package
    Json::Value root;
    Json::FastWriter fast;
    Json::Value json_temp;// 临时对象，供如下代码使用
    json_temp["carName"] = Json::Value("Car 1");
    json_temp["carId"] = Json::Value(1);

    root["CarSpeed"]= Json::Value(30);//字符型.新建一个 Key（名为：a），赋予字符串值："value_string"。
    root["CarHeight"]= Json::Value(2);//数字
    root["Brake"]= Json::Value(false);//新建一个 Key（名为：c），赋予bool值：false。
    root["CarAcceleration"]= Json::Value(3.14);//新建一个 Key（名为：d），赋予 double 值：3.14
    root["CarInfo"]= json_temp;//新建一个 Key（名为：key_object），赋予 json::Value 对象值
    root["key_array"].append("optional message");// 新建一个 Key（名为：key_array），类型为数组，对第一个元素赋值为字符串："array_string"。
    root["key_array"].append(1234);

//    cout<<fast.write(root)<<endl;
    Json::StyledWriter styled_writer;//另一种格式化的方式,输出结果的格式不一样
    std::string jsonTest(styled_writer.write(root));
    cout << styled_writer.write(root) <<endl;
    tcpClient.write(jsonTest);
    tcpClient.write("hello, I am tcp Client");
}

AutoParking::~AutoParking() {
     LOG_INFO << "loop end";
}
