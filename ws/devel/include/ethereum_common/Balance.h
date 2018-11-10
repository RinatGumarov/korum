// Generated by gencpp from file ethereum_common/Balance.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_BALANCE_H
#define ETHEREUM_COMMON_MESSAGE_BALANCE_H

#include <ros/service_traits.h>


#include <ethereum_common/BalanceRequest.h>
#include <ethereum_common/BalanceResponse.h>


namespace ethereum_common
{

struct Balance
{

typedef BalanceRequest Request;
typedef BalanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Balance
} // namespace ethereum_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ethereum_common::Balance > {
  static const char* value()
  {
    return "91627563a1e35c16c10754661905461e";
  }

  static const char* value(const ::ethereum_common::Balance&) { return value(); }
};

template<>
struct DataType< ::ethereum_common::Balance > {
  static const char* value()
  {
    return "ethereum_common/Balance";
  }

  static const char* value(const ::ethereum_common::Balance&) { return value(); }
};


// service_traits::MD5Sum< ::ethereum_common::BalanceRequest> should match 
// service_traits::MD5Sum< ::ethereum_common::Balance > 
template<>
struct MD5Sum< ::ethereum_common::BalanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ethereum_common::Balance >::value();
  }
  static const char* value(const ::ethereum_common::BalanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ethereum_common::BalanceRequest> should match 
// service_traits::DataType< ::ethereum_common::Balance > 
template<>
struct DataType< ::ethereum_common::BalanceRequest>
{
  static const char* value()
  {
    return DataType< ::ethereum_common::Balance >::value();
  }
  static const char* value(const ::ethereum_common::BalanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ethereum_common::BalanceResponse> should match 
// service_traits::MD5Sum< ::ethereum_common::Balance > 
template<>
struct MD5Sum< ::ethereum_common::BalanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ethereum_common::Balance >::value();
  }
  static const char* value(const ::ethereum_common::BalanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ethereum_common::BalanceResponse> should match 
// service_traits::DataType< ::ethereum_common::Balance > 
template<>
struct DataType< ::ethereum_common::BalanceResponse>
{
  static const char* value()
  {
    return DataType< ::ethereum_common::Balance >::value();
  }
  static const char* value(const ::ethereum_common::BalanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_BALANCE_H
