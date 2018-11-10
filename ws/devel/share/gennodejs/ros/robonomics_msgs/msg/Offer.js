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

class Offer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model = null;
      this.objective = null;
      this.token = null;
      this.cost = null;
      this.validator = null;
      this.lighthouse = null;
      this.lighthouseFee = null;
      this.deadline = null;
      this.nonce = null;
      this.signature = null;
    }
    else {
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = '';
      }
      if (initObj.hasOwnProperty('objective')) {
        this.objective = initObj.objective
      }
      else {
        this.objective = '';
      }
      if (initObj.hasOwnProperty('token')) {
        this.token = initObj.token
      }
      else {
        this.token = '';
      }
      if (initObj.hasOwnProperty('cost')) {
        this.cost = initObj.cost
      }
      else {
        this.cost = 0;
      }
      if (initObj.hasOwnProperty('validator')) {
        this.validator = initObj.validator
      }
      else {
        this.validator = '';
      }
      if (initObj.hasOwnProperty('lighthouse')) {
        this.lighthouse = initObj.lighthouse
      }
      else {
        this.lighthouse = '';
      }
      if (initObj.hasOwnProperty('lighthouseFee')) {
        this.lighthouseFee = initObj.lighthouseFee
      }
      else {
        this.lighthouseFee = 0;
      }
      if (initObj.hasOwnProperty('deadline')) {
        this.deadline = initObj.deadline
      }
      else {
        this.deadline = 0;
      }
      if (initObj.hasOwnProperty('nonce')) {
        this.nonce = initObj.nonce
      }
      else {
        this.nonce = [];
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
    // Serializes a message object of type Offer
    // Serialize message field [model]
    bufferOffset = _serializer.string(obj.model, buffer, bufferOffset);
    // Serialize message field [objective]
    bufferOffset = _serializer.string(obj.objective, buffer, bufferOffset);
    // Serialize message field [token]
    bufferOffset = _serializer.string(obj.token, buffer, bufferOffset);
    // Serialize message field [cost]
    bufferOffset = _serializer.uint32(obj.cost, buffer, bufferOffset);
    // Serialize message field [validator]
    bufferOffset = _serializer.string(obj.validator, buffer, bufferOffset);
    // Serialize message field [lighthouse]
    bufferOffset = _serializer.string(obj.lighthouse, buffer, bufferOffset);
    // Serialize message field [lighthouseFee]
    bufferOffset = _serializer.uint32(obj.lighthouseFee, buffer, bufferOffset);
    // Serialize message field [deadline]
    bufferOffset = _serializer.uint32(obj.deadline, buffer, bufferOffset);
    // Serialize message field [nonce]
    bufferOffset = _arraySerializer.uint8(obj.nonce, buffer, bufferOffset, null);
    // Serialize message field [signature]
    bufferOffset = _arraySerializer.uint8(obj.signature, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Offer
    let len;
    let data = new Offer(null);
    // Deserialize message field [model]
    data.model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objective]
    data.objective = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [token]
    data.token = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cost]
    data.cost = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [validator]
    data.validator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lighthouse]
    data.lighthouse = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lighthouseFee]
    data.lighthouseFee = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [deadline]
    data.deadline = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nonce]
    data.nonce = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [signature]
    data.signature = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model.length;
    length += object.objective.length;
    length += object.token.length;
    length += object.validator.length;
    length += object.lighthouse.length;
    length += object.nonce.length;
    length += object.signature.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robonomics_msgs/Offer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cca2086bb0402e8053192ad7c1e153dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Behaviour model
    string model        # Base58 
    # Task
    string objective     # Base58
    # Operational token
    string token        # address
    # Execution cost
    uint32 cost         # int
    # Validator network address
    string validator     # address
    # lighthouse network address
    string lighthouse    #address
    # Settlement fee
    uint32 lighthouseFee # int 
    # Deadline block number
    uint32 deadline
    # Order nonce value 
    uint8[] nonce       # hex
    # Order signature
    uint8[] signature   # hex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Offer(null);
    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = ''
    }

    if (msg.objective !== undefined) {
      resolved.objective = msg.objective;
    }
    else {
      resolved.objective = ''
    }

    if (msg.token !== undefined) {
      resolved.token = msg.token;
    }
    else {
      resolved.token = ''
    }

    if (msg.cost !== undefined) {
      resolved.cost = msg.cost;
    }
    else {
      resolved.cost = 0
    }

    if (msg.validator !== undefined) {
      resolved.validator = msg.validator;
    }
    else {
      resolved.validator = ''
    }

    if (msg.lighthouse !== undefined) {
      resolved.lighthouse = msg.lighthouse;
    }
    else {
      resolved.lighthouse = ''
    }

    if (msg.lighthouseFee !== undefined) {
      resolved.lighthouseFee = msg.lighthouseFee;
    }
    else {
      resolved.lighthouseFee = 0
    }

    if (msg.deadline !== undefined) {
      resolved.deadline = msg.deadline;
    }
    else {
      resolved.deadline = 0
    }

    if (msg.nonce !== undefined) {
      resolved.nonce = msg.nonce;
    }
    else {
      resolved.nonce = []
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

module.exports = Offer;
