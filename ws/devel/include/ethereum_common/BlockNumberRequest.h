// Generated by gencpp from file ethereum_common/BlockNumberRequest.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_BLOCKNUMBERREQUEST_H
#define ETHEREUM_COMMON_MESSAGE_BLOCKNUMBERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ethereum_common
{
template <class ContainerAllocator>
struct BlockNumberRequest_
{
  typedef BlockNumberRequest_<ContainerAllocator> Type;

  BlockNumberRequest_()
    {
    }
  BlockNumberRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BlockNumberRequest_

typedef ::ethereum_common::BlockNumberRequest_<std::allocator<void> > BlockNumberRequest;

typedef boost::shared_ptr< ::ethereum_common::BlockNumberRequest > BlockNumberRequestPtr;
typedef boost::shared_ptr< ::ethereum_common::BlockNumberRequest const> BlockNumberRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ethereum_common::BlockNumberRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ethereum_common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'ethereum_common': ['/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ethereum_common::BlockNumberRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ethereum_common/BlockNumberRequest";
  }

  static const char* value(const ::ethereum_common::BlockNumberRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::ethereum_common::BlockNumberRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BlockNumberRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ethereum_common::BlockNumberRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ethereum_common::BlockNumberRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_BLOCKNUMBERREQUEST_H