// Auto-generated. Do not edit!

// (in-package ethereum_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Address = require('./Address.js');
let UInt256 = require('./UInt256.js');

//-----------------------------------------------------------

class ApprovalEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.args_owner = null;
      this.args_spender = null;
      this.args_value = null;
    }
    else {
      if (initObj.hasOwnProperty('args_owner')) {
        this.args_owner = initObj.args_owner
      }
      else {
        this.args_owner = new Address();
      }
      if (initObj.hasOwnProperty('args_spender')) {
        this.args_spender = initObj.args_spender
      }
      else {
        this.args_spender = new Address();
      }
      if (initObj.hasOwnProperty('args_value')) {
        this.args_value = initObj.args_value
      }
      else {
        this.args_value = new UInt256();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApprovalEvent
    // Serialize message field [args_owner]
    bufferOffset = Address.serialize(obj.args_owner, buffer, bufferOffset);
    // Serialize message field [args_spender]
    bufferOffset = Address.serialize(obj.args_spender, buffer, bufferOffset);
    // Serialize message field [args_value]
    bufferOffset = UInt256.serialize(obj.args_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApprovalEvent
    let len;
    let data = new ApprovalEvent(null);
    // Deserialize message field [args_owner]
    data.args_owner = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [args_spender]
    data.args_spender = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [args_value]
    data.args_value = UInt256.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Address.getMessageSize(object.args_owner);
    length += Address.getMessageSize(object.args_spender);
    length += UInt256.getMessageSize(object.args_value);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ethereum_common/ApprovalEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1aefc216de0e824eacf1263c8aeb4df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Address args_owner 
    Address args_spender
    UInt256 args_value
    
    ================================================================================
    MSG: ethereum_common/Address
    # Ethereum address message
    string address
    
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
    const resolved = new ApprovalEvent(null);
    if (msg.args_owner !== undefined) {
      resolved.args_owner = Address.Resolve(msg.args_owner)
    }
    else {
      resolved.args_owner = new Address()
    }

    if (msg.args_spender !== undefined) {
      resolved.args_spender = Address.Resolve(msg.args_spender)
    }
    else {
      resolved.args_spender = new Address()
    }

    if (msg.args_value !== undefined) {
      resolved.args_value = UInt256.Resolve(msg.args_value)
    }
    else {
      resolved.args_value = new UInt256()
    }

    return resolved;
    }
};

module.exports = ApprovalEvent;
