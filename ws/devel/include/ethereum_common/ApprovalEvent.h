// Generated by gencpp from file ethereum_common/ApprovalEvent.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_APPROVALEVENT_H
#define ETHEREUM_COMMON_MESSAGE_APPROVALEVENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ethereum_common/Address.h>
#include <ethereum_common/Address.h>
#include <ethereum_common/UInt256.h>

namespace ethereum_common
{
template <class ContainerAllocator>
struct ApprovalEvent_
{
  typedef ApprovalEvent_<ContainerAllocator> Type;

  ApprovalEvent_()
    : args_owner()
    , args_spender()
    , args_value()  {
    }
  ApprovalEvent_(const ContainerAllocator& _alloc)
    : args_owner(_alloc)
    , args_spender(_alloc)
    , args_value(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ethereum_common::Address_<ContainerAllocator>  _args_owner_type;
  _args_owner_type args_owner;

   typedef  ::ethereum_common::Address_<ContainerAllocator>  _args_spender_type;
  _args_spender_type args_spender;

   typedef  ::ethereum_common::UInt256_<ContainerAllocator>  _args_value_type;
  _args_value_type args_value;





  typedef boost::shared_ptr< ::ethereum_common::ApprovalEvent_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ethereum_common::ApprovalEvent_<ContainerAllocator> const> ConstPtr;

}; // struct ApprovalEvent_

typedef ::ethereum_common::ApprovalEvent_<std::allocator<void> > ApprovalEvent;

typedef boost::shared_ptr< ::ethereum_common::ApprovalEvent > ApprovalEventPtr;
typedef boost::shared_ptr< ::ethereum_common::ApprovalEvent const> ApprovalEventConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ethereum_common::ApprovalEvent_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::ApprovalEvent_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::ApprovalEvent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::ApprovalEvent_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1aefc216de0e824eacf1263c8aeb4df";
  }

  static const char* value(const ::ethereum_common::ApprovalEvent_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf1aefc216de0e824ULL;
  static const uint64_t static_value2 = 0xeacf1263c8aeb4dfULL;
};

template<class ContainerAllocator>
struct DataType< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ethereum_common/ApprovalEvent";
  }

  static const char* value(const ::ethereum_common::ApprovalEvent_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Address args_owner \n\
Address args_spender\n\
UInt256 args_value\n\
\n\
================================================================================\n\
MSG: ethereum_common/Address\n\
# Ethereum address message\n\
string address\n\
\n\
================================================================================\n\
MSG: ethereum_common/UInt256\n\
# 256bit unisgned integer\n\
string uint256\n\
";
  }

  static const char* value(const ::ethereum_common::ApprovalEvent_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.args_owner);
      stream.next(m.args_spender);
      stream.next(m.args_value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ApprovalEvent_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ethereum_common::ApprovalEvent_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ethereum_common::ApprovalEvent_<ContainerAllocator>& v)
  {
    s << indent << "args_owner: ";
    s << std::endl;
    Printer< ::ethereum_common::Address_<ContainerAllocator> >::stream(s, indent + "  ", v.args_owner);
    s << indent << "args_spender: ";
    s << std::endl;
    Printer< ::ethereum_common::Address_<ContainerAllocator> >::stream(s, indent + "  ", v.args_spender);
    s << indent << "args_value: ";
    s << std::endl;
    Printer< ::ethereum_common::UInt256_<ContainerAllocator> >::stream(s, indent + "  ", v.args_value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_APPROVALEVENT_H
