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

class TransferRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.to = null;
      this.value = null;
    }
    else {
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
    // Serializes a message object of type TransferRequest
    // Serialize message field [to]
    bufferOffset = Address.serialize(obj.to, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = UInt256.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransferRequest
    let len;
    let data = new TransferRequest(null);
    // Deserialize message field [to]
    data.to = Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = UInt256.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Address.getMessageSize(object.to);
    length += UInt256.getMessageSize(object.value);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/TransferRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca50bf5cce5a3256513d74c515bceb6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TransferRequest(null);
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

class TransferResponse {
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
    // Serializes a message object of type TransferResponse
    // Check that the constant length array field [txhash] has the right length
    if (obj.txhash.length !== 32) {
      throw new Error('Unable to serialize array field txhash - length must be 32')
    }
    // Serialize message field [txhash]
    bufferOffset = _arraySerializer.uint8(obj.txhash, buffer, bufferOffset, 32);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransferResponse
    let len;
    let data = new TransferResponse(null);
    // Deserialize message field [txhash]
    data.txhash = _arrayDeserializer.uint8(buffer, bufferOffset, 32)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/TransferResponse';
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
    const resolved = new TransferResponse(null);
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
  Request: TransferRequest,
  Response: TransferResponse,
  md5sum() { return '3174e907a7a184dbf8e5563f18f0c467'; },
  datatype() { return 'ethereum_common/Transfer'; }
};
