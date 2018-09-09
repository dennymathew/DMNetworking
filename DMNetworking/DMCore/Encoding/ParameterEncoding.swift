//
//  ParameterEncoding.swift
//  DMNetworking
//
//  Created by Denny Mathew on 9/6/18.
//  Copyright © 2018 Cabot. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoder {
    static func encode(_ urlRequest: inout URLRequest, with parameters: Parameters) throws
}
