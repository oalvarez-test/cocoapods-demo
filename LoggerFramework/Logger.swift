public import CocoaLumberjack

public class Logger {
    private let logLevel: DDLogLevel

    public init(logLevel: DDLogLevel = .verbose) {
        self.logLevel = logLevel
        if DDLog.allLoggers.isEmpty {
            DDLog.add(DDOSLogger.sharedInstance)
        }
    }

    public func logMessage(_ message: String) {
        DDLog.log(asynchronous: true, message: DDLogMessage(message: "LoggerKit: \(message)",
                                                            level: logLevel,
                                                            flag: .info,
                                                            context: 0,
                                                            file: #file,
                                                            function: #function,
                                                            line: #line,
                                                            tag: nil,
                                                            options: [],
                                                            timestamp: nil))
    }
}
