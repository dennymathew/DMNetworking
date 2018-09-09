//
//  JSONParameterEncoding.swift
//  DMNetworking
//
//  Created by Denny Mathew on 9/7/18.
//  Copyright © 2018 Cabot. All rights reserved.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {

    public static func encode(_ urlRequest: inout URLRequest, with parameters: Parameters) throws {

        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        } catch {
            throw NetworkError.encodingFailed
        }
    }
}
