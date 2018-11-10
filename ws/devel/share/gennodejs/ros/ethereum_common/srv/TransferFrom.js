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

class TransferFromRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.owner = null;
      this.to = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('owner')) {
        this.owner = initObj.owner
      }
      else {
        this.owner = new Address();
      }
      if (initObj.hasOwnProperty('to')) {
        this.to = initObj.to
      }
      else {
        this.to = new Address();
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
    // Serializes a message object of type TransferFromRequest
    // Serialize message field [owner]
    bufferOffset = Address.serialize(obj.owner, buffer, bufferOffset);
    // Serialize message field [to]
    bufferOffset = Address.serialize(obj.to, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = UInt256.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransferFromRequest
    let len;
    let data = new TransferFromRequest(null);
    // Deserialize message field [owner]
    data.owner = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [to]
    data.to = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = UInt256.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Address.getMessageSize(object.owner);
    length += Address.getMessageSize(object.to);
    length += UInt256.getMessageSize(object.value);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/TransferFromRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86e9ea46941820c424da18e712b60b3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Address owner
    Address to
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
    const resolved = new TransferFromRequest(null);
    if (msg.owner !== undefined) {
      resolved.owner = Address.Resolve(msg.owner)
    }
    else {
      resolved.owner = new Address()
    }

    if (msg.to !== undefined) {
      resolved.to = Address.Resolve(msg.to)
    }
    else {
      resolved.to = new Address()
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

class TransferFromResponse {
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
    // Serializes a message object of type TransferFromResponse
    // Check that the constant length array field [txhash] has the right length
    if (obj.txhash.length !== 32) {
      throw new Error('Unable to serialize array field txhash - length must be 32')
    }
    // Serialize message field [txhash]
    bufferOffset = _arraySerializer.uint8(obj.txhash, buffer, bufferOffset, 32);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransferFromResponse
    let len;
    let data = new TransferFromResponse(null);
    // Deserialize message field [txhash]
    data.txhash = _arrayDeserializer.uint8(buffer, bufferOffset, 32)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/TransferFromResponse';
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
    const resolved = new TransferFromResponse(null);
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
  Request: TransferFromRequest,
  Response: TransferFromResponse,
  md5sum() { return 'bdaad270cecdaddc8d27fbf972359604'; },
  datatype() { return 'ethereum_common/TransferFrom'; }
};
