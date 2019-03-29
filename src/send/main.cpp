#include <lcm/lcm-cpp.hpp>
#include <autoParking/obstacle.hpp>
#include <autoParking/obstacles.hpp>
#include <iostream>
#include <stdio.h>
#include <unistd.h>
using namespace std;
int main(int argc, char ** argv)
{

     lcm::LCM lcm;

     if(!lcm.good())
         return 1;
    protocol::obstacle my_data;
    while(1){
        sleep(1);
        cout<<"hi"<<endl;
             my_data.x=0;

             my_data.y = 1;
             my_data.vx=2;
             my_data.vy=3;
             my_data.type=4;
             my_data.id=123;
            // my_data.S[0][0]=1;
             for(int i=0;i<4;++i){
                 for(int j=0;j<4;++j){
                     my_data.S[i][j]=i+j;
                 }
             }
             //my_data.enabled = true;

            lcm.publish("OBSTACLE", &my_data);
    }
     /* Your application goes here */

     return 0;
}
