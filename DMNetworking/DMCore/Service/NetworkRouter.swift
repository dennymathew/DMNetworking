//
//  NetworkRouter.swift
//  DMNetworking
//
//  Created by Denny Mathew on 9/7/18.
//  Copyright © 2018 Cabot. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?,_ response: URLResponse?,_ error: Error?)->()

protocol NetworkRouter: class {

    associatedtype EndPoint: EndpointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
