# loggins

_A command-line logger for Apple's unified logging system (OSLog)._

`loggins` is a lightweight CLI wrapper around Swift’s [`Logger`](https://developer.apple.com/documentation/os/logger) API, designed for quick, structured logging from scripts, terminals, and automation tools. It’s a spiritual successor to the `logger` command—rewritten for the modern Console.

## Usage

```sh
loggins "Danger zone entered"
```

```sh
loggins -l error --subsystem com.example.tool --category startup "This is it"
```

```sh
loggins -l debug --category network --privacy private "Footloose from the firewall"
```

## Flags

| Flag               | Description                                                      |
|--------------------|------------------------------------------------------------------|
| `<message>`        | The message to log (required).                                   |
| `-l, --level`      | Log level: `debug`, `info`, `notice`, `warning`, `error`, `critical`. Defaults to `info`. |
| `--subsystem`      | Optional subsystem identifier (e.g. `com.app.service`).          |
| `--category`       | Optional category (e.g. `startup`, `network`).                   |
| `--privacy`        | `public` (default) or `private`, for visibility control.         |

## Why?

Apple’s unified logging system is structured, performant, and secure—but logging via CLI tools hasn’t kept up. `loggins` brings Swift-native logging to the command line, using familiar options with sane defaults.

## See Also

- [Apple's Logger API](https://developer.apple.com/documentation/os/logger)
- [`OSLogPrivacy`](https://developer.apple.com/documentation/os/oslogprivacy)
