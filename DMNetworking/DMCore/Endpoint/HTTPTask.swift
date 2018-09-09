//
//  HTTPTask.swift
//  DMNetworking
//
//  Created by Denny Mathew on 9/6/18.
//  Copyright © 2018 Cabot. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    case request

    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)

    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, header: HTTPHeaders?)

    //Case download, upload etc can be addded!
}
