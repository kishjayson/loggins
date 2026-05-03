# Loggins

### Usage
```
OVERVIEW: A tool for writing messages to Apple's unified logging system.

USAGE: loggins <message> [--level <level>] [--subsystem <subsystem>] [--category <category>]

ARGUMENTS:
  <message>               The message to log.

OPTIONS:
  -l, --level <level>     Log level. Options: debug, info, notice, warning,
                          error, critical (default: info)
  --subsystem <subsystem> Subsystem identifier (e.g. com.example.tool)
  --category <category>   Log category (e.g. startup, network)
  --version               Show the version.
  -h, --help              Show help information.
```

### Output

![loggins](https://macplus.solutions/images/loggins.png)
