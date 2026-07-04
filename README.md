# Loggins

Loggins is a Swift command-line tool for sending structured messages to Apple’s unified logging system.

## Install

```sh
swift build -c release
install .build/release/loggins /usr/local/bin/loggins
```

## Use

```sh
loggins "Call this from your own scripts."
```

## Help

```text
OVERVIEW: A tool for sending structured messages to Apple’s unified logging system.

USAGE: loggins <message> [--level <level>] [--subsystem <subsystem>] [--category <category>]

ARGUMENTS:
  <message>               The message to log.

OPTIONS:
  --level <level>         Log level. Options: debug, info, notice, warning,
                          error, critical. Default: info.
  --subsystem <subsystem> Subsystem identifier, such as com.example.tool.
  --category <category>   Log category, such as startup or network.
  --version               Show the version.
  -h, --help              Show help information.
```
