// Generated by gencpp from file ethereum_common/TransferFromResponse.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_TRANSFERFROMRESPONSE_H
#define ETHEREUM_COMMON_MESSAGE_TRANSFERFROMRESPONSE_H


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
struct TransferFromResponse_
{
  typedef TransferFromResponse_<ContainerAllocator> Type;

  TransferFromResponse_()
    : txhash()  {
      txhash.assign(0);
  }
  TransferFromResponse_(const ContainerAllocator& _alloc)
    : txhash()  {
  (void)_alloc;
      txhash.assign(0);
  }



   typedef boost::array<uint8_t, 32>  _txhash_type;
  _txhash_type txhash;





  typedef boost::shared_ptr< ::ethereum_common::TransferFromResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ethereum_common::TransferFromResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TransferFromResponse_

typedef ::ethereum_common::TransferFromResponse_<std::allocator<void> > TransferFromResponse;

typedef boost::shared_ptr< ::ethereum_common::TransferFromResponse > TransferFromResponsePtr;
typedef boost::shared_ptr< ::ethereum_common::TransferFromResponse const> TransferFromResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ethereum_common::TransferFromResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ethereum_common::TransferFromResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ethereum_common::TransferFromResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ethereum_common::TransferFromResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f773e2ccdc8084a06c1a9a6f6f58e5d3";
  }

  static const char* value(const ::ethereum_common::TransferFromResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf773e2ccdc8084a0ULL;
  static const uint64_t static_value2 = 0x6c1a9a6f6f58e5d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ethereum_common/TransferFromResponse";
  }

  static const char* value(const ::ethereum_common::TransferFromResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[32] txhash\n\
\n\
";
  }

  static const char* value(const ::ethereum_common::TransferFromResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.txhash);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransferFromResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ethereum_common::TransferFromResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ethereum_common::TransferFromResponse_<ContainerAllocator>& v)
  {
    s << indent << "txhash[]" << std::endl;
    for (size_t i = 0; i < v.txhash.size(); ++i)
    {
      s << indent << "  txhash[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.txhash[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_TRANSFERFROMRESPONSE_H
