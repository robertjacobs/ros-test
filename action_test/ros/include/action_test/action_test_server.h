#include "ros/ros.h"

// actions
#include <actionlib/server/simple_action_server.h>
#include <action_test/MessageAction.h> // here you have to include the header file with exactly the same name as your message in the /action folder (the Message.h is automatically generated from your Message.action file during compilation)

// this typedef just establishes the abbreviation SquareActionServer for the long data type
typedef actionlib::SimpleActionServer<action_test::MessageAction> t_WashActionServer;

class WashActionServer
{
public:
	WashActionServer(ros::NodeHandle nh);
	void init();
	void wash(const action_test::MessageGoalConstPtr& goal);

protected:
	ros::NodeHandle node_;
	t_WashActionServer action_server_wash_; ///< Action server which accepts requests for washing
};
