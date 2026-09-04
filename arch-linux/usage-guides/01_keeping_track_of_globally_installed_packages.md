# Keeping track of globally installed packages
_______________________________________________________________________________

To view a list of packages that you explicitly installed using `pacman`,
run this command:
```bash
pacman -Qqen
```
_______________________________________________________________________________

To view a list of foreign packages that you explicitly installed,
use this command:
```bash
pacman -Qqem
```
_______________________________________________________________________________

To view a list of globally installed Rust packages
```bash
cargo install --list
```
_______________________________________________________________________________

To view a list of globally installed Python packages
```bash
uv tool list
```
_______________________________________________________________________________

To view a list of globally installed Go packages
```bash
ls -1 "$(go env GOPATH)/bin"
```
_______________________________________________________________________________

To view a list of globally installed JavaScript / TypeScript packages

If you use `npm`
```bash
npm ls -g
```

If you use `nub`
```bash
nub ls -g
```

If you use `bun`
```bash
bun pm ls -g
```

If you use `deno`
```bash
ls $HOME/.deno/bin
```
_______________________________________________________________________________
