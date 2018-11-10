// Auto-generated. Do not edit!

// (in-package robonomics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Result {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.liability = null;
      this.result = null;
      this.success = null;
      this.signature = null;
    }
    else {
      if (initObj.hasOwnProperty('liability')) {
        this.liability = initObj.liability
      }
      else {
        this.liability = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('signature')) {
        this.signature = initObj.signature
      }
      else {
        this.signature = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Result
    // Serialize message field [liability]
    bufferOffset = _serializer.string(obj.liability, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [signature]
    bufferOffset = _arraySerializer.uint8(obj.signature, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Result
    let len;
    let data = new Result(null);
    // Deserialize message field [liability]
    data.liability = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [signature]
    data.signature = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.liability.length;
    length += object.result.length;
    length += object.signature.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robonomics_msgs/Result';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '779c689203741480a2063956e588f667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Result liability
    string liability     # address
    # Result IPFS hash
    string result       # base58
    # Executed successfully flag
    bool success
    # Result signature
    uint8[] signature    # hex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Result(null);
    if (msg.liability !== undefined) {
      resolved.liability = msg.liability;
    }
    else {
      resolved.liability = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.signature !== undefined) {
      resolved.signature = msg.signature;
    }
    else {
      resolved.signature = []
    }

    return resolved;
    }
};

module.exports = Result;
