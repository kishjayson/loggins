# Loggins

```sh
OVERVIEW: A tool for writing messages to Apple's unified logging system.

USAGE: loggins <message> [--level <level>] [--subsystem <subsystem>] [--category <category>] [--privacy <privacy>]

ARGUMENTS:
  <message>               The message to log.

OPTIONS:
  -l, --level <level>     Log level. Options: debug, info, notice, warning,
                          error, critical (default: info)
  --subsystem <subsystem> Subsystem identifier (e.g. com.example.tool)
  --category <category>   Log category (e.g. startup, network)
  --privacy <privacy>     Privacy setting for message. Options: public, private
                          (default: public)
  --version               Show the version.
  -h, --help              Show help information.
```
