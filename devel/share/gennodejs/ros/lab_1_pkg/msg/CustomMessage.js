// Auto-generated. Do not edit!

// (in-package lab_1_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CustomMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.ctr = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('ctr')) {
        this.ctr = initObj.ctr
      }
      else {
        this.ctr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMessage
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [ctr]
    bufferOffset = _serializer.uint32(obj.ctr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMessage
    let len;
    let data = new CustomMessage(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ctr]
    data.ctr = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lab_1_pkg/CustomMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f270c9e1ed486ac779de04b681128fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string text
    uint32 ctr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomMessage(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.ctr !== undefined) {
      resolved.ctr = msg.ctr;
    }
    else {
      resolved.ctr = 0
    }

    return resolved;
    }
};

module.exports = CustomMessage;
