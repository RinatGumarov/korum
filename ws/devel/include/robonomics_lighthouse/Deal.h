// Generated by gencpp from file robonomics_lighthouse/Deal.msg
// DO NOT EDIT!


#ifndef ROBONOMICS_LIGHTHOUSE_MESSAGE_DEAL_H
#define ROBONOMICS_LIGHTHOUSE_MESSAGE_DEAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robonomics_msgs/Demand.h>
#include <robonomics_msgs/Offer.h>

namespace robonomics_lighthouse
{
template <class ContainerAllocator>
struct Deal_
{
  typedef Deal_<ContainerAllocator> Type;

  Deal_()
    : demand()
    , offer()  {
    }
  Deal_(const ContainerAllocator& _alloc)
    : demand(_alloc)
    , offer(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robonomics_msgs::Demand_<ContainerAllocator>  _demand_type;
  _demand_type demand;

   typedef  ::robonomics_msgs::Offer_<ContainerAllocator>  _offer_type;
  _offer_type offer;





  typedef boost::shared_ptr< ::robonomics_lighthouse::Deal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robonomics_lighthouse::Deal_<ContainerAllocator> const> ConstPtr;

}; // struct Deal_

typedef ::robonomics_lighthouse::Deal_<std::allocator<void> > Deal;

typedef boost::shared_ptr< ::robonomics_lighthouse::Deal > DealPtr;
typedef boost::shared_ptr< ::robonomics_lighthouse::Deal const> DealConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robonomics_lighthouse::Deal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robonomics_lighthouse::Deal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robonomics_lighthouse

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'robonomics_lighthouse': ['/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_lighthouse/msg'], 'robonomics_msgs': ['/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robonomics_lighthouse::Deal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robonomics_lighthouse::Deal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robonomics_lighthouse::Deal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4b47773dbfb8dcc972a397366b3f647c";
  }

  static const char* value(const ::robonomics_lighthouse::Deal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4b47773dbfb8dcc9ULL;
  static const uint64_t static_value2 = 0x72a397366b3f647cULL;
};

template<class ContainerAllocator>
struct DataType< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robonomics_lighthouse/Deal";
  }

  static const char* value(const ::robonomics_lighthouse::Deal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robonomics_msgs/Demand demand \n\
robonomics_msgs/Offer  offer \n\
\n\
================================================================================\n\
MSG: robonomics_msgs/Demand\n\
# Behaviour model\n\
string model         # Base58 \n\
# Task\n\
string objective     # Base58\n\
# Operational token\n\
string token         # address\n\
# Execution cost\n\
uint32 cost          # int\n\
# lighthouse network address\n\
string lighthouse    #address\n\
# Validator network address\n\
string validator     # address\n\
# Validator network fee\n\
uint32 validatorFee  # int \n\
# Deadline block number\n\
uint32 deadline      # int\n\
# Order nonce value\n\
uint8[] nonce        # hex \n\
# Order signature\n\
uint8[] signature    # hex\n\
\n\
================================================================================\n\
MSG: robonomics_msgs/Offer\n\
# Behaviour model\n\
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

  static const char* value(const ::robonomics_lighthouse::Deal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.demand);
      stream.next(m.offer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Deal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robonomics_lighthouse::Deal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robonomics_lighthouse::Deal_<ContainerAllocator>& v)
  {
    s << indent << "demand: ";
    s << std::endl;
    Printer< ::robonomics_msgs::Demand_<ContainerAllocator> >::stream(s, indent + "  ", v.demand);
    s << indent << "offer: ";
    s << std::endl;
    Printer< ::robonomics_msgs::Offer_<ContainerAllocator> >::stream(s, indent + "  ", v.offer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBONOMICS_LIGHTHOUSE_MESSAGE_DEAL_H
