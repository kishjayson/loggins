//
//  Loggins.swift
//  loggins
//
//  Created by Jayson Kish on 7/11/25.
//

import ArgumentParser
import Foundation
import OSLog

@main
struct Loggins: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "A logger for Apple's unified logging system.",
        version: "0.1.0"
    )

    @Argument(help: "The message to log.")
    var message: String

    @Option(name: [.customShort("l"), .long], help: "The log level for the message. [default: info]\nValues: debug, info, notice, warning, error, critical")
    var level: String = "info"

    @Option(help: "Optional log subsystem (e.g. com.example.tool)")
    var subsystem: String?

    @Option(help: "Optional log category (e.g. startup, network)")
    var category: String?

    @Option(help: "Privacy level for the log message. [default: public]\nValues: public, private")
    var privacy: String = "public"

    func run() throws {
        let logger = makeLogger()
        log(level: level, message: message, logger: logger)
    }

    private func makeLogger() -> Logger {
        if let subsystem = subsystem, let category = category {
            return Logger(subsystem: subsystem, category: category)
        } else if let subsystem = subsystem {
            return Logger(subsystem: subsystem, category: "default")
        } else if let category = category {
            return Logger(subsystem: "default", category: category)
        } else {
            return Logger()
        }
    }

    private func log(level: String, message: String, logger: Logger) {
        switch privacy.lowercased() {
        case "private":
            switch level.lowercased() {
            case "debug":
                logger.debug("\(message, privacy: .private)")
            case "notice":
                logger.notice("\(message, privacy: .private)")
            case "warning":
                logger.warning("\(message, privacy: .private)")
            case "error":
                logger.error("\(message, privacy: .private)")
            case "critical":
                logger.critical("\(message, privacy: .private)")
            default:
                logger.info("\(message, privacy: .private)")
            }

        default:
            switch level.lowercased() {
            case "debug":
                logger.debug("\(message, privacy: .public)")
            case "notice":
                logger.notice("\(message, privacy: .public)")
            case "warning":
                logger.warning("\(message, privacy: .public)")
            case "error":
                logger.error("\(message, privacy: .public)")
            case "critical":
                logger.critical("\(message, privacy: .public)")
            default:
                logger.info("\(message, privacy: .public)")
            }
        }
    }
}
