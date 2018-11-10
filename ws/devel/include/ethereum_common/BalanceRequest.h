// Generated by gencpp from file ethereum_common/BalanceRequest.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_BALANCEREQUEST_H
#define ETHEREUM_COMMON_MESSAGE_BALANCEREQUEST_H


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
struct BalanceRequest_
{
  typedef BalanceRequest_<ContainerAllocator> Type;

  BalanceRequest_()
    {
    }
  BalanceRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ethereum_common::BalanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ethereum_common::BalanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BalanceRequest_

typedef ::ethereum_common::BalanceRequest_<std::allocator<void> > BalanceRequest;

typedef boost::shared_ptr< ::ethereum_common::BalanceRequest > BalanceRequestPtr;
typedef boost::shared_ptr< ::ethereum_common::BalanceRequest const> BalanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ethereum_common::BalanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ethereum_common::BalanceRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::BalanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::BalanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::BalanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ethereum_common::BalanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ethereum_common/BalanceRequest";
  }

  static const char* value(const ::ethereum_common::BalanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::ethereum_common::BalanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BalanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ethereum_common::BalanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ethereum_common::BalanceRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_BALANCEREQUEST_H