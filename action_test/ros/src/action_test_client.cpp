#include "action_test/action_test_client.h"

WashActionClient::WashActionClient(ros::NodeHandle nh)
: action_client_wash_("wash_action", true)  // true -> don't need ros::spin()
{
	node_ = nh;
}


bool WashActionClient::init()
{
	// here we wait until the service is available; please use the same service name as the one in the server; you may define a timeout if the service does not show up
	std::cout << "Waiting for action server to become available..." << std::endl;
	return action_client_wash_.waitForServer(ros::Duration(5.0));
}


void WashActionClient::run()
{
	// prepare the goal message
	action_test::MessageGoal goal;

	while(1)
	{
		double num;
		std::cout << "Enter the number of items you would like to wash (enter 0 to quit): \n";
		std::cin >> num;
		if (num == 0.0)
			return;
		goal.number = num;

		// this calls the action server to process our goal message and send result message which will cause the execution of the doneCb callback function
		// this call is not blocking, i.e. this program can proceed immediately after the action call
		action_client_wash_.sendGoal(goal, boost::bind(&WashActionClient::doneCb, this, _1, _2), boost::bind(&WashActionClient::activeCb, this), boost::bind(&WashActionClient::feedbackCb, this, _1));
	}
}

// Called once when the goal completes
void WashActionClient::doneCb(const actionlib::SimpleClientGoalState& state, const action_test::MessageResultConstPtr& result)
{
  ROS_INFO("Finished in state [%s]", state.toString().c_str());
  ROS_INFO("Result: %f", result->itemsWashed);
  std::cout << "Washing finished." << std::endl;
}

// Called once when the goal becomes active
void WashActionClient::activeCb()
{
  ROS_INFO("Goal just went active");
}

// Called every time feedback is received for the goal
void WashActionClient::feedbackCb(const action_test::MessageFeedbackConstPtr& feedback)
{
  ROS_INFO("Washing accomplished by %f percent.", feedback->percentageDone);
}
