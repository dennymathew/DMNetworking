//
//  NetworkError.swift
//  DMNetworking
//
//  Created by Denny Mathew on 9/7/18.
//  Copyright © 2018 Cabot. All rights reserved.
//

import Foundation

public enum NetworkError: String, Error {
    case paramsNil = "The parameters were Nil."
    case encodingFailed = "There was an error encoding the parameters."
    case missingURL = "URL is Nil."
}
