# sh

## Usage

Executes each command listed in the Action's `args` via `sh -c`.

```
action "Shell" {
  uses = "actions/bin/sh@master"
  args = ["ls -ltr"]
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.