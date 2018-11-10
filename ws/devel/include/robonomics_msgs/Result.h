// Generated by gencpp from file robonomics_msgs/Result.msg
// DO NOT EDIT!


#ifndef ROBONOMICS_MSGS_MESSAGE_RESULT_H
#define ROBONOMICS_MSGS_MESSAGE_RESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robonomics_msgs
{
template <class ContainerAllocator>
struct Result_
{
  typedef Result_<ContainerAllocator> Type;

  Result_()
    : liability()
    , result()
    , success(false)
    , signature()  {
    }
  Result_(const ContainerAllocator& _alloc)
    : liability(_alloc)
    , result(_alloc)
    , success(false)
    , signature(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _liability_type;
  _liability_type liability;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _result_type;
  _result_type result;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _signature_type;
  _signature_type signature;





  typedef boost::shared_ptr< ::robonomics_msgs::Result_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robonomics_msgs::Result_<ContainerAllocator> const> ConstPtr;

}; // struct Result_

typedef ::robonomics_msgs::Result_<std::allocator<void> > Result;

typedef boost::shared_ptr< ::robonomics_msgs::Result > ResultPtr;
typedef boost::shared_ptr< ::robonomics_msgs::Result const> ResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robonomics_msgs::Result_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robonomics_msgs::Result_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robonomics_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'robonomics_msgs': ['/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robonomics_msgs::Result_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robonomics_msgs::Result_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robonomics_msgs::Result_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robonomics_msgs::Result_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robonomics_msgs::Result_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robonomics_msgs::Result_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robonomics_msgs::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "779c689203741480a2063956e588f667";
  }

  static const char* value(const ::robonomics_msgs::Result_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x779c689203741480ULL;
  static const uint64_t static_value2 = 0xa2063956e588f667ULL;
};

template<class ContainerAllocator>
struct DataType< ::robonomics_msgs::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robonomics_msgs/Result";
  }

  static const char* value(const ::robonomics_msgs::Result_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robonomics_msgs::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Result liability\n\
string liability     # address\n\
# Result IPFS hash\n\
string result       # base58\n\
# Executed successfully flag\n\
bool success\n\
# Result signature\n\
uint8[] signature    # hex\n\
";
  }

  static const char* value(const ::robonomics_msgs::Result_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robonomics_msgs::Result_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.liability);
      stream.next(m.result);
      stream.next(m.success);
      stream.next(m.signature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Result_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robonomics_msgs::Result_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robonomics_msgs::Result_<ContainerAllocator>& v)
  {
    s << indent << "liability: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.liability);
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "signature[]" << std::endl;
    for (size_t i = 0; i < v.signature.size(); ++i)
    {
      s << indent << "  signature[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.signature[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBONOMICS_MSGS_MESSAGE_RESULT_H