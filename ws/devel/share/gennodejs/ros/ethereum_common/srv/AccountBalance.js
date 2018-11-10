// Auto-generated. Do not edit!

// (in-package ethereum_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Address = require('../msg/Address.js');

//-----------------------------------------------------------

let UInt256 = require('../msg/UInt256.js');

//-----------------------------------------------------------

class AccountBalanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.account = null;
    }
    else {
      if (initObj.hasOwnProperty('account')) {
        this.account = initObj.account
      }
      else {
        this.account = new Address();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccountBalanceRequest
    // Serialize message field [account]
    bufferOffset = Address.serialize(obj.account, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccountBalanceRequest
    let len;
    let data = new AccountBalanceRequest(null);
    // Deserialize message field [account]
    data.account = Address.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Address.getMessageSize(object.account);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/AccountBalanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf6a684b41968482367a5aa9fef0d477';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Address account
    
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
    const resolved = new AccountBalanceRequest(null);
    if (msg.account !== undefined) {
      resolved.account = Address.Resolve(msg.account)
    }
    else {
      resolved.account = new Address()
    }

    return resolved;
    }
};

class AccountBalanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.balance = null;
    }
    else {
      if (initObj.hasOwnProperty('balance')) {
        this.balance = initObj.balance
      }
      else {
        this.balance = new UInt256();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccountBalanceResponse
    // Serialize message field [balance]
    bufferOffset = UInt256.serialize(obj.balance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccountBalanceResponse
    let len;
    let data = new AccountBalanceResponse(null);
    // Deserialize message field [balance]
    data.balance = UInt256.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UInt256.getMessageSize(object.balance);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/AccountBalanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91627563a1e35c16c10754661905461e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UInt256 balance
    
    ================================================================================
    MSG: ethereum_common/UInt256
    # 256bit unisgned integer
    string uint256
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccountBalanceResponse(null);
    if (msg.balance !== undefined) {
      resolved.balance = UInt256.Resolve(msg.balance)
    }
    else {
      resolved.balance = new UInt256()
    }

    return resolved;
    }
};

module.exports = {
  Request: AccountBalanceRequest,
  Response: AccountBalanceResponse,
  md5sum() { return '0f8190e3a314b4f0b718e5fba37da225'; },
  datatype() { return 'ethereum_common/AccountBalance'; }
};
