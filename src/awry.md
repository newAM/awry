# Are We RTOS Yet?

_The state of Real Time Operating Systems in Rust._

## Status

We are not RTOS, yet.

There are only a handful of RTOS' written in rust, and only one of them compiles
on stable.

The future is bright for RTOS' in rust, the language has many features that
benefit RTOS development:
* Procedural macros allow [RTIC] to guarantee deadlock-free execution at compile
  time.
* `no_std` executors allow [embassy] and [drone] to provide cooperative
  scheduling with `await` syntax
* `const` functions allow [R3] to configure the RTOS as much as possible at
  compile time

## Ecosystem

| Name       | Native Rust | Compiles on stable | Language(s) |
|------------|-------------|--------------------|-------------|
| [bern]     | ✅          | ❌                 | en          |
| [drone]    | ✅          | ❌                 | en          |
| [embassy]  | ✅          | ❌                 | en          |
| [freertos] | ❌          | Partial            | en          |
| [hubris]   | ✅          | ❌                 | en          |
| [R3]       | ✅          | ❌                 | en          |
| [RTIC]     | ✅          | ✅                 | en, ru      |
| [Tock]     | ✅          | ❌                 | en          |
| [tornado]  | ✅          | ❌                 | zh          |
| [zephyr]   | ❌          | ✅                 | en          |

### Stats

| Name       | Stars | Forks | Issues |
|------------|-------|-------|--------|
| [bern]     | N/A   | N/A   | N/A    |
| [drone]    | [![GitHub stars](https://img.shields.io/github/stars/drone-os/drone-core)](https://github.com/drone-os/drone-core/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/drone-os/drone-core)](https://github.com/drone-os/drone-core/network) | [![GitHub issues](https://img.shields.io/github/issues/drone-os/drone-core)](https://github.com/drone-os/drone-core/issues) |
| [embassy]  | [![GitHub stars](https://img.shields.io/github/stars/embassy-rs/embassy)](https://github.com/embassy-rs/embassy/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/embassy-rs/embassy)](https://github.com/embassy-rs/embassy/network) | [![GitHub issues](https://img.shields.io/github/issues/embassy-rs/embassy)](https://github.com/embassy-rs/embassy/issues) |
| [freertos] | [![GitHub stars](https://img.shields.io/github/stars/lobaro/FreeRTOS-rust)](https://github.com/lobaro/FreeRTOS-rust/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/lobaro/FreeRTOS-rust)](https://github.com/lobaro/FreeRTOS-rust/network) | [![GitHub issues](https://img.shields.io/github/issues/lobaro/FreeRTOS-rust)](https://github.com/lobaro/FreeRTOS-rust/issues) |
| [hubris]   | [![GitHub stars](https://img.shields.io/github/stars/oxidecomputer/hubris)](https://github.com/oxidecomputer/hubris/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/oxidecomputer/hubris)](https://github.com/oxidecomputer/hubris/network) | [![GitHub issues](https://img.shields.io/github/issues/oxidecomputer/hubris)](https://github.com/oxidecomputer/hubris/issues) |
| [R3]       | [![GitHub stars](https://img.shields.io/github/stars/r3-os/r3)](https://github.com/r3-os/r3/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/r3-os/r3)](https://github.com/r3-os/r3/network) | [![GitHub issues](https://img.shields.io/github/issues/r3-os/r3)](https://github.com/r3-os/r3/issues) |
| [RTIC]     | [![GitHub stars](https://img.shields.io/github/stars/rtic-rs/cortex-m-rtic)](https://github.com/rtic-rs/cortex-m-rtic/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/rtic-rs/cortex-m-rtic)](https://github.com/rtic-rs/cortex-m-rtic/network) | [![GitHub issues](https://img.shields.io/github/issues/rtic-rs/cortex-m-rtic)](https://github.com/rtic-rs/cortex-m-rtic/issues) |
| [Tock]     | [![GitHub stars](https://img.shields.io/github/stars/tock/tock)](https://github.com/tock/tock/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/tock/tock)](https://github.com/tock/tock/network) | [![GitHub issues](https://img.shields.io/github/issues/tock/tock)](https://github.com/tock/tock/issues) |
| [tornado]  | [![GitHub stars](https://img.shields.io/github/stars/HUST-OS/tornado-os)](https://github.com/HUST-OS/tornado-os/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/HUST-OS/tornado-os)](https://github.com/HUST-OS/tornado-os/network) | [![GitHub issues](https://img.shields.io/github/issues/HUST-OS/tornado-os)](https://github.com/HUST-OS/tornado-os/issues) |
| [zephyr]   | [![GitHub stars](https://img.shields.io/github/stars/tylerwhall/zephyr-rust)](https://github.com/tylerwhall/zephyr-rust/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/tylerwhall/zephyr-rust)](https://github.com/tylerwhall/zephyr-rust/network) | [![GitHub issues](https://img.shields.io/github/issues/tylerwhall/zephyr-rust)](https://github.com/tylerwhall/zephyr-rust/issues) |

[bern]: https://bern-rtos.org/
[drone]: https://www.drone-os.com/
[embassy]: https://github.com/embassy-rs/embassy
[freertos]: https://github.com/lobaro/FreeRTOS-rust
[hubris]: https://hubris.oxide.computer/
[R3]: https://crates.io/crates/r3
[RTIC]: https://rtic.rs/0.5/book/en/
[Tock]: https://www.tockos.org/
[tornado]: https://github.com/HUST-OS/tornado-os
[zephyr]: https://github.com/tylerwhall/zephyr-rust
