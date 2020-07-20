// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/autoops/command.proto
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

struct Bucketeer_Autoops_CreateAutoOpsRuleCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var featureID: String = String()

  var opsType: Bucketeer_Autoops_OpsType = .enableFeature

  var opsEventRateClauses: [Bucketeer_Autoops_OpsEventRateClause] = []

  var datetimeClauses: [Bucketeer_Autoops_DatetimeClause] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Bucketeer_Autoops_ChangeAutoOpsRuleOpsTypeCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var opsType: Bucketeer_Autoops_OpsType = .enableFeature

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Bucketeer_Autoops_DeleteAutoOpsRuleCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Bucketeer_Autoops_ChangeAutoOpsRuleTriggeredAtCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Bucketeer_Autoops_AddOpsEventRateClauseCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var opsEventRateClause: Bucketeer_Autoops_OpsEventRateClause {
    get {return _opsEventRateClause ?? Bucketeer_Autoops_OpsEventRateClause()}
    set {_opsEventRateClause = newValue}
  }
  /// Returns true if `opsEventRateClause` has been explicitly set.
  var hasOpsEventRateClause: Bool {return self._opsEventRateClause != nil}
  /// Clears the value of `opsEventRateClause`. Subsequent reads from it will return its default value.
  mutating func clearOpsEventRateClause() {self._opsEventRateClause = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _opsEventRateClause: Bucketeer_Autoops_OpsEventRateClause? = nil
}

struct Bucketeer_Autoops_ChangeOpsEventRateClauseCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String = String()

  var opsEventRateClause: Bucketeer_Autoops_OpsEventRateClause {
    get {return _opsEventRateClause ?? Bucketeer_Autoops_OpsEventRateClause()}
    set {_opsEventRateClause = newValue}
  }
  /// Returns true if `opsEventRateClause` has been explicitly set.
  var hasOpsEventRateClause: Bool {return self._opsEventRateClause != nil}
  /// Clears the value of `opsEventRateClause`. Subsequent reads from it will return its default value.
  mutating func clearOpsEventRateClause() {self._opsEventRateClause = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _opsEventRateClause: Bucketeer_Autoops_OpsEventRateClause? = nil
}

struct Bucketeer_Autoops_DeleteClauseCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Bucketeer_Autoops_AddDatetimeClauseCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var datetimeClause: Bucketeer_Autoops_DatetimeClause {
    get {return _datetimeClause ?? Bucketeer_Autoops_DatetimeClause()}
    set {_datetimeClause = newValue}
  }
  /// Returns true if `datetimeClause` has been explicitly set.
  var hasDatetimeClause: Bool {return self._datetimeClause != nil}
  /// Clears the value of `datetimeClause`. Subsequent reads from it will return its default value.
  mutating func clearDatetimeClause() {self._datetimeClause = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _datetimeClause: Bucketeer_Autoops_DatetimeClause? = nil
}

struct Bucketeer_Autoops_ChangeDatetimeClauseCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String = String()

  var datetimeClause: Bucketeer_Autoops_DatetimeClause {
    get {return _datetimeClause ?? Bucketeer_Autoops_DatetimeClause()}
    set {_datetimeClause = newValue}
  }
  /// Returns true if `datetimeClause` has been explicitly set.
  var hasDatetimeClause: Bool {return self._datetimeClause != nil}
  /// Clears the value of `datetimeClause`. Subsequent reads from it will return its default value.
  mutating func clearDatetimeClause() {self._datetimeClause = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _datetimeClause: Bucketeer_Autoops_DatetimeClause? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bucketeer.autoops"

extension Bucketeer_Autoops_CreateAutoOpsRuleCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CreateAutoOpsRuleCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "feature_id"),
    2: .standard(proto: "ops_type"),
    3: .standard(proto: "ops_event_rate_clauses"),
    4: .standard(proto: "datetime_clauses"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.featureID)
      case 2: try decoder.decodeSingularEnumField(value: &self.opsType)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.opsEventRateClauses)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.datetimeClauses)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.featureID.isEmpty {
      try visitor.visitSingularStringField(value: self.featureID, fieldNumber: 1)
    }
    if self.opsType != .enableFeature {
      try visitor.visitSingularEnumField(value: self.opsType, fieldNumber: 2)
    }
    if !self.opsEventRateClauses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.opsEventRateClauses, fieldNumber: 3)
    }
    if !self.datetimeClauses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.datetimeClauses, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_CreateAutoOpsRuleCommand, rhs: Bucketeer_Autoops_CreateAutoOpsRuleCommand) -> Bool {
    if lhs.featureID != rhs.featureID {return false}
    if lhs.opsType != rhs.opsType {return false}
    if lhs.opsEventRateClauses != rhs.opsEventRateClauses {return false}
    if lhs.datetimeClauses != rhs.datetimeClauses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_ChangeAutoOpsRuleOpsTypeCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ChangeAutoOpsRuleOpsTypeCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ops_type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.opsType)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.opsType != .enableFeature {
      try visitor.visitSingularEnumField(value: self.opsType, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_ChangeAutoOpsRuleOpsTypeCommand, rhs: Bucketeer_Autoops_ChangeAutoOpsRuleOpsTypeCommand) -> Bool {
    if lhs.opsType != rhs.opsType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_DeleteAutoOpsRuleCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeleteAutoOpsRuleCommand"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_DeleteAutoOpsRuleCommand, rhs: Bucketeer_Autoops_DeleteAutoOpsRuleCommand) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_ChangeAutoOpsRuleTriggeredAtCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ChangeAutoOpsRuleTriggeredAtCommand"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_ChangeAutoOpsRuleTriggeredAtCommand, rhs: Bucketeer_Autoops_ChangeAutoOpsRuleTriggeredAtCommand) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_AddOpsEventRateClauseCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AddOpsEventRateClauseCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ops_event_rate_clause"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._opsEventRateClause)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._opsEventRateClause {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_AddOpsEventRateClauseCommand, rhs: Bucketeer_Autoops_AddOpsEventRateClauseCommand) -> Bool {
    if lhs._opsEventRateClause != rhs._opsEventRateClause {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_ChangeOpsEventRateClauseCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ChangeOpsEventRateClauseCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "ops_event_rate_clause"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularMessageField(value: &self._opsEventRateClause)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if let v = self._opsEventRateClause {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_ChangeOpsEventRateClauseCommand, rhs: Bucketeer_Autoops_ChangeOpsEventRateClauseCommand) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._opsEventRateClause != rhs._opsEventRateClause {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_DeleteClauseCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeleteClauseCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_DeleteClauseCommand, rhs: Bucketeer_Autoops_DeleteClauseCommand) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_AddDatetimeClauseCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AddDatetimeClauseCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "datetime_clause"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._datetimeClause)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._datetimeClause {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_AddDatetimeClauseCommand, rhs: Bucketeer_Autoops_AddDatetimeClauseCommand) -> Bool {
    if lhs._datetimeClause != rhs._datetimeClause {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Autoops_ChangeDatetimeClauseCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ChangeDatetimeClauseCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "datetime_clause"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularMessageField(value: &self._datetimeClause)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if let v = self._datetimeClause {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Autoops_ChangeDatetimeClauseCommand, rhs: Bucketeer_Autoops_ChangeDatetimeClauseCommand) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._datetimeClause != rhs._datetimeClause {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}