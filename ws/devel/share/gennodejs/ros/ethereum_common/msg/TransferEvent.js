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

class TransferEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.args_from = null;
      this.args_to = null;
      this.args_value = null;
    }
    else {
      if (initObj.hasOwnProperty('args_from')) {
        this.args_from = initObj.args_from
      }
      else {
        this.args_from = new Address();
      }
      if (initObj.hasOwnProperty('args_to')) {
        this.args_to = initObj.args_to
      }
      else {
        this.args_to = new Address();
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
    // Serializes a message object of type TransferEvent
    // Serialize message field [args_from]
    bufferOffset = Address.serialize(obj.args_from, buffer, bufferOffset);
    // Serialize message field [args_to]
    bufferOffset = Address.serialize(obj.args_to, buffer, bufferOffset);
    // Serialize message field [args_value]
    bufferOffset = UInt256.serialize(obj.args_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransferEvent
    let len;
    let data = new TransferEvent(null);
    // Deserialize message field [args_from]
    data.args_from = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [args_to]
    data.args_to = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [args_value]
    data.args_value = UInt256.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Address.getMessageSize(object.args_from);
    length += Address.getMessageSize(object.args_to);
    length += UInt256.getMessageSize(object.args_value);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ethereum_common/TransferEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35f272b72902fee74cbfac3183ab4ae1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Address args_from 
    Address args_to
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
    const resolved = new TransferEvent(null);
    if (msg.args_from !== undefined) {
      resolved.args_from = Address.Resolve(msg.args_from)
    }
    else {
      resolved.args_from = new Address()
    }

    if (msg.args_to !== undefined) {
      resolved.args_to = Address.Resolve(msg.args_to)
    }
    else {
      resolved.args_to = new Address()
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

module.exports = TransferEvent;
