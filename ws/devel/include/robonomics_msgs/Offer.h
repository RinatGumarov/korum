// Generated by gencpp from file robonomics_msgs/Offer.msg
// DO NOT EDIT!


#ifndef ROBONOMICS_MSGS_MESSAGE_OFFER_H
#define ROBONOMICS_MSGS_MESSAGE_OFFER_H


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
struct Offer_
{
  typedef Offer_<ContainerAllocator> Type;

  Offer_()
    : model()
    , objective()
    , token()
    , cost(0)
    , validator()
    , lighthouse()
    , lighthouseFee(0)
    , deadline(0)
    , nonce()
    , signature()  {
    }
  Offer_(const ContainerAllocator& _alloc)
    : model(_alloc)
    , objective(_alloc)
    , token(_alloc)
    , cost(0)
    , validator(_alloc)
    , lighthouse(_alloc)
    , lighthouseFee(0)
    , deadline(0)
    , nonce(_alloc)
    , signature(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _model_type;
  _model_type model;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _objective_type;
  _objective_type objective;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _token_type;
  _token_type token;

   typedef uint32_t _cost_type;
  _cost_type cost;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _validator_type;
  _validator_type validator;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lighthouse_type;
  _lighthouse_type lighthouse;

   typedef uint32_t _lighthouseFee_type;
  _lighthouseFee_type lighthouseFee;

   typedef uint32_t _deadline_type;
  _deadline_type deadline;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _nonce_type;
  _nonce_type nonce;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _signature_type;
  _signature_type signature;





  typedef boost::shared_ptr< ::robonomics_msgs::Offer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robonomics_msgs::Offer_<ContainerAllocator> const> ConstPtr;

}; // struct Offer_

typedef ::robonomics_msgs::Offer_<std::allocator<void> > Offer;

typedef boost::shared_ptr< ::robonomics_msgs::Offer > OfferPtr;
typedef boost::shared_ptr< ::robonomics_msgs::Offer const> OfferConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robonomics_msgs::Offer_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robonomics_msgs::Offer_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::robonomics_msgs::Offer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robonomics_msgs::Offer_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robonomics_msgs::Offer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robonomics_msgs::Offer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robonomics_msgs::Offer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robonomics_msgs::Offer_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robonomics_msgs::Offer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cca2086bb0402e8053192ad7c1e153dc";
  }

  static const char* value(const ::robonomics_msgs::Offer_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcca2086bb0402e80ULL;
  static const uint64_t static_value2 = 0x53192ad7c1e153dcULL;
};

template<class ContainerAllocator>
struct DataType< ::robonomics_msgs::Offer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robonomics_msgs/Offer";
  }

  static const char* value(const ::robonomics_msgs::Offer_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robonomics_msgs::Offer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Behaviour model\n\
string model        # Base58 \n\
# Task\n\
string objective     # Base58\n\
# Operational token\n\
string token        # address\n\
# Execution cost\n\
uint32 cost         # int\n\
# Validator network address\n\
string validator     # address\n\
# lighthouse network address\n\
string lighthouse    #address\n\
# Settlement fee\n\
uint32 lighthouseFee # int \n\
# Deadline block number\n\
uint32 deadline\n\
# Order nonce value \n\
uint8[] nonce       # hex\n\
# Order signature\n\
uint8[] signature   # hex\n\
";
  }

  static const char* value(const ::robonomics_msgs::Offer_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robonomics_msgs::Offer_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.model);
      stream.next(m.objective);
      stream.next(m.token);
      stream.next(m.cost);
      stream.next(m.validator);
      stream.next(m.lighthouse);
      stream.next(m.lighthouseFee);
      stream.next(m.deadline);
      stream.next(m.nonce);
      stream.next(m.signature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Offer_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robonomics_msgs::Offer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robonomics_msgs::Offer_<ContainerAllocator>& v)
  {
    s << indent << "model: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.model);
    s << indent << "objective: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.objective);
    s << indent << "token: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.token);
    s << indent << "cost: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.cost);
    s << indent << "validator: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.validator);
    s << indent << "lighthouse: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lighthouse);
    s << indent << "lighthouseFee: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.lighthouseFee);
    s << indent << "deadline: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.deadline);
    s << indent << "nonce[]" << std::endl;
    for (size_t i = 0; i < v.nonce.size(); ++i)
    {
      s << indent << "  nonce[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.nonce[i]);
    }
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

#endif // ROBONOMICS_MSGS_MESSAGE_OFFER_H
