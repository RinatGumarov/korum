// Auto-generated. Do not edit!

// (in-package ethereum_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UInt256 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uint256 = null;
    }
    else {
      if (initObj.hasOwnProperty('uint256')) {
        this.uint256 = initObj.uint256
      }
      else {
        this.uint256 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UInt256
    // Serialize message field [uint256]
    bufferOffset = _serializer.string(obj.uint256, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UInt256
    let len;
    let data = new UInt256(null);
    // Deserialize message field [uint256]
    data.uint256 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.uint256.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ethereum_common/UInt256';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3e47bf4311da2c63d362b5eea4c389b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 256bit unisgned integer
    string uint256
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UInt256(null);
    if (msg.uint256 !== undefined) {
      resolved.uint256 = msg.uint256;
    }
    else {
      resolved.uint256 = ''
    }

    return resolved;
    }
};

module.exports = UInt256;
