// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/notification/sender/notification.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Bucketeer_Notification_Sender_Notification {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var type: Bucketeer_Notification_Sender_Notification.TypeEnum {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  var domainEventNotification: Bucketeer_Notification_Sender_DomainEventNotification {
    get {return _storage._domainEventNotification ?? Bucketeer_Notification_Sender_DomainEventNotification()}
    set {_uniqueStorage()._domainEventNotification = newValue}
  }
  /// Returns true if `domainEventNotification` has been explicitly set.
  var hasDomainEventNotification: Bool {return _storage._domainEventNotification != nil}
  /// Clears the value of `domainEventNotification`. Subsequent reads from it will return its default value.
  mutating func clearDomainEventNotification() {_uniqueStorage()._domainEventNotification = nil}

  var featureStaleNotification: Bucketeer_Notification_Sender_FeatureStaleNotification {
    get {return _storage._featureStaleNotification ?? Bucketeer_Notification_Sender_FeatureStaleNotification()}
    set {_uniqueStorage()._featureStaleNotification = newValue}
  }
  /// Returns true if `featureStaleNotification` has been explicitly set.
  var hasFeatureStaleNotification: Bool {return _storage._featureStaleNotification != nil}
  /// Clears the value of `featureStaleNotification`. Subsequent reads from it will return its default value.
  mutating func clearFeatureStaleNotification() {_uniqueStorage()._featureStaleNotification = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum TypeEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case domainEvent // = 0
    case featureStale // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .domainEvent
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .domainEvent
      case 1: self = .featureStale
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .domainEvent: return 0
      case .featureStale: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension Bucketeer_Notification_Sender_Notification.TypeEnum: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Bucketeer_Notification_Sender_Notification.TypeEnum] = [
    .domainEvent,
    .featureStale,
  ]
}

#endif  // swift(>=4.2)

struct Bucketeer_Notification_Sender_DomainEventNotification {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var environmentNamespace: String {
    get {return _storage._environmentNamespace}
    set {_uniqueStorage()._environmentNamespace = newValue}
  }

  var editor: Bucketeer_Event_Domain_Editor {
    get {return _storage._editor ?? Bucketeer_Event_Domain_Editor()}
    set {_uniqueStorage()._editor = newValue}
  }
  /// Returns true if `editor` has been explicitly set.
  var hasEditor: Bool {return _storage._editor != nil}
  /// Clears the value of `editor`. Subsequent reads from it will return its default value.
  mutating func clearEditor() {_uniqueStorage()._editor = nil}

  var entityType: Bucketeer_Event_Domain_Event.EntityType {
    get {return _storage._entityType}
    set {_uniqueStorage()._entityType = newValue}
  }

  var entityID: String {
    get {return _storage._entityID}
    set {_uniqueStorage()._entityID = newValue}
  }

  var type: Bucketeer_Event_Domain_Event.TypeEnum {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  var environmentID: String {
    get {return _storage._environmentID}
    set {_uniqueStorage()._environmentID = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Bucketeer_Notification_Sender_FeatureStaleNotification {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var environmentNamespace: String = String()

  var features: [Bucketeer_Feature_Feature] = []

  var environmentID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bucketeer.notification.sender"

extension Bucketeer_Notification_Sender_Notification: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Notification"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .standard(proto: "domain_event_notification"),
    3: .standard(proto: "feature_stale_notification"),
  ]

  fileprivate class _StorageClass {
    var _type: Bucketeer_Notification_Sender_Notification.TypeEnum = .domainEvent
    var _domainEventNotification: Bucketeer_Notification_Sender_DomainEventNotification? = nil
    var _featureStaleNotification: Bucketeer_Notification_Sender_FeatureStaleNotification? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _domainEventNotification = source._domainEventNotification
      _featureStaleNotification = source._featureStaleNotification
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._domainEventNotification)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._featureStaleNotification)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._type != .domainEvent {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if let v = _storage._domainEventNotification {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._featureStaleNotification {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Notification_Sender_Notification, rhs: Bucketeer_Notification_Sender_Notification) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._type != rhs_storage._type {return false}
        if _storage._domainEventNotification != rhs_storage._domainEventNotification {return false}
        if _storage._featureStaleNotification != rhs_storage._featureStaleNotification {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Notification_Sender_Notification.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DomainEvent"),
    1: .same(proto: "FeatureStale"),
  ]
}

extension Bucketeer_Notification_Sender_DomainEventNotification: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DomainEventNotification"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "environment_namespace"),
    2: .same(proto: "editor"),
    3: .standard(proto: "entity_type"),
    4: .standard(proto: "entity_id"),
    5: .same(proto: "type"),
    6: .standard(proto: "environment_id"),
  ]

  fileprivate class _StorageClass {
    var _environmentNamespace: String = String()
    var _editor: Bucketeer_Event_Domain_Editor? = nil
    var _entityType: Bucketeer_Event_Domain_Event.EntityType = .feature
    var _entityID: String = String()
    var _type: Bucketeer_Event_Domain_Event.TypeEnum = .unknown
    var _environmentID: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _environmentNamespace = source._environmentNamespace
      _editor = source._editor
      _entityType = source._entityType
      _entityID = source._entityID
      _type = source._type
      _environmentID = source._environmentID
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._environmentNamespace)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._editor)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._entityType)
        case 4: try decoder.decodeSingularStringField(value: &_storage._entityID)
        case 5: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 6: try decoder.decodeSingularStringField(value: &_storage._environmentID)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._environmentNamespace.isEmpty {
        try visitor.visitSingularStringField(value: _storage._environmentNamespace, fieldNumber: 1)
      }
      if let v = _storage._editor {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._entityType != .feature {
        try visitor.visitSingularEnumField(value: _storage._entityType, fieldNumber: 3)
      }
      if !_storage._entityID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._entityID, fieldNumber: 4)
      }
      if _storage._type != .unknown {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 5)
      }
      if !_storage._environmentID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._environmentID, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Notification_Sender_DomainEventNotification, rhs: Bucketeer_Notification_Sender_DomainEventNotification) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._environmentNamespace != rhs_storage._environmentNamespace {return false}
        if _storage._editor != rhs_storage._editor {return false}
        if _storage._entityType != rhs_storage._entityType {return false}
        if _storage._entityID != rhs_storage._entityID {return false}
        if _storage._type != rhs_storage._type {return false}
        if _storage._environmentID != rhs_storage._environmentID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bucketeer_Notification_Sender_FeatureStaleNotification: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".FeatureStaleNotification"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "environment_namespace"),
    2: .same(proto: "features"),
    3: .standard(proto: "environment_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.environmentNamespace)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.features)
      case 3: try decoder.decodeSingularStringField(value: &self.environmentID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.environmentNamespace.isEmpty {
      try visitor.visitSingularStringField(value: self.environmentNamespace, fieldNumber: 1)
    }
    if !self.features.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.features, fieldNumber: 2)
    }
    if !self.environmentID.isEmpty {
      try visitor.visitSingularStringField(value: self.environmentID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Notification_Sender_FeatureStaleNotification, rhs: Bucketeer_Notification_Sender_FeatureStaleNotification) -> Bool {
    if lhs.environmentNamespace != rhs.environmentNamespace {return false}
    if lhs.features != rhs.features {return false}
    if lhs.environmentID != rhs.environmentID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
