/* Auto-generated by genmsg_cpp for file /home/rmb-rj/git/ros-test/action_test/msg/MessageFeedback.msg */
#ifndef ACTION_TEST_MESSAGE_MESSAGEFEEDBACK_H
#define ACTION_TEST_MESSAGE_MESSAGEFEEDBACK_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace action_test
{
template <class ContainerAllocator>
struct MessageFeedback_ {
  typedef MessageFeedback_<ContainerAllocator> Type;

  MessageFeedback_()
  : percentageDone(0.0)
  {
  }

  MessageFeedback_(const ContainerAllocator& _alloc)
  : percentageDone(0.0)
  {
  }

  typedef float _percentageDone_type;
  float percentageDone;


  typedef boost::shared_ptr< ::action_test::MessageFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::action_test::MessageFeedback_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct MessageFeedback
typedef  ::action_test::MessageFeedback_<std::allocator<void> > MessageFeedback;

typedef boost::shared_ptr< ::action_test::MessageFeedback> MessageFeedbackPtr;
typedef boost::shared_ptr< ::action_test::MessageFeedback const> MessageFeedbackConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::action_test::MessageFeedback_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::action_test::MessageFeedback_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace action_test

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::action_test::MessageFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::action_test::MessageFeedback_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::action_test::MessageFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c53cad2b685a83c438629cd69eda4ba2";
  }

  static const char* value(const  ::action_test::MessageFeedback_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc53cad2b685a83c4ULL;
  static const uint64_t static_value2 = 0x38629cd69eda4ba2ULL;
};

template<class ContainerAllocator>
struct DataType< ::action_test::MessageFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "action_test/MessageFeedback";
  }

  static const char* value(const  ::action_test::MessageFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::action_test::MessageFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# feedback message\n\
# here you might define some intermediate feedback message that reports about the current status of computation -> useful if the handling of the request might take several seconds or longer\n\
float32 percentageDone	# this is just a number telling how far the action accomplished the task (in the program the computations are delayed to show the effect)\n\
\n\
\n\
";
  }

  static const char* value(const  ::action_test::MessageFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::action_test::MessageFeedback_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::action_test::MessageFeedback_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.percentageDone);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct MessageFeedback_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::action_test::MessageFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::action_test::MessageFeedback_<ContainerAllocator> & v) 
  {
    s << indent << "percentageDone: ";
    Printer<float>::stream(s, indent + "  ", v.percentageDone);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ACTION_TEST_MESSAGE_MESSAGEFEEDBACK_H

