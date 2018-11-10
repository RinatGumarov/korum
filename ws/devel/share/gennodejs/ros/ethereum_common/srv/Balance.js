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

let UInt256 = require('../msg/UInt256.js');

//-----------------------------------------------------------

class BalanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BalanceRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BalanceRequest
    let len;
    let data = new BalanceRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/BalanceRequest';
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
    const resolved = new BalanceRequest(null);
    return resolved;
    }
};

class BalanceResponse {
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
    // Serializes a message object of type BalanceResponse
    // Serialize message field [balance]
    bufferOffset = UInt256.serialize(obj.balance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BalanceResponse
    let len;
    let data = new BalanceResponse(null);
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
    return 'ethereum_common/BalanceResponse';
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
    const resolved = new BalanceResponse(null);
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
  Request: BalanceRequest,
  Response: BalanceResponse,
  md5sum() { return '91627563a1e35c16c10754661905461e'; },
  datatype() { return 'ethereum_common/Balance'; }
};
