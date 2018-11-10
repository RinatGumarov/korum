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

class AccountToAddressAllowanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.account = null;
      this.to = null;
    }
    else {
      if (initObj.hasOwnProperty('account')) {
        this.account = initObj.account
      }
      else {
        this.account = new Address();
      }
      if (initObj.hasOwnProperty('to')) {
        this.to = initObj.to
      }
      else {
        this.to = new Address();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccountToAddressAllowanceRequest
    // Serialize message field [account]
    bufferOffset = Address.serialize(obj.account, buffer, bufferOffset);
    // Serialize message field [to]
    bufferOffset = Address.serialize(obj.to, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccountToAddressAllowanceRequest
    let len;
    let data = new AccountToAddressAllowanceRequest(null);
    // Deserialize message field [account]
    data.account = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [to]
    data.to = Address.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Address.getMessageSize(object.account);
    length += Address.getMessageSize(object.to);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/AccountToAddressAllowanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d636755e8c0af9486937ef32e5c3d7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Address account
    Address to
    
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
    const resolved = new AccountToAddressAllowanceRequest(null);
    if (msg.account !== undefined) {
      resolved.account = Address.Resolve(msg.account)
    }
    else {
      resolved.account = new Address()
    }

    if (msg.to !== undefined) {
      resolved.to = Address.Resolve(msg.to)
    }
    else {
      resolved.to = new Address()
    }

    return resolved;
    }
};

class AccountToAddressAllowanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.amount = null;
    }
    else {
      if (initObj.hasOwnProperty('amount')) {
        this.amount = initObj.amount
      }
      else {
        this.amount = new UInt256();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccountToAddressAllowanceResponse
    // Serialize message field [amount]
    bufferOffset = UInt256.serialize(obj.amount, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccountToAddressAllowanceResponse
    let len;
    let data = new AccountToAddressAllowanceResponse(null);
    // Deserialize message field [amount]
    data.amount = UInt256.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UInt256.getMessageSize(object.amount);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/AccountToAddressAllowanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2d262a3aeb417f4eb11856b3be5f1c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UInt256 amount
    
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
    const resolved = new AccountToAddressAllowanceResponse(null);
    if (msg.amount !== undefined) {
      resolved.amount = UInt256.Resolve(msg.amount)
    }
    else {
      resolved.amount = new UInt256()
    }

    return resolved;
    }
};

module.exports = {
  Request: AccountToAddressAllowanceRequest,
  Response: AccountToAddressAllowanceResponse,
  md5sum() { return 'bb0229e808c1117ea0065740cd6cdb83'; },
  datatype() { return 'ethereum_common/AccountToAddressAllowance'; }
};
