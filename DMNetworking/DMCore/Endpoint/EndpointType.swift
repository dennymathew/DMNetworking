//
//  EndpointType.swift
//  DMNetworking
//
//  Created by Denny Mathew on 9/6/18.
//  Copyright © 2018 Cabot. All rights reserved.
//

import Foundation

protocol EndpointType: class {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
