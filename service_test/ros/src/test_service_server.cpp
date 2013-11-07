#include "service_test/test_service_server.h"

ServiceTestServer::ServiceTestServer(ros::NodeHandle nh)
{
	node_ = nh;
}


void ServiceTestServer::init()
{
	/**
	* The advertiseService() function is how you tell ROS that you want to provide a service for other modules (software nodes).
	*/

	service_server_add_one_ = node_.advertiseService("increase_by_one", &ServiceTestServer::increase_by_one, this);
}


bool ServiceTestServer::increase_by_one(
service_test::Message::Request &req, service_test::Message::Response &res)
{
	// this callback function is executed each time a request comes in for this service server
	// here we just read the number from the request, square it and put the result into the response, the response is automatically sent back to the caller when this function returns

	ROS_INFO("Service Server: Received a request with number %f.", req.number);

	double num = req.number;
	double num2 = num+1;
	res.numberIncreased = num2;

	return true;
}
