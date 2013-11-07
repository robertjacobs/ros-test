#include "ros/ros.h"
#include <std_msgs/Int32.h>

class ExampleSubscriber
{
public:
	ExampleSubscriber(ros::NodeHandle nh);
	void init();
	void receiveCallback(const std_msgs::Int32::ConstPtr& msg);

protected:

	ros::NodeHandle node_;
	ros::Subscriber string_subscriber_;
};
