//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: proto/account/service.proto
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
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


/// Usage: instantiate Bucketeer_Account_AccountServiceClient, then call methods of this protocol to make API calls.
internal protocol Bucketeer_Account_AccountServiceClientProtocol: GRPCClient {
  func getMe(
    _ request: Bucketeer_Account_GetMeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_GetMeRequest, Bucketeer_Account_GetMeResponse>

  func getMeByEmail(
    _ request: Bucketeer_Account_GetMeByEmailRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_GetMeByEmailRequest, Bucketeer_Account_GetMeResponse>

  func createAdminAccount(
    _ request: Bucketeer_Account_CreateAdminAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_CreateAdminAccountRequest, Bucketeer_Account_CreateAdminAccountResponse>

  func enableAdminAccount(
    _ request: Bucketeer_Account_EnableAdminAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_EnableAdminAccountRequest, Bucketeer_Account_EnableAdminAccountResponse>

  func disableAdminAccount(
    _ request: Bucketeer_Account_DisableAdminAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_DisableAdminAccountRequest, Bucketeer_Account_DisableAdminAccountResponse>

  func getAdminAccount(
    _ request: Bucketeer_Account_GetAdminAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_GetAdminAccountRequest, Bucketeer_Account_GetAdminAccountResponse>

  func listAdminAccounts(
    _ request: Bucketeer_Account_ListAdminAccountsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_ListAdminAccountsRequest, Bucketeer_Account_ListAdminAccountsResponse>

  func convertAccount(
    _ request: Bucketeer_Account_ConvertAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_ConvertAccountRequest, Bucketeer_Account_ConvertAccountResponse>

  func createAccount(
    _ request: Bucketeer_Account_CreateAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_CreateAccountRequest, Bucketeer_Account_CreateAccountResponse>

  func enableAccount(
    _ request: Bucketeer_Account_EnableAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_EnableAccountRequest, Bucketeer_Account_EnableAccountResponse>

  func disableAccount(
    _ request: Bucketeer_Account_DisableAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_DisableAccountRequest, Bucketeer_Account_DisableAccountResponse>

  func changeAccountRole(
    _ request: Bucketeer_Account_ChangeAccountRoleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_ChangeAccountRoleRequest, Bucketeer_Account_ChangeAccountRoleResponse>

  func getAccount(
    _ request: Bucketeer_Account_GetAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_GetAccountRequest, Bucketeer_Account_GetAccountResponse>

  func listAccounts(
    _ request: Bucketeer_Account_ListAccountsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_ListAccountsRequest, Bucketeer_Account_ListAccountsResponse>

  func createAPIKey(
    _ request: Bucketeer_Account_CreateAPIKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_CreateAPIKeyRequest, Bucketeer_Account_CreateAPIKeyResponse>

  func changeAPIKeyName(
    _ request: Bucketeer_Account_ChangeAPIKeyNameRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_ChangeAPIKeyNameRequest, Bucketeer_Account_ChangeAPIKeyNameResponse>

  func enableAPIKey(
    _ request: Bucketeer_Account_EnableAPIKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_EnableAPIKeyRequest, Bucketeer_Account_EnableAPIKeyResponse>

  func disableAPIKey(
    _ request: Bucketeer_Account_DisableAPIKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_DisableAPIKeyRequest, Bucketeer_Account_DisableAPIKeyResponse>

  func getAPIKey(
    _ request: Bucketeer_Account_GetAPIKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_GetAPIKeyRequest, Bucketeer_Account_GetAPIKeyResponse>

  func listAPIKeys(
    _ request: Bucketeer_Account_ListAPIKeysRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_ListAPIKeysRequest, Bucketeer_Account_ListAPIKeysResponse>

  func getAPIKeyBySearchingAllEnvironments(
    _ request: Bucketeer_Account_GetAPIKeyBySearchingAllEnvironmentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Bucketeer_Account_GetAPIKeyBySearchingAllEnvironmentsRequest, Bucketeer_Account_GetAPIKeyBySearchingAllEnvironmentsResponse>

}

extension Bucketeer_Account_AccountServiceClientProtocol {

  /// Unary call to GetMe
  ///
  /// - Parameters:
  ///   - request: Request to send to GetMe.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getMe(
    _ request: Bucketeer_Account_GetMeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_GetMeRequest, Bucketeer_Account_GetMeResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/GetMe",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetMeByEmail
  ///
  /// - Parameters:
  ///   - request: Request to send to GetMeByEmail.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getMeByEmail(
    _ request: Bucketeer_Account_GetMeByEmailRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_GetMeByEmailRequest, Bucketeer_Account_GetMeResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/GetMeByEmail",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to CreateAdminAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateAdminAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func createAdminAccount(
    _ request: Bucketeer_Account_CreateAdminAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_CreateAdminAccountRequest, Bucketeer_Account_CreateAdminAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/CreateAdminAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to EnableAdminAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to EnableAdminAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func enableAdminAccount(
    _ request: Bucketeer_Account_EnableAdminAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_EnableAdminAccountRequest, Bucketeer_Account_EnableAdminAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/EnableAdminAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to DisableAdminAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to DisableAdminAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func disableAdminAccount(
    _ request: Bucketeer_Account_DisableAdminAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_DisableAdminAccountRequest, Bucketeer_Account_DisableAdminAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/DisableAdminAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetAdminAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAdminAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getAdminAccount(
    _ request: Bucketeer_Account_GetAdminAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_GetAdminAccountRequest, Bucketeer_Account_GetAdminAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/GetAdminAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to ListAdminAccounts
  ///
  /// - Parameters:
  ///   - request: Request to send to ListAdminAccounts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func listAdminAccounts(
    _ request: Bucketeer_Account_ListAdminAccountsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_ListAdminAccountsRequest, Bucketeer_Account_ListAdminAccountsResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/ListAdminAccounts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to ConvertAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to ConvertAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func convertAccount(
    _ request: Bucketeer_Account_ConvertAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_ConvertAccountRequest, Bucketeer_Account_ConvertAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/ConvertAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to CreateAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func createAccount(
    _ request: Bucketeer_Account_CreateAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_CreateAccountRequest, Bucketeer_Account_CreateAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/CreateAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to EnableAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to EnableAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func enableAccount(
    _ request: Bucketeer_Account_EnableAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_EnableAccountRequest, Bucketeer_Account_EnableAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/EnableAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to DisableAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to DisableAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func disableAccount(
    _ request: Bucketeer_Account_DisableAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_DisableAccountRequest, Bucketeer_Account_DisableAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/DisableAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to ChangeAccountRole
  ///
  /// - Parameters:
  ///   - request: Request to send to ChangeAccountRole.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func changeAccountRole(
    _ request: Bucketeer_Account_ChangeAccountRoleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_ChangeAccountRoleRequest, Bucketeer_Account_ChangeAccountRoleResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/ChangeAccountRole",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getAccount(
    _ request: Bucketeer_Account_GetAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_GetAccountRequest, Bucketeer_Account_GetAccountResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/GetAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to ListAccounts
  ///
  /// - Parameters:
  ///   - request: Request to send to ListAccounts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func listAccounts(
    _ request: Bucketeer_Account_ListAccountsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_ListAccountsRequest, Bucketeer_Account_ListAccountsResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/ListAccounts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to CreateAPIKey
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateAPIKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func createAPIKey(
    _ request: Bucketeer_Account_CreateAPIKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_CreateAPIKeyRequest, Bucketeer_Account_CreateAPIKeyResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/CreateAPIKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to ChangeAPIKeyName
  ///
  /// - Parameters:
  ///   - request: Request to send to ChangeAPIKeyName.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func changeAPIKeyName(
    _ request: Bucketeer_Account_ChangeAPIKeyNameRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_ChangeAPIKeyNameRequest, Bucketeer_Account_ChangeAPIKeyNameResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/ChangeAPIKeyName",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to EnableAPIKey
  ///
  /// - Parameters:
  ///   - request: Request to send to EnableAPIKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func enableAPIKey(
    _ request: Bucketeer_Account_EnableAPIKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_EnableAPIKeyRequest, Bucketeer_Account_EnableAPIKeyResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/EnableAPIKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to DisableAPIKey
  ///
  /// - Parameters:
  ///   - request: Request to send to DisableAPIKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func disableAPIKey(
    _ request: Bucketeer_Account_DisableAPIKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_DisableAPIKeyRequest, Bucketeer_Account_DisableAPIKeyResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/DisableAPIKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetAPIKey
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAPIKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getAPIKey(
    _ request: Bucketeer_Account_GetAPIKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_GetAPIKeyRequest, Bucketeer_Account_GetAPIKeyResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/GetAPIKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to ListAPIKeys
  ///
  /// - Parameters:
  ///   - request: Request to send to ListAPIKeys.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func listAPIKeys(
    _ request: Bucketeer_Account_ListAPIKeysRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_ListAPIKeysRequest, Bucketeer_Account_ListAPIKeysResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/ListAPIKeys",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetAPIKeyBySearchingAllEnvironments
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAPIKeyBySearchingAllEnvironments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getAPIKeyBySearchingAllEnvironments(
    _ request: Bucketeer_Account_GetAPIKeyBySearchingAllEnvironmentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Bucketeer_Account_GetAPIKeyBySearchingAllEnvironmentsRequest, Bucketeer_Account_GetAPIKeyBySearchingAllEnvironmentsResponse> {
    return self.makeUnaryCall(
      path: "/bucketeer.account.AccountService/GetAPIKeyBySearchingAllEnvironments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

internal final class Bucketeer_Account_AccountServiceClient: Bucketeer_Account_AccountServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the bucketeer.account.AccountService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}
