# Are We RTOS Yet?

_The state of Real Time Operating Systems in Rust._

## Status

We are not RTOS, yet.

There are only a handful of RTOS' written in native rust, and of the few that
exist even fewer compile on rust stable.


## Ecosystem

| Name       | Native Rust | Compiles on stable | 1.0 maturity |
|------------|-------------|--------------------|--------------|
| [RTIC]     | 🗸           | 🗸                  | ❌           |
| [R3]       | 🗸           | ❌                 | ❌           |
| [drone]    | 🗸           | ❌                 | ❌           |
| [Tock]     | 🗸           | ❌                 | ❌           |
| [zephyr]   | ❌          | 🗸                  | ❌           |
| [freertos] | ❌          | Partial            | ❌           |

[RTIC]: https://rtic.rs/0.5/book/en/
[R3]: https://crates.io/crates/r3
[drone]: https://www.drone-os.com/
[Tock]: https://www.tockos.org/
[zephyr]: https://github.com/tylerwhall/zephyr-rust
[freertos]: https://github.com/lobaro/FreeRTOS-rust
