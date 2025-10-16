# wifitui 🛜✨

`wifitui` is a fast, featureful, and friendly replacement for `nmtui`.

<img width="814.5" height="369" alt="image" src="https://github.com/user-attachments/assets/2a49cc88-4ce0-4532-b7ef-e64d7c3dc888" />

## Features

- [x] **Works with NetworkManager over dbus**
- [x] Show all saved and visible networks
- [x] Fast fuzzy search (`/` to start filtering)
- [x] Show passphrases of known networks
- [x] QR code for sharing a known network with your phone
- [x] Join new and hidden networks (`c` and `n` keys)
- [x] Initiate a scan (`s` key)
- [x] Multiple backends (experimental `iwd` and darwin support, untested)
- [x] Non-interactive modes (`list` `show` `connect` commands)
- [x] Bring your own color scheme and theme (`--theme=./theme.toml` or set `WIFITUI_THEME=./theme.toml`)

More things I'd like to do:
- [ ] More stats about the current network
- [ ] Maybe a better name?

## Getting Started with Nix

This project is packaged for Nix. You can build and install it using the provided Nix expression.

### Building and Installing

To build and install `wifitui`, you first need to update the `sha256` and `vendorHash` in `nix/default.nix`.

1.  Run `nix-build nix`. This command will fail, but it will output the correct `sha256` hash for the source code.
2.  Copy the `sha256` hash into the `sha256` field in `nix/default.nix`.
3.  Run `nix-build nix` again. This time, it will fail with a message about the `vendorHash`.
4.  Copy the `vendorHash` into the `vendorHash` field in `nix/default.nix`.
5.  Run `nix-build nix` one more time. This will build the package and create a `result` symlink in the current directory.

To install the package into your Nix profile, run:

```shell
nix-env -f nix -i
```

### Development

You can use `nix-shell` to create a development environment with all the necessary dependencies.

```shell
nix-shell nix
```

This will drop you into a shell where you can run `go build` to build the project.

## Why not `nmtui` or `impala`?

Each has features the other lacks: `nmtui` can reveal passphrases but can't trigger a rescan, `impala` can rescan but can't manage saved networks (partly due to being iwd-exclusive), etc. I used both for a while, but I just wanted one tool that does everything, plus sort by recency, fuzzy filtering, QR code for sharing the network, support multiple backends (nm and iwd), and more.

## Acknowledgement

- TUI powered by [bubbletea](https://github.com/charmbracelet/bubbletea).
- Inspired by [impala](https://github.com/pythops/impala).
- Early versions made possible by Neovim, LSP, Gemini 2.5 Pro, Jules, Github code search, Google, Go, water, oxygen, my Framework laptop running NixOS, the public goods built by socialism, the economies scaled by capitalism, the lands stolen by imperialism, and everything else.

## License

MIT