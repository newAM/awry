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

| Name       | Native Rust | Compiles on stable | 1.0 maturity | Language(s) |
|------------|-------------|--------------------|--------------|-------------|
| [bern]     | ✅          | ❌                 | ❌           | en          |
| [drone]    | ✅          | ❌                 | ❌           | en          |
| [embassy]  | ✅          | ❌                 | ❌           | en          |
| [freertos] | ❌          | Partial            | ❌           | en          |
| [hubris]   | ✅          | ❌                 | ❌           | en          |
| [R3]       | ✅          | ❌                 | ❌           | en          |
| [RTIC]     | ✅          | ✅                 | ✅           | en, ru      |
| [Tock]     | ✅          | ❌                 | ❌           | en          |
| [tornado]  | ✅          | ❌                 | ❌           | zh          |
| [zephyr]   | ❌          | ✅                 | ❌           | en          |

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
