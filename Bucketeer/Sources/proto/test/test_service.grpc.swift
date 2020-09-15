//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: proto/test/service.proto
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


/// Usage: instantiate Bucketeer_Test_TestServiceClient, then call methods of this protocol to make API calls.
internal protocol Bucketeer_Test_TestServiceClientProtocol: GRPCClient {
  func test(
    _ request: Bucketeer_Test_TestRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Test_TestRequest, Bucketeer_Test_TestResponse>

}

extension Bucketeer_Test_TestServiceClientProtocol {

  /// Unary call to Test
  ///
  /// - Parameters:
  ///   - request: Request to send to Test.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func test(
    _ request: Bucketeer_Test_TestRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Test_TestRequest, Bucketeer_Test_TestResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.test.TestService/Test",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

internal final class Bucketeer_Test_TestServiceClient: Bucketeer_Test_TestServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the bucketeer.test.TestService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

