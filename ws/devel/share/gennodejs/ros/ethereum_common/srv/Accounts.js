// Auto-generated. Do not edit!

// (in-package ethereum_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Address = require('../msg/Address.js');

//-----------------------------------------------------------

class AccountsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccountsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccountsRequest
    let len;
    let data = new AccountsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/AccountsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccountsRequest(null);
    return resolved;
    }
};

class AccountsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accounts = null;
    }
    else {
      if (initObj.hasOwnProperty('accounts')) {
        this.accounts = initObj.accounts
      }
      else {
        this.accounts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccountsResponse
    // Serialize message field [accounts]
    // Serialize the length for message field [accounts]
    bufferOffset = _serializer.uint32(obj.accounts.length, buffer, bufferOffset);
    obj.accounts.forEach((val) => {
      bufferOffset = Address.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccountsResponse
    let len;
    let data = new AccountsResponse(null);
    // Deserialize message field [accounts]
    // Deserialize array length for message field [accounts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.accounts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.accounts[i] = Address.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.accounts.forEach((val) => {
      length += Address.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/AccountsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '031c4bb89ac5ec75fbacab5f05cfa129';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Address[] accounts
    
    
    ================================================================================
    MSG: ethereum_common/Address
    # Ethereum address message
    string address
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccountsResponse(null);
    if (msg.accounts !== undefined) {
      resolved.accounts = new Array(msg.accounts.length);
      for (let i = 0; i < resolved.accounts.length; ++i) {
        resolved.accounts[i] = Address.Resolve(msg.accounts[i]);
      }
    }
    else {
      resolved.accounts = []
    }

    return resolved;
    }
};

module.exports = {
  Request: AccountsRequest,
  Response: AccountsResponse,
  md5sum() { return '031c4bb89ac5ec75fbacab5f05cfa129'; },
  datatype() { return 'ethereum_common/Accounts'; }
};
