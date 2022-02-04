// Auto-generated. Do not edit!

// (in-package lab_1_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CustomServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arg_1 = null;
    }
    else {
      if (initObj.hasOwnProperty('arg_1')) {
        this.arg_1 = initObj.arg_1
      }
      else {
        this.arg_1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomServiceRequest
    // Serialize message field [arg_1]
    bufferOffset = _serializer.uint32(obj.arg_1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomServiceRequest
    let len;
    let data = new CustomServiceRequest(null);
    // Deserialize message field [arg_1]
    data.arg_1 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lab_1_pkg/CustomServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6476a566acf52aa10a2c0826092b93a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CustomService.srv
    # Request fields
    uint32 arg_1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomServiceRequest(null);
    if (msg.arg_1 !== undefined) {
      resolved.arg_1 = msg.arg_1;
    }
    else {
      resolved.arg_1 = 0
    }

    return resolved;
    }
};

class CustomServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.out_1 = null;
    }
    else {
      if (initObj.hasOwnProperty('out_1')) {
        this.out_1 = initObj.out_1
      }
      else {
        this.out_1 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomServiceResponse
    // Serialize message field [out_1]
    bufferOffset = _serializer.string(obj.out_1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomServiceResponse
    let len;
    let data = new CustomServiceResponse(null);
    // Deserialize message field [out_1]
    data.out_1 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.out_1);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lab_1_pkg/CustomServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e1873e13eae7386f1444629b8c72885';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Response fields
    string out_1
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomServiceResponse(null);
    if (msg.out_1 !== undefined) {
      resolved.out_1 = msg.out_1;
    }
    else {
      resolved.out_1 = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CustomServiceRequest,
  Response: CustomServiceResponse,
  md5sum() { return '1de2a7958fd3947b5dd3ec41292a1bb8'; },
  datatype() { return 'lab_1_pkg/CustomService'; }
};
