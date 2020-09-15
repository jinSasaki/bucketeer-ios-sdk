//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: proto/eventcounter/streaming_service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate Bucketeer_Eventcounter_StreamingServiceClient, then call methods of this protocol to make API calls.
internal protocol Bucketeer_Eventcounter_StreamingServiceClientProtocol: GRPCClient {
  func getEvaluationRealtimeCount(
    _ request: Bucketeer_Eventcounter_GetEvaluationRealtimeCountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Eventcounter_GetEvaluationRealtimeCountRequest, Bucketeer_Eventcounter_GetEvaluationRealtimeCountResponse>

  func getExperimentRealtimeCount(
    _ request: Bucketeer_Eventcounter_GetExperimentRealtimeCountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Eventcounter_GetExperimentRealtimeCountRequest, Bucketeer_Eventcounter_GetExperimentRealtimeCountResponse>

  func getOpsRealtimeVariationCount(
    _ request: Bucketeer_Eventcounter_GetOpsRealtimeVariationCountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Eventcounter_GetOpsRealtimeVariationCountRequest, Bucketeer_Eventcounter_GetOpsRealtimeVariationCountResponse>

}

extension Bucketeer_Eventcounter_StreamingServiceClientProtocol {

  /// Unary call to GetEvaluationRealtimeCount
  ///
  /// - Parameters:
  ///   - request: Request to send to GetEvaluationRealtimeCount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getEvaluationRealtimeCount(
    _ request: Bucketeer_Eventcounter_GetEvaluationRealtimeCountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Eventcounter_GetEvaluationRealtimeCountRequest, Bucketeer_Eventcounter_GetEvaluationRealtimeCountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.eventcounter.StreamingService/GetEvaluationRealtimeCount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetExperimentRealtimeCount
  ///
  /// - Parameters:
  ///   - request: Request to send to GetExperimentRealtimeCount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getExperimentRealtimeCount(
    _ request: Bucketeer_Eventcounter_GetExperimentRealtimeCountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Eventcounter_GetExperimentRealtimeCountRequest, Bucketeer_Eventcounter_GetExperimentRealtimeCountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.eventcounter.StreamingService/GetExperimentRealtimeCount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetOpsRealtimeVariationCount
  ///
  /// - Parameters:
  ///   - request: Request to send to GetOpsRealtimeVariationCount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getOpsRealtimeVariationCount(
    _ request: Bucketeer_Eventcounter_GetOpsRealtimeVariationCountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Eventcounter_GetOpsRealtimeVariationCountRequest, Bucketeer_Eventcounter_GetOpsRealtimeVariationCountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.eventcounter.StreamingService/GetOpsRealtimeVariationCount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

internal final class Bucketeer_Eventcounter_StreamingServiceClient: Bucketeer_Eventcounter_StreamingServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the bucketeer.eventcounter.StreamingService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

