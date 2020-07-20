// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/event/service/feature.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Bucketeer_Event_Service_EvaluationRequestEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String = String()

  var timestamp: Int64 = 0

  var user: Bucketeer_User_User {
    get {return _user ?? Bucketeer_User_User()}
    set {_user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  var hasUser: Bool {return self._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  mutating func clearUser() {self._user = nil}

  /// true];
  var environmentNamespace: String = String()

  var tag: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _user: Bucketeer_User_User? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bucketeer.event.service"

extension Bucketeer_Event_Service_EvaluationRequestEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EvaluationRequestEvent"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "timestamp"),
    3: .same(proto: "user"),
    5: .standard(proto: "environment_namespace"),
    6: .same(proto: "tag"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularInt64Field(value: &self.timestamp)
      case 3: try decoder.decodeSingularMessageField(value: &self._user)
      case 5: try decoder.decodeSingularStringField(value: &self.environmentNamespace)
      case 6: try decoder.decodeSingularStringField(value: &self.tag)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timestamp, fieldNumber: 2)
    }
    if let v = self._user {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.environmentNamespace.isEmpty {
      try visitor.visitSingularStringField(value: self.environmentNamespace, fieldNumber: 5)
    }
    if !self.tag.isEmpty {
      try visitor.visitSingularStringField(value: self.tag, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Event_Service_EvaluationRequestEvent, rhs: Bucketeer_Event_Service_EvaluationRequestEvent) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs._user != rhs._user {return false}
    if lhs.environmentNamespace != rhs.environmentNamespace {return false}
    if lhs.tag != rhs.tag {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}