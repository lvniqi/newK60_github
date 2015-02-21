
#include "speed_control.h"


float SPEED_P=100;
float SPEED_I=0.1;
float SPEED_D=0;
speed_sequeue SPEED_LIST;

/*现有速度*/
int SPEED_CURR = 0;
u8 SPEED_GET_FLAG = 0;


float speed_mid_PID(float set_speed,double kp,double ki,double kd)
{
    float speed_PWM_temp;
    speeddata now,last,pre_last;
    now.speed_error  = set_speed - SPEED_CURR;
    
    last = Sequeue_Get_One(&SPEED_LIST,SPEED_LIST.len-1);
    pre_last = Sequeue_Get_One(&SPEED_LIST,SPEED_LIST.len-2);
    
    Sequeue_Out_Queue(&SPEED_LIST);
    
    speed_PWM_temp = ki*now.speed_error+
                     kp*(now.speed_error-last.speed_error)+
                     kd*(now.speed_error+pre_last.speed_error-2*last.speed_error)+
                     last.speed_set;   //数字式PID  
    now.speed_set = speed_PWM_temp;
    Sequeue_In_Queue(&SPEED_LIST,now);
    if (now.speed_set >9999)
    {
        now.speed_set = 9999;
    }
    elif(now.speed_set<0)
    {
        now.speed_set = 0;
    }
    return now.speed_set;
    
}


void Speed_Sequeue_Init(void)
{
    speeddata new_1;
    u8 i;
    new_1.speed_error = 0;
    new_1.speed_set = 0;
    Sequeue_Set_Null(&SPEED_LIST,SPEED_LEN);
    for(i=0;i<SPEED_LEN-1;i++)
    {
        Sequeue_In_Queue(&SPEED_LIST,new_1);
    }
}