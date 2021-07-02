# Are We RTOS Yet?

_The state of Real Time Operating Systems in Rust._

## Status

We are not RTOS, yet.

There are only a handful of RTOS' written in native rust, and of the few that
exist even fewer compile on rust stable.

The future is bright for RTOS' in rust, the language has many features that
benefit RTOS development;
procedural macros allow [RTIC] to guarantee deadlock-free execution at compile
time, `no_std` executors allow [embassy] and [drone] to provide cooperative
scheduling with `await` syntax, and `const` functions allow [R3] to configure
the RTOS as much as possible at compile time.

## Ecosystem

| Name       | Native Rust | Compiles on stable | 1.0 maturity |
|------------|-------------|--------------------|--------------|
| [drone]    | ✅          | ❌                 | ❌           |
| [embassy]  | ✅          | ❌                 | ❌           |
| [freertos] | ❌          | Partial            | ❌           |
| [R3]       | ✅          | ❌                 | ❌           |
| [RTIC]     | ✅          | ✅                 | ❌           |
| [Tock]     | ✅          | ❌                 | ❌           |
| [zephyr]   | ❌          | ✅                 | ❌           |

[drone]: https://www.drone-os.com/
[embassy]: https://github.com/embassy-rs/embassy
[freertos]: https://github.com/lobaro/FreeRTOS-rust
[R3]: https://crates.io/crates/r3
[RTIC]: https://rtic.rs/0.5/book/en/
[Tock]: https://www.tockos.org/
[zephyr]: https://github.com/tylerwhall/zephyr-rust
