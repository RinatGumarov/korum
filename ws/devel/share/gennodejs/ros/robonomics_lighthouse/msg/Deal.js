// Auto-generated. Do not edit!

// (in-package robonomics_lighthouse.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robonomics_msgs = _finder('robonomics_msgs');

//-----------------------------------------------------------

class Deal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.demand = null;
      this.offer = null;
    }
    else {
      if (initObj.hasOwnProperty('demand')) {
        this.demand = initObj.demand
      }
      else {
        this.demand = new robonomics_msgs.msg.Demand();
      }
      if (initObj.hasOwnProperty('offer')) {
        this.offer = initObj.offer
      }
      else {
        this.offer = new robonomics_msgs.msg.Offer();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Deal
    // Serialize message field [demand]
    bufferOffset = robonomics_msgs.msg.Demand.serialize(obj.demand, buffer, bufferOffset);
    // Serialize message field [offer]
    bufferOffset = robonomics_msgs.msg.Offer.serialize(obj.offer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Deal
    let len;
    let data = new Deal(null);
    // Deserialize message field [demand]
    data.demand = robonomics_msgs.msg.Demand.deserialize(buffer, bufferOffset);
    // Deserialize message field [offer]
    data.offer = robonomics_msgs.msg.Offer.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += robonomics_msgs.msg.Demand.getMessageSize(object.demand);
    length += robonomics_msgs.msg.Offer.getMessageSize(object.offer);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robonomics_lighthouse/Deal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b47773dbfb8dcc972a397366b3f647c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robonomics_msgs/Demand demand 
    robonomics_msgs/Offer  offer 
    
    ================================================================================
    MSG: robonomics_msgs/Demand
    # Behaviour model
    string model         # Base58 
    # Task
    string objective     # Base58
    # Operational token
    string token         # address
    # Execution cost
    uint32 cost          # int
    # lighthouse network address
    string lighthouse    #address
    # Validator network address
    string validator     # address
    # Validator network fee
    uint32 validatorFee  # int 
    # Deadline block number
    uint32 deadline      # int
    # Order nonce value
    uint8[] nonce        # hex 
    # Order signature
    uint8[] signature    # hex
    
    ================================================================================
    MSG: robonomics_msgs/Offer
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
    const resolved = new Deal(null);
    if (msg.demand !== undefined) {
      resolved.demand = robonomics_msgs.msg.Demand.Resolve(msg.demand)
    }
    else {
      resolved.demand = new robonomics_msgs.msg.Demand()
    }

    if (msg.offer !== undefined) {
      resolved.offer = robonomics_msgs.msg.Offer.Resolve(msg.offer)
    }
    else {
      resolved.offer = new robonomics_msgs.msg.Offer()
    }

    return resolved;
    }
};

module.exports = Deal;
