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

Many of these are not _true_ RTOS':
* Some are not real-time
* Some are more accurately described as execution frameworks instead of operating systems

| Name       | Native Rust | Compiles on stable | License                    | Language(s) |
|------------|-------------|--------------------|----------------------------|-------------|
| [bern]     | ✅          | ❌                 | MIT                        | en          |
| [drone]    | ✅          | ❌                 | MIT OR Apache-2.0          | en          |
| [embassy]  | ✅          | ❌                 | MIT OR Apache-2.0          | en          |
| [freertos] | ❌          | Partial            | MIT                        | en          |
| [hubris]   | ✅          | ❌                 | MPL-2.0                    | en          |
| [MnemOS]   | ✅          | ✅                 | MIT OR Apache-2.0          | en          |
| [R3]       | ✅          | ❌                 | MIT OR Apache-2.0          | en          |
| [RIOT-OS]  | ❌          | ✅                 | LGPL-2.1                   | en          |
| [RTIC]     | ✅          | ✅                 | MIT OR Apache-2.0          | en, ru      |
| [Tock]     | ✅          | ❌                 | MIT OR Apache-2.0          | en          |
| [tornado]  | ✅          | ❌                 | Apache-2.0 OR MulanPSL-2.0 | zh          |
| [zephyr]   | ❌          | ✅                 | Apache-2.0                 | en          |

### Stats

| Name       | Stars | Forks | Issues |
|------------|-------|-------|--------|
| [bern]     | N/A   | N/A   | N/A    |
| [drone]    | [![GitHub stars](https://img.shields.io/github/stars/drone-os/drone-core)](https://github.com/drone-os/drone-core/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/drone-os/drone-core)](https://github.com/drone-os/drone-core/network) | [![GitHub issues](https://img.shields.io/github/issues/drone-os/drone-core)](https://github.com/drone-os/drone-core/issues) |
| [embassy]  | [![GitHub stars](https://img.shields.io/github/stars/embassy-rs/embassy)](https://github.com/embassy-rs/embassy/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/embassy-rs/embassy)](https://github.com/embassy-rs/embassy/network) | [![GitHub issues](https://img.shields.io/github/issues/embassy-rs/embassy)](https://github.com/embassy-rs/embassy/issues) |
| [freertos] | [![GitHub stars](https://img.shields.io/github/stars/lobaro/FreeRTOS-rust)](https://github.com/lobaro/FreeRTOS-rust/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/lobaro/FreeRTOS-rust)](https://github.com/lobaro/FreeRTOS-rust/network) | [![GitHub issues](https://img.shields.io/github/issues/lobaro/FreeRTOS-rust)](https://github.com/lobaro/FreeRTOS-rust/issues) |
| [hubris]   | [![GitHub stars](https://img.shields.io/github/stars/oxidecomputer/hubris)](https://github.com/oxidecomputer/hubris/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/oxidecomputer/hubris)](https://github.com/oxidecomputer/hubris/network) | [![GitHub issues](https://img.shields.io/github/issues/oxidecomputer/hubris)](https://github.com/oxidecomputer/hubris/issues) |
| [MnemOS]   | [![GitHub stars](https://img.shields.io/github/stars/jamesmunns/pellegrino)](https://github.com/jamesmunns/pellegrino/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/jamesmunns/pellegrino)](https://github.com/jamesmunns/pellegrino/network) | [![GitHub issues](https://img.shields.io/github/issues/jamesmunns/pellegrino)](https://github.com/jamesmunns/pellegrino/issues) |
| [R3]       | [![GitHub stars](https://img.shields.io/github/stars/r3-os/r3)](https://github.com/r3-os/r3/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/r3-os/r3)](https://github.com/r3-os/r3/network) | [![GitHub issues](https://img.shields.io/github/issues/r3-os/r3)](https://github.com/r3-os/r3/issues) |
| [RIOT-OS]  | [![GitHub stars](https://img.shields.io/github/stars/RIOT-OS/RIOT)](https://github.com/RIOT-OS/RIOT/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/RIOT-OS/RIOT)](https://github.com/RIOT-OS/RIOT/network) | [![GitHub issues](https://img.shields.io/github/issues/RIOT-OS/RIOT)](https://github.com/RIOT-OS/RIOT/issues) |
| [RTIC]     | [![GitHub stars](https://img.shields.io/github/stars/rtic-rs/cortex-m-rtic)](https://github.com/rtic-rs/cortex-m-rtic/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/rtic-rs/cortex-m-rtic)](https://github.com/rtic-rs/cortex-m-rtic/network) | [![GitHub issues](https://img.shields.io/github/issues/rtic-rs/cortex-m-rtic)](https://github.com/rtic-rs/cortex-m-rtic/issues) |
| [Tock]     | [![GitHub stars](https://img.shields.io/github/stars/tock/tock)](https://github.com/tock/tock/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/tock/tock)](https://github.com/tock/tock/network) | [![GitHub issues](https://img.shields.io/github/issues/tock/tock)](https://github.com/tock/tock/issues) |
| [tornado]  | [![GitHub stars](https://img.shields.io/github/stars/HUST-OS/tornado-os)](https://github.com/HUST-OS/tornado-os/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/HUST-OS/tornado-os)](https://github.com/HUST-OS/tornado-os/network) | [![GitHub issues](https://img.shields.io/github/issues/HUST-OS/tornado-os)](https://github.com/HUST-OS/tornado-os/issues) |
| [zephyr]   | [![GitHub stars](https://img.shields.io/github/stars/tylerwhall/zephyr-rust)](https://github.com/tylerwhall/zephyr-rust/stargazers) | [![GitHub forks](https://img.shields.io/github/forks/tylerwhall/zephyr-rust)](https://github.com/tylerwhall/zephyr-rust/network) | [![GitHub issues](https://img.shields.io/github/issues/tylerwhall/zephyr-rust)](https://github.com/tylerwhall/zephyr-rust/issues) |

[bern]: https://bern-rtos.org/
[drone]: https://www.drone-os.com/
[embassy]: https://github.com/embassy-rs/embassy
[freertos]: https://github.com/lobaro/FreeRTOS-rust
[hubris]: https://hubris.oxide.computer/
[MnemOS]: https://jamesmunns.com/blog/mnemos-initial-release/
[R3]: https://crates.io/crates/r3
[RIOT-OS]: https://doc.riot-os.org/using-rust.html
[RTIC]: https://rtic.rs/1.0/book/en/
[Tock]: https://www.tockos.org/
[tornado]: https://github.com/HUST-OS/tornado-os
[zephyr]: https://github.com/tylerwhall/zephyr-rust
