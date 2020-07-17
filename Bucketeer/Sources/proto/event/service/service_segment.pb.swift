// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/event/service/segment.proto
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

struct Bucketeer_Event_Service_BulkSegmentUsersReceivedEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String = String()

  var environmentNamespace: String = String()

  var segmentID: String = String()

  var data: Data = SwiftProtobuf.Internal.emptyData

  var state: Bucketeer_Feature_SegmentUser.State = .included

  var editor: Bucketeer_Event_Domain_Editor {
    get {return _editor ?? Bucketeer_Event_Domain_Editor()}
    set {_editor = newValue}
  }
  /// Returns true if `editor` has been explicitly set.
  var hasEditor: Bool {return self._editor != nil}
  /// Clears the value of `editor`. Subsequent reads from it will return its default value.
  mutating func clearEditor() {self._editor = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _editor: Bucketeer_Event_Domain_Editor? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bucketeer.event.service"

extension Bucketeer_Event_Service_BulkSegmentUsersReceivedEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BulkSegmentUsersReceivedEvent"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "environment_namespace"),
    3: .standard(proto: "segment_id"),
    4: .same(proto: "data"),
    5: .same(proto: "state"),
    6: .same(proto: "editor"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.environmentNamespace)
      case 3: try decoder.decodeSingularStringField(value: &self.segmentID)
      case 4: try decoder.decodeSingularBytesField(value: &self.data)
      case 5: try decoder.decodeSingularEnumField(value: &self.state)
      case 6: try decoder.decodeSingularMessageField(value: &self._editor)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.environmentNamespace.isEmpty {
      try visitor.visitSingularStringField(value: self.environmentNamespace, fieldNumber: 2)
    }
    if !self.segmentID.isEmpty {
      try visitor.visitSingularStringField(value: self.segmentID, fieldNumber: 3)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 4)
    }
    if self.state != .included {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 5)
    }
    if let v = self._editor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Event_Service_BulkSegmentUsersReceivedEvent, rhs: Bucketeer_Event_Service_BulkSegmentUsersReceivedEvent) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.environmentNamespace != rhs.environmentNamespace {return false}
    if lhs.segmentID != rhs.segmentID {return false}
    if lhs.data != rhs.data {return false}
    if lhs.state != rhs.state {return false}
    if lhs._editor != rhs._editor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
