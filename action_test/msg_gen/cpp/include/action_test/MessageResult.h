/* Auto-generated by genmsg_cpp for file /home/rmb-rj/git/ros-test/action_test/msg/MessageResult.msg */
#ifndef ACTION_TEST_MESSAGE_MESSAGERESULT_H
#define ACTION_TEST_MESSAGE_MESSAGERESULT_H
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
struct MessageResult_ {
  typedef MessageResult_<ContainerAllocator> Type;

  MessageResult_()
  : itemsWashed(0.0)
  {
  }

  MessageResult_(const ContainerAllocator& _alloc)
  : itemsWashed(0.0)
  {
  }

  typedef double _itemsWashed_type;
  double itemsWashed;


  typedef boost::shared_ptr< ::action_test::MessageResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::action_test::MessageResult_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct MessageResult
typedef  ::action_test::MessageResult_<std::allocator<void> > MessageResult;

typedef boost::shared_ptr< ::action_test::MessageResult> MessageResultPtr;
typedef boost::shared_ptr< ::action_test::MessageResult const> MessageResultConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::action_test::MessageResult_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::action_test::MessageResult_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace action_test

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::action_test::MessageResult_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::action_test::MessageResult_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::action_test::MessageResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "0f91501cf64010ab35adfe3f2eaf4bc5";
  }

  static const char* value(const  ::action_test::MessageResult_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x0f91501cf64010abULL;
  static const uint64_t static_value2 = 0x35adfe3f2eaf4bc5ULL;
};

template<class ContainerAllocator>
struct DataType< ::action_test::MessageResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "action_test/MessageResult";
  }

  static const char* value(const  ::action_test::MessageResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::action_test::MessageResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# result message\n\
float64 itemsWashed	# the number of items washed\n\
\n\
";
  }

  static const char* value(const  ::action_test::MessageResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::action_test::MessageResult_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::action_test::MessageResult_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.itemsWashed);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct MessageResult_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::action_test::MessageResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::action_test::MessageResult_<ContainerAllocator> & v) 
  {
    s << indent << "itemsWashed: ";
    Printer<double>::stream(s, indent + "  ", v.itemsWashed);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ACTION_TEST_MESSAGE_MESSAGERESULT_H

