// Generated by gencpp from file ethereum_common/AccountBalanceRequest.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_ACCOUNTBALANCEREQUEST_H
#define ETHEREUM_COMMON_MESSAGE_ACCOUNTBALANCEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ethereum_common/Address.h>

namespace ethereum_common
{
template <class ContainerAllocator>
struct AccountBalanceRequest_
{
  typedef AccountBalanceRequest_<ContainerAllocator> Type;

  AccountBalanceRequest_()
    : account()  {
    }
  AccountBalanceRequest_(const ContainerAllocator& _alloc)
    : account(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ethereum_common::Address_<ContainerAllocator>  _account_type;
  _account_type account;





  typedef boost::shared_ptr< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AccountBalanceRequest_

typedef ::ethereum_common::AccountBalanceRequest_<std::allocator<void> > AccountBalanceRequest;

typedef boost::shared_ptr< ::ethereum_common::AccountBalanceRequest > AccountBalanceRequestPtr;
typedef boost::shared_ptr< ::ethereum_common::AccountBalanceRequest const> AccountBalanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ethereum_common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'ethereum_common': ['/home/parallels/energyhack_2018/ws/src/robonomics_comm/ethereum_common/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bf6a684b41968482367a5aa9fef0d477";
  }

  static const char* value(const ::ethereum_common::AccountBalanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbf6a684b41968482ULL;
  static const uint64_t static_value2 = 0x367a5aa9fef0d477ULL;
};

template<class ContainerAllocator>
struct DataType< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ethereum_common/AccountBalanceRequest";
  }

  static const char* value(const ::ethereum_common::AccountBalanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Address account\n\
\n\
================================================================================\n\
MSG: ethereum_common/Address\n\
# Ethereum address message\n\
string address\n\
";
  }

  static const char* value(const ::ethereum_common::AccountBalanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.account);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AccountBalanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ethereum_common::AccountBalanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ethereum_common::AccountBalanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "account: ";
    s << std::endl;
    Printer< ::ethereum_common::Address_<ContainerAllocator> >::stream(s, indent + "  ", v.account);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_ACCOUNTBALANCEREQUEST_H
