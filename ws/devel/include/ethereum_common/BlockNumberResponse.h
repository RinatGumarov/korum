// Generated by gencpp from file ethereum_common/BlockNumberResponse.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_BLOCKNUMBERRESPONSE_H
#define ETHEREUM_COMMON_MESSAGE_BLOCKNUMBERRESPONSE_H


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
struct BlockNumberResponse_
{
  typedef BlockNumberResponse_<ContainerAllocator> Type;

  BlockNumberResponse_()
    : number(0)  {
    }
  BlockNumberResponse_(const ContainerAllocator& _alloc)
    : number(0)  {
  (void)_alloc;
    }



   typedef uint64_t _number_type;
  _number_type number;





  typedef boost::shared_ptr< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> const> ConstPtr;

}; // struct BlockNumberResponse_

typedef ::ethereum_common::BlockNumberResponse_<std::allocator<void> > BlockNumberResponse;

typedef boost::shared_ptr< ::ethereum_common::BlockNumberResponse > BlockNumberResponsePtr;
typedef boost::shared_ptr< ::ethereum_common::BlockNumberResponse const> BlockNumberResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ethereum_common::BlockNumberResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9ea9c5dc974a67358629419455d31fec";
  }

  static const char* value(const ::ethereum_common::BlockNumberResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9ea9c5dc974a6735ULL;
  static const uint64_t static_value2 = 0x8629419455d31fecULL;
};

template<class ContainerAllocator>
struct DataType< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ethereum_common/BlockNumberResponse";
  }

  static const char* value(const ::ethereum_common::BlockNumberResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 number\n\
";
  }

  static const char* value(const ::ethereum_common::BlockNumberResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.number);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BlockNumberResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ethereum_common::BlockNumberResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ethereum_common::BlockNumberResponse_<ContainerAllocator>& v)
  {
    s << indent << "number: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.number);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_BLOCKNUMBERRESPONSE_H
