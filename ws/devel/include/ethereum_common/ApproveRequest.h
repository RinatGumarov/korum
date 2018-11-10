// Generated by gencpp from file ethereum_common/ApproveRequest.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_APPROVEREQUEST_H
#define ETHEREUM_COMMON_MESSAGE_APPROVEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ethereum_common/Address.h>
#include <ethereum_common/UInt256.h>

namespace ethereum_common
{
template <class ContainerAllocator>
struct ApproveRequest_
{
  typedef ApproveRequest_<ContainerAllocator> Type;

  ApproveRequest_()
    : spender()
    , value()  {
    }
  ApproveRequest_(const ContainerAllocator& _alloc)
    : spender(_alloc)
    , value(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ethereum_common::Address_<ContainerAllocator>  _spender_type;
  _spender_type spender;

   typedef  ::ethereum_common::UInt256_<ContainerAllocator>  _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::ethereum_common::ApproveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ethereum_common::ApproveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ApproveRequest_

typedef ::ethereum_common::ApproveRequest_<std::allocator<void> > ApproveRequest;

typedef boost::shared_ptr< ::ethereum_common::ApproveRequest > ApproveRequestPtr;
typedef boost::shared_ptr< ::ethereum_common::ApproveRequest const> ApproveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ethereum_common::ApproveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ethereum_common::ApproveRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::ApproveRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::ApproveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::ApproveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43fbab3b8c2be7816153c82482d1c5d5";
  }

  static const char* value(const ::ethereum_common::ApproveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43fbab3b8c2be781ULL;
  static const uint64_t static_value2 = 0x6153c82482d1c5d5ULL;
};

template<class ContainerAllocator>
struct DataType< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ethereum_common/ApproveRequest";
  }

  static const char* value(const ::ethereum_common::ApproveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Address spender\n\
UInt256 value\n\
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

  static const char* value(const ::ethereum_common::ApproveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.spender);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ApproveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ethereum_common::ApproveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ethereum_common::ApproveRequest_<ContainerAllocator>& v)
  {
    s << indent << "spender: ";
    s << std::endl;
    Printer< ::ethereum_common::Address_<ContainerAllocator> >::stream(s, indent + "  ", v.spender);
    s << indent << "value: ";
    s << std::endl;
    Printer< ::ethereum_common::UInt256_<ContainerAllocator> >::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_APPROVEREQUEST_H