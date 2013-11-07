/*
 * example_motor_controller.h
 *
 *  Created on: Nov 5, 2013
 *      Author: rmb-rj
 */

#ifndef EXAMPLE_MOTOR_CONTROLLER_H_
#define EXAMPLE_MOTOR_CONTROLLER_H_

#include "ros/ros.h"
#include <std_msgs/Int32.h>

class MotorController
{
public:
	MotorController(ros::NodeHandle nh);
	void init();
	void receiveCallback(const std_msgs::Int32::ConstPtr& msg);

protected:

	ros::NodeHandle node_;
	ros::Subscriber string_subscriber_;
};


#endif /* EXAMPLE_MOTOR_CONTROLLER_H_ */
