//
//  Feature.swift
//  Cocoapods-demo
//
//  Created by Hongwei Ma on 2024/12/2.
//

import LoggerFramework

public class CoreFeature {
    public init() {}

    public func performTask() {
        let logger = Logger()
        logger.logMessage("CoreFeatureFramework: Task started")
        logger.logMessage("CoreFeatureFramework: Task completed")
    }
}
