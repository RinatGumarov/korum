// Auto-generated. Do not edit!

// (in-package robonomics_liability.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Liability {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.address = null;
      this.model = null;
      this.objective = null;
      this.result = null;
      this.promisee = null;
      this.promisor = null;
      this.token = null;
      this.cost = null;
      this.validator = null;
      this.validatorFee = null;
    }
    else {
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = '';
      }
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
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
      if (initObj.hasOwnProperty('promisee')) {
        this.promisee = initObj.promisee
      }
      else {
        this.promisee = '';
      }
      if (initObj.hasOwnProperty('promisor')) {
        this.promisor = initObj.promisor
      }
      else {
        this.promisor = '';
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
      if (initObj.hasOwnProperty('validatorFee')) {
        this.validatorFee = initObj.validatorFee
      }
      else {
        this.validatorFee = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Liability
    // Serialize message field [address]
    bufferOffset = _serializer.string(obj.address, buffer, bufferOffset);
    // Serialize message field [model]
    bufferOffset = _serializer.string(obj.model, buffer, bufferOffset);
    // Serialize message field [objective]
    bufferOffset = _serializer.string(obj.objective, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [promisee]
    bufferOffset = _serializer.string(obj.promisee, buffer, bufferOffset);
    // Serialize message field [promisor]
    bufferOffset = _serializer.string(obj.promisor, buffer, bufferOffset);
    // Serialize message field [token]
    bufferOffset = _serializer.string(obj.token, buffer, bufferOffset);
    // Serialize message field [cost]
    bufferOffset = _serializer.uint64(obj.cost, buffer, bufferOffset);
    // Serialize message field [validator]
    bufferOffset = _serializer.string(obj.validator, buffer, bufferOffset);
    // Serialize message field [validatorFee]
    bufferOffset = _serializer.uint64(obj.validatorFee, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Liability
    let len;
    let data = new Liability(null);
    // Deserialize message field [address]
    data.address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model]
    data.model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objective]
    data.objective = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [promisee]
    data.promisee = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [promisor]
    data.promisor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [token]
    data.token = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cost]
    data.cost = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [validator]
    data.validator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [validatorFee]
    data.validatorFee = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.address.length;
    length += object.model.length;
    length += object.objective.length;
    length += object.result.length;
    length += object.promisee.length;
    length += object.promisor.length;
    length += object.token.length;
    length += object.validator.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robonomics_liability/Liability';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfbed1b3b614dbb05af016d2c1c4cde6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string address
    string model
    string objective
    string result
    string promisee
    string promisor
    string token
    uint64 cost
    string validator
    uint64 validatorFee
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Liability(null);
    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = ''
    }

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

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    if (msg.promisee !== undefined) {
      resolved.promisee = msg.promisee;
    }
    else {
      resolved.promisee = ''
    }

    if (msg.promisor !== undefined) {
      resolved.promisor = msg.promisor;
    }
    else {
      resolved.promisor = ''
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

    if (msg.validatorFee !== undefined) {
      resolved.validatorFee = msg.validatorFee;
    }
    else {
      resolved.validatorFee = 0
    }

    return resolved;
    }
};

module.exports = Liability;
