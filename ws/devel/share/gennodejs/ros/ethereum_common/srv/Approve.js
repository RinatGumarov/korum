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
let UInt256 = require('../msg/UInt256.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ApproveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.spender = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('spender')) {
        this.spender = initObj.spender
      }
      else {
        this.spender = new Address();
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new UInt256();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApproveRequest
    // Serialize message field [spender]
    bufferOffset = Address.serialize(obj.spender, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = UInt256.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApproveRequest
    let len;
    let data = new ApproveRequest(null);
    // Deserialize message field [spender]
    data.spender = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = UInt256.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Address.getMessageSize(object.spender);
    length += UInt256.getMessageSize(object.value);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/ApproveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43fbab3b8c2be7816153c82482d1c5d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Address spender
    UInt256 value
    
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
    const resolved = new ApproveRequest(null);
    if (msg.spender !== undefined) {
      resolved.spender = Address.Resolve(msg.spender)
    }
    else {
      resolved.spender = new Address()
    }

    if (msg.value !== undefined) {
      resolved.value = UInt256.Resolve(msg.value)
    }
    else {
      resolved.value = new UInt256()
    }

    return resolved;
    }
};

class ApproveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.txhash = null;
    }
    else {
      if (initObj.hasOwnProperty('txhash')) {
        this.txhash = initObj.txhash
      }
      else {
        this.txhash = new Array(32).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApproveResponse
    // Check that the constant length array field [txhash] has the right length
    if (obj.txhash.length !== 32) {
      throw new Error('Unable to serialize array field txhash - length must be 32')
    }
    // Serialize message field [txhash]
    bufferOffset = _arraySerializer.uint8(obj.txhash, buffer, bufferOffset, 32);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApproveResponse
    let len;
    let data = new ApproveResponse(null);
    // Deserialize message field [txhash]
    data.txhash = _arrayDeserializer.uint8(buffer, bufferOffset, 32)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/ApproveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f773e2ccdc8084a06c1a9a6f6f58e5d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[32] txhash
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApproveResponse(null);
    if (msg.txhash !== undefined) {
      resolved.txhash = msg.txhash;
    }
    else {
      resolved.txhash = new Array(32).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: ApproveRequest,
  Response: ApproveResponse,
  md5sum() { return 'cf2aa6f2895c288e13b4e136d4e4a5fd'; },
  datatype() { return 'ethereum_common/Approve'; }
};
