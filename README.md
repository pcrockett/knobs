# knobs

interactively select and execute scripts.

example: when i want my laptop to go into a low power mode, i disable a lot of things.
but i disable _different_ things depending on the context:

- **on an airplane?** disable wifi.
- **in a coffee shop?** leave wifi enabled.
- **writing prose?** stop the docker daemon.
- **writing code?** leave docker running.

etc.

`knobs` gives me the convenience of automation, but allows me to selectively tweak some
"knobs" a little differently every time.

## knobsets

scripts are organized in directories called "knobsets." for example, i have two
knobsets: "lowpower" and "fullpower." they are organized like this:

```
~/.config/knobs
├── fullpower
│   ├── 40_tlp_balanced.sh
│   ├── 50_docker_up.sh
│   ├── 50_ethernet_up.sh
│   ├── 50_pueue_up.sh
│   ├── 60_tailscale_up.sh
│   └── 70_rclone_archive_up.sh
└── lowpower
    ├── 40_tailscale_down.sh
    ├── 50_docker_down.sh
    ├── 50_ethernet_down.sh
    ├── 50_pueue_down.sh
    ├── 50_rclone_archive_down.sh
    └── 60_tlp_powersave.sh
```

so i can execute `knobs run lowpower` and then interactively choose which of the
`*_down.sh` scripts to run.

## dependencies

- `knobs` is written in [nushell](https://www.nushell.sh/).
- it uses [fzf](https://junegunn.github.io/fzf/) for the interactive interface.
- it uses [bat](https://github.com/sharkdp/bat) to display the script preview window.

all must be installed for `knobs` to work.

## getting started

- install the dependencies
- download [the script](./knobs)
- make it executable (`chmod +x knobs`) and place is somewhere on your `$PATH`
- run `knobs init`
