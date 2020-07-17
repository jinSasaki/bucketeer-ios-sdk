// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/eventcounter/histogram.proto
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

struct Bucketeer_Eventcounter_Histogram {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var hist: [Int64] = []

  var bins: [Double] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bucketeer.eventcounter"

extension Bucketeer_Eventcounter_Histogram: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Histogram"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hist"),
    2: .same(proto: "bins"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedInt64Field(value: &self.hist)
      case 2: try decoder.decodeRepeatedDoubleField(value: &self.bins)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.hist.isEmpty {
      try visitor.visitPackedInt64Field(value: self.hist, fieldNumber: 1)
    }
    if !self.bins.isEmpty {
      try visitor.visitPackedDoubleField(value: self.bins, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bucketeer_Eventcounter_Histogram, rhs: Bucketeer_Eventcounter_Histogram) -> Bool {
    if lhs.hist != rhs.hist {return false}
    if lhs.bins != rhs.bins {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
