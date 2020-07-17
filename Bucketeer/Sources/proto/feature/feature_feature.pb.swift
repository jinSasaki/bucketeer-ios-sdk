// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/feature/feature.proto
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

struct Bucketeer_Feature_Feature {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  var description_p: String {
    get {return _storage._description_p}
    set {_uniqueStorage()._description_p = newValue}
  }

  var enabled: Bool {
    get {return _storage._enabled}
    set {_uniqueStorage()._enabled = newValue}
  }

  var deleted: Bool {
    get {return _storage._deleted}
    set {_uniqueStorage()._deleted = newValue}
  }

  var evaluationUndelayable: Bool {
    get {return _storage._evaluationUndelayable}
    set {_uniqueStorage()._evaluationUndelayable = newValue}
  }

  var ttl: Int32 {
    get {return _storage._ttl}
    set {_uniqueStorage()._ttl = newValue}
  }

  var version: Int32 {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  var createdAt: Int64 {
    get {return _storage._createdAt}
    set {_uniqueStorage()._createdAt = newValue}
  }

  var updatedAt: Int64 {
    get {return _storage._updatedAt}
    set {_uniqueStorage()._updatedAt = newValue}
  }

  var variations: [Bucketeer_Feature_Variation] {
    get {return _storage._variations}
    set {_uniqueStorage()._variations = newValue}
  }

  var targets: [Bucketeer_Feature_Target] {
    get {return _storage._targets}
    set {_uniqueStorage()._targets = newValue}
  }

  var rules: [Bucketeer_Feature_Rule] {
    get {return _storage._rules}
    set {_uniqueStorage()._rules = newValue}
  }

  var defaultStrategy: Bucketeer_Feature_Strategy {
    get {return _storage._defaultStrategy ?? Bucketeer_Feature_Strategy()}
    set {_uniqueStorage()._defaultStrategy = newValue}
  }
  /// Returns true if `defaultStrategy` has been explicitly set.
  var hasDefaultStrategy: Bool {return _storage._defaultStrategy != nil}
  /// Clears the value of `defaultStrategy`. Subsequent reads from it will return its default value.
  mutating func clearDefaultStrategy() {_uniqueStorage()._defaultStrategy = nil}

  var offVariation: String {
    get {return _storage._offVariation}
    set {_uniqueStorage()._offVariation = newValue}
  }

  var tags: [String] {
    get {return _storage._tags}
    set {_uniqueStorage()._tags = newValue}
  }

  /// is permanent flag?
  /// maintainer? creator?
  var lastUsedInfo: Bucketeer_Feature_FeatureLastUsedInfo {
    get {return _storage._lastUsedInfo ?? Bucketeer_Feature_FeatureLastUsedInfo()}
    set {_uniqueStorage()._lastUsedInfo = newValue}
  }
  /// Returns true if `lastUsedInfo` has been explicitly set.
  var hasLastUsedInfo: Bool {return _storage._lastUsedInfo != nil}
  /// Clears the value of `lastUsedInfo`. Subsequent reads from it will return its default value.
  mutating func clearLastUsedInfo() {_uniqueStorage()._lastUsedInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Bucketeer_Feature_TagFeatures {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tag: String = String()

  var features: [Bucketeer_Feature_Feature] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bucketeer.feature"

extension Bucketeer_Feature_Feature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Feature"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "description"),
    4: .same(proto: "enabled"),
    5: .same(proto: "deleted"),
    6: .standard(proto: "evaluation_undelayable"),
    7: .same(proto: "ttl"),
    8: .same(proto: "version"),
    9: .standard(proto: "created_at"),
    10: .standard(proto: "updated_at"),
    11: .same(proto: "variations"),
    12: .same(proto: "targets"),
    13: .same(proto: "rules"),
    14: .standard(proto: "default_strategy"),
    15: .standard(proto: "off_variation"),
    16: .same(proto: "tags"),
    17: .standard(proto: "last_used_info"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _name: String = String()
    var _description_p: String = String()
    var _enabled: Bool = false
    var _deleted: Bool = false
    var _evaluationUndelayable: Bool = false
    var _ttl: Int32 = 0
    var _version: Int32 = 0
    var _createdAt: Int64 = 0
    var _updatedAt: Int64 = 0
    var _variations: [Bucketeer_Feature_Variation] = []
    var _targets: [Bucketeer_Feature_Target] = []
    var _rules: [Bucketeer_Feature_Rule] = []
    var _defaultStrategy: Bucketeer_Feature_Strategy? = nil
    var _offVariation: String = String()
    var _tags: [String] = []
    var _lastUsedInfo: Bucketeer_Feature_FeatureLastUsedInfo? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _name = source._name
      _description_p = source._description_p
      _enabled = source._enabled
      _deleted = source._deleted
      _evaluationUndelayable = source._evaluationUndelayable
      _ttl = source._ttl
      _version = source._version
      _createdAt = source._createdAt
      _updatedAt = source._updatedAt
      _variations = source._variations
      _targets = source._targets
      _rules = source._rules
      _defaultStrategy = source._defaultStrategy
      _offVariation = source._offVariation
      _tags = source._tags
      _lastUsedInfo = source._lastUsedInfo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._id)
        case 2: try decoder.decodeSingularStringField(value: &_storage._name)
        case 3: try decoder.decodeSingularStringField(value: &_storage._description_p)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._enabled)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._deleted)
        case 6: try decoder.decodeSingularBoolField(value: &_storage._evaluationUndelayable)
        case 7: try decoder.decodeSingularInt32Field(value: &_storage._ttl)
        case 8: try decoder.decodeSingularInt32Field(value: &_storage._version)
        case 9: try decoder.decodeSingularInt64Field(value: &_storage._createdAt)
        case 10: try decoder.decodeSingularInt64Field(value: &_storage._updatedAt)
        case 11: try decoder.decodeRepeatedMessageField(value: &_storage._variations)
        case 12: try decoder.decodeRepeatedMessageField(value: &_storage._targets)
        case 13: try decoder.decodeRepeatedMessageField(value: &_storage._rules)
        case 14: try decoder.decodeSingularMessageField(value: &_storage._defaultStrategy)
        case 15: try decoder.decodeSingularStringField(value: &_storage._offVariation)
        case 16: try decoder.decodeRepeatedStringField(value: &_storage._tags)
        case 17: try decoder.decodeSingularMessageField(value: &_storage._lastUsedInfo)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 2)
      }
      if !_storage._description_p.isEmpty {
        try visitor.visitSingularStringField(value: _storage._description_p, fieldNumber: 3)
      }
      if _storage._enabled != false {
        try visitor.visitSingularBoolField(value: _storage._enabled, fieldNumber: 4)
      }
      if _storage._deleted != false {
        try visitor.visitSingularBoolField(value: _storage._deleted, fieldNumber: 5)
      }
      if _storage._evaluationUndelayable != false {
        try visitor.visitSingularBoolField(value: _storage._evaluationUndelayable, fieldNumber: 6)
      }
      if _storage._ttl != 0 {
        try visitor.visitSingularInt32Field(value: _storage._ttl, fieldNumber: 7)
      }
      if _storage._version != 0 {
        try visitor.visitSingularInt32Field(value: _storage._version, fieldNumber: 8)
      }
      if _storage._createdAt != 0 {
        try visitor.visitSingularInt64Field(value: _storage._createdAt, fieldNumber: 9)
      }
      if _storage._updatedAt != 0 {
        try visitor.visitSingularInt64Field(value: _storage._updatedAt, fieldNumber: 10)
      }
      if !_storage._variations.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._variations, fieldNumber: 11)
      }
      if !_storage._targets.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._targets, fieldNumber: 12)
      }
      if !_storage._rules.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._rules, fieldNumber: 13)
      }
      if let v = _storage._defaultStrategy {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
      }
      if !_storage._offVariation.isEmpty {
        try visitor.visitSingularStringField(value: _storage._offVariation, fieldNumber: 15)
      }
      if !_storage._tags.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._tags, fieldNumber: 16)
      }
      if let v = _storage._lastUsedInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 17)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Feature_Feature, rhs: Bucketeer_Feature_Feature) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._description_p != rhs_storage._description_p {return false}
        if _storage._enabled != rhs_storage._enabled {return false}
        if _storage._deleted != rhs_storage._deleted {return false}
        if _storage._evaluationUndelayable != rhs_storage._evaluationUndelayable {return false}
        if _storage._ttl != rhs_storage._ttl {return false}
        if _storage._version != rhs_storage._version {return false}
        if _storage._createdAt != rhs_storage._createdAt {return false}
        if _storage._updatedAt != rhs_storage._updatedAt {return false}
        if _storage._variations != rhs_storage._variations {return false}
        if _storage._targets != rhs_storage._targets {return false}
        if _storage._rules != rhs_storage._rules {return false}
        if _storage._defaultStrategy != rhs_storage._defaultStrategy {return false}
        if _storage._offVariation != rhs_storage._offVariation {return false}
        if _storage._tags != rhs_storage._tags {return false}
        if _storage._lastUsedInfo != rhs_storage._lastUsedInfo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Feature_TagFeatures: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TagFeatures"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tag"),
    2: .same(proto: "features"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.tag)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.features)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.tag.isEmpty {
      try visitor.visitSingularStringField(value: self.tag, fieldNumber: 1)
    }
    if !self.features.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.features, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Feature_TagFeatures, rhs: Bucketeer_Feature_TagFeatures) -> Bool {
    if lhs.tag != rhs.tag {return false}
    if lhs.features != rhs.features {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
