// Generated by gencpp from file ethereum_common/AccountBalance.msg
// DO NOT EDIT!


#ifndef ETHEREUM_COMMON_MESSAGE_ACCOUNTBALANCE_H
#define ETHEREUM_COMMON_MESSAGE_ACCOUNTBALANCE_H

#include <ros/service_traits.h>


#include <ethereum_common/AccountBalanceRequest.h>
#include <ethereum_common/AccountBalanceResponse.h>


namespace ethereum_common
{

struct AccountBalance
{

typedef AccountBalanceRequest Request;
typedef AccountBalanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AccountBalance
} // namespace ethereum_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ethereum_common::AccountBalance > {
  static const char* value()
  {
    return "0f8190e3a314b4f0b718e5fba37da225";
  }

  static const char* value(const ::ethereum_common::AccountBalance&) { return value(); }
};

template<>
struct DataType< ::ethereum_common::AccountBalance > {
  static const char* value()
  {
    return "ethereum_common/AccountBalance";
  }

  static const char* value(const ::ethereum_common::AccountBalance&) { return value(); }
};


// service_traits::MD5Sum< ::ethereum_common::AccountBalanceRequest> should match 
// service_traits::MD5Sum< ::ethereum_common::AccountBalance > 
template<>
struct MD5Sum< ::ethereum_common::AccountBalanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ethereum_common::AccountBalance >::value();
  }
  static const char* value(const ::ethereum_common::AccountBalanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ethereum_common::AccountBalanceRequest> should match 
// service_traits::DataType< ::ethereum_common::AccountBalance > 
template<>
struct DataType< ::ethereum_common::AccountBalanceRequest>
{
  static const char* value()
  {
    return DataType< ::ethereum_common::AccountBalance >::value();
  }
  static const char* value(const ::ethereum_common::AccountBalanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ethereum_common::AccountBalanceResponse> should match 
// service_traits::MD5Sum< ::ethereum_common::AccountBalance > 
template<>
struct MD5Sum< ::ethereum_common::AccountBalanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ethereum_common::AccountBalance >::value();
  }
  static const char* value(const ::ethereum_common::AccountBalanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ethereum_common::AccountBalanceResponse> should match 
// service_traits::DataType< ::ethereum_common::AccountBalance > 
template<>
struct DataType< ::ethereum_common::AccountBalanceResponse>
{
  static const char* value()
  {
    return DataType< ::ethereum_common::AccountBalance >::value();
  }
  static const char* value(const ::ethereum_common::AccountBalanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ETHEREUM_COMMON_MESSAGE_ACCOUNTBALANCE_H