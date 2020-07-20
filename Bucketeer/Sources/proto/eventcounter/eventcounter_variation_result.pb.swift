// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/eventcounter/variation_result.proto
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

struct Bucketeer_Eventcounter_VariationResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var variationID: String = String()

  var experimentCount: Bucketeer_Eventcounter_VariationCount {
    get {return _experimentCount ?? Bucketeer_Eventcounter_VariationCount()}
    set {_experimentCount = newValue}
  }
  /// Returns true if `experimentCount` has been explicitly set.
  var hasExperimentCount: Bool {return self._experimentCount != nil}
  /// Clears the value of `experimentCount`. Subsequent reads from it will return its default value.
  mutating func clearExperimentCount() {self._experimentCount = nil}

  var evaluationCount: Bucketeer_Eventcounter_VariationCount {
    get {return _evaluationCount ?? Bucketeer_Eventcounter_VariationCount()}
    set {_evaluationCount = newValue}
  }
  /// Returns true if `evaluationCount` has been explicitly set.
  var hasEvaluationCount: Bool {return self._evaluationCount != nil}
  /// Clears the value of `evaluationCount`. Subsequent reads from it will return its default value.
  mutating func clearEvaluationCount() {self._evaluationCount = nil}

  var cvrProbBest: Bucketeer_Eventcounter_DistributionSummary {
    get {return _cvrProbBest ?? Bucketeer_Eventcounter_DistributionSummary()}
    set {_cvrProbBest = newValue}
  }
  /// Returns true if `cvrProbBest` has been explicitly set.
  var hasCvrProbBest: Bool {return self._cvrProbBest != nil}
  /// Clears the value of `cvrProbBest`. Subsequent reads from it will return its default value.
  mutating func clearCvrProbBest() {self._cvrProbBest = nil}

  var cvrProbBeatBaseline: Bucketeer_Eventcounter_DistributionSummary {
    get {return _cvrProbBeatBaseline ?? Bucketeer_Eventcounter_DistributionSummary()}
    set {_cvrProbBeatBaseline = newValue}
  }
  /// Returns true if `cvrProbBeatBaseline` has been explicitly set.
  var hasCvrProbBeatBaseline: Bool {return self._cvrProbBeatBaseline != nil}
  /// Clears the value of `cvrProbBeatBaseline`. Subsequent reads from it will return its default value.
  mutating func clearCvrProbBeatBaseline() {self._cvrProbBeatBaseline = nil}

  var cvrProb: Bucketeer_Eventcounter_DistributionSummary {
    get {return _cvrProb ?? Bucketeer_Eventcounter_DistributionSummary()}
    set {_cvrProb = newValue}
  }
  /// Returns true if `cvrProb` has been explicitly set.
  var hasCvrProb: Bool {return self._cvrProb != nil}
  /// Clears the value of `cvrProb`. Subsequent reads from it will return its default value.
  mutating func clearCvrProb() {self._cvrProb = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _experimentCount: Bucketeer_Eventcounter_VariationCount? = nil
  fileprivate var _evaluationCount: Bucketeer_Eventcounter_VariationCount? = nil
  fileprivate var _cvrProbBest: Bucketeer_Eventcounter_DistributionSummary? = nil
  fileprivate var _cvrProbBeatBaseline: Bucketeer_Eventcounter_DistributionSummary? = nil
  fileprivate var _cvrProb: Bucketeer_Eventcounter_DistributionSummary? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bucketeer.eventcounter"

extension Bucketeer_Eventcounter_VariationResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VariationResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "variation_id"),
    2: .standard(proto: "experiment_count"),
    3: .standard(proto: "evaluation_count"),
    4: .standard(proto: "cvr_prob_best"),
    5: .standard(proto: "cvr_prob_beat_baseline"),
    6: .standard(proto: "cvr_prob"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.variationID)
      case 2: try decoder.decodeSingularMessageField(value: &self._experimentCount)
      case 3: try decoder.decodeSingularMessageField(value: &self._evaluationCount)
      case 4: try decoder.decodeSingularMessageField(value: &self._cvrProbBest)
      case 5: try decoder.decodeSingularMessageField(value: &self._cvrProbBeatBaseline)
      case 6: try decoder.decodeSingularMessageField(value: &self._cvrProb)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.variationID.isEmpty {
      try visitor.visitSingularStringField(value: self.variationID, fieldNumber: 1)
    }
    if let v = self._experimentCount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._evaluationCount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._cvrProbBest {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._cvrProbBeatBaseline {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._cvrProb {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Eventcounter_VariationResult, rhs: Bucketeer_Eventcounter_VariationResult) -> Bool {
    if lhs.variationID != rhs.variationID {return false}
    if lhs._experimentCount != rhs._experimentCount {return false}
    if lhs._evaluationCount != rhs._evaluationCount {return false}
    if lhs._cvrProbBest != rhs._cvrProbBest {return false}
    if lhs._cvrProbBeatBaseline != rhs._cvrProbBeatBaseline {return false}
    if lhs._cvrProb != rhs._cvrProb {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}