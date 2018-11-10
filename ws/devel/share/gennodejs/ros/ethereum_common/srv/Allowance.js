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

class AllowanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AllowanceRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllowanceRequest
    let len;
    let data = new AllowanceRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethereum_common/AllowanceRequest';
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
    const resolved = new AllowanceRequest(null);
    return resolved;
    }
};

class AllowanceResponse {
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
    // Serializes a message object of type AllowanceResponse
    // Serialize message field [amount]
    bufferOffset = UInt256.serialize(obj.amount, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllowanceResponse
    let len;
    let data = new AllowanceResponse(null);
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
    return 'ethereum_common/AllowanceResponse';
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
    const resolved = new AllowanceResponse(null);
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
  Request: AllowanceRequest,
  Response: AllowanceResponse,
  md5sum() { return 'e2d262a3aeb417f4eb11856b3be5f1c2'; },
  datatype() { return 'ethereum_common/Allowance'; }
};
