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
        abstract: "A tool for sending structured messages to Apple’s unified logging system.",
        version: "3.1"
    )

    @Argument(help: "The message to log.")
    var message: String

    @Option(help: "Log level. Options: debug, info, notice, warning, error, critical")
    var level: String = "info"

    @Option(help: "Subsystem identifier (e.g. com.example.tool)")
    var subsystem: String?

    @Option(help: "Log category (e.g. startup, network)")
    var category: String?

    func run() throws {
        let logger = configuredLogger()
        writeMessage(level: level, message: message, using: logger)
    }

    private func configuredLogger() -> Logger {
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

    private func writeMessage(level: String, message: String, using logger: Logger) {
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
