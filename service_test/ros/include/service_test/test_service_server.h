#include "ros/ros.h"

// services - here you have to include the header file with exactly the same name as your message in the /srv folder (the Message.h is automatically generated from your Message.srv file during compilation)
#include <service_test/Message.h>

class ServiceTestServer
{
public:
	ServiceTestServer(ros::NodeHandle nh);
	void init();
	bool increase_by_one(service_test::Message::Request &req, service_test::Message::Response &res);

protected:
	ros::NodeHandle node_;
	ros::ServiceServer service_server_add_one_; ///< Service server which accepts requests for adddind one to a number
};
