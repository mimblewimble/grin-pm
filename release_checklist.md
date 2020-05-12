# Release Checklist

This document contains a checklist that should be completed for every Grin release.

- [ ] [1. Grin release](#1.-grin-release)
- [ ] [2. Grin-Wallet release](#2.-grin-wallet-release)
- [ ] [3. Update Brew Formulas](#3.-update-brew-formulas)
- [ ] [4. Update Snapcraft](#4.-update-snapcraft)
- [ ] [5. Update Grin Website](#5.-update-grin-website)


### 1. Grin release

#### 1.1. Update Grin Cargo.toml

Replace in every `Cargo.toml` files the version with the correct version.

```toml
[package]
....
version = "X.X.X"
```

#### 1.2. Tag Grin

```shell
git tag vX.X.X
git push origin vX.X.X
```

This will trigger the CI and automatically do the new release.

#### 1.3. Update Crates.io release

```
somecommand
```

### 2. Grin-Wallet Release

#### 2.1. Update Grin Cargo.toml

Replace in every `Cargo.toml` files the version with the correct version.

```toml
[package]
....
version = "X.X.X"
```

#### 2.2. Tag Grin

```shell
git tag vX.X.X
git push origin vX.X.X
```

This will trigger the CI and automatically do the new release.

#### 2.3. Update Crates.io release

```
somecommand
```

### 3. Update Brew Formulas

On macOS with [homebrew](https://brew.sh) installed:

```shell
brew bump-formula-pr grin --url=https://github.com/mimblewimble/grin/archive/vx.x.x.tar.gz

brew bump-formula-pr grin-wallet --url=https://github.com/mimblewimble/grin-wallet/archive/vx.x.x.tar.gz
```

### 4. Update Snapcraft

Update the file `snapcraft.yml` in [mimblewimble/packaging](https://github.com/mimblewimble/packaging) 

Example PR:
- https://github.com/mimblewimble/packaging/pull/3.

Then, in the same directory type:

```shell
snapcraft

...

 snapcraft push --release=stable grin_vX.X.X_amd64.snap
```


### 5. Update Grin Website

Update [mimblewimble/site](https://github.com/mimblewimble/site) download and index pages. Do not forget to update the checksums.

Examples PR:
- https://github.com/mimblewimble/site/pull/189 
- https://github.com/mimblewimble/site/pull/190)

