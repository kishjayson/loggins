# Loggins

[Loggins](https://www.youtube.com/watch?v=HjPpHcgnDfI) is a lightweight CLI wrapper around the Swift [Logger API](https://developer.apple.com/documentation/os/logger), designed for quick, structured logging from scripts, terminals, and automation tools. It’s a spiritual successor to the `logger` command—rewritten for the modern Console.

## Usage

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

## Examples

```sh
loggins "Highway to the danger zone"
loggins -l warning "This is it"
loggins -l error --privacy private "Meet me halfway"
loggins --subsystem com.loggins.tracks --category footloose "Cut loose"
loggins -l notice --category playlist "Playing with the boys"
```

## See Also
- [Final Space](https://archive.org/details/final-space_202209)
- [The Final Chapter](https://finalspaceends.com)
