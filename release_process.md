# Release Process

This document contains a process that should be completed for every Grin release.

- [1. Grin release](#1.-grin-release)
- [2. Grin-Wallet release](#2.-grin-wallet-release)
- [3. Update Brew Formulas](#3.-update-brew-formulas)
- [4. Update Snapcraft](#4.-update-snapcraft)
- [5. Update Grin Website](#5.-update-grin-website)
- [6. Publish a Message on Grin-Forum](#6.-publish-a-message-on-grin-forum)

## 1. Grin release

### 1.1. Update Grin Cargo.toml

Replace in every `Cargo.toml` file the version with the new release version.

```toml
[package]
...
version = "X.X.X"
```

Commit the files.

### 1.2. Tag Grin

```shell
git tag vX.X.X
git push origin vX.X.X
```

This will trigger the CI and automatically do the new release.

### 1.3. Update Crates.io release

On every submodule first then on the main package:

```bash
cargo publish
```

For example, on Grin v4.0.0, the uploading order for `cargo publish` was:

1. `util`
1. `keychain`
1. `core`
1. `store`
1. `chain`
1. `pool`
1. `p2p`
1. `api`
1. `servers`
1. `config`
1. `grin`

### 1.4. Branching

Grin follows [semantic versioning 2.0](https://semver.org).
Patches are released from the maintenance branch and as such do not need a new branch. **Hence for patch only follow step 1.4.1.**

If it's a major or minor release you'll need to create a new "maintenance" branch and update the current master branch.

e.g. if we just released Grin v4.0.0 we will need to create a new branch named `current/v4.0.x` for patch on v4.0.0.

```bash
git checkout -b current/vX.X.X
git push --set-upstream origin current/vX.X.X
```

#### 1.4.1. Alpha Tagging on Maintenance Branch

On the **maintenance** branch `current/vX.X.X`, replace in every `Cargo.toml` file the version with the correct version and alpha name.

```toml
[package]
...
version = "X.X.X-alpha.1"
```

#### 1.4.2. Alpha Tagging on Master Branch

On the **master** branch, replace in every `Cargo.toml` file the version with the correct version and alpha name.

```toml
[package]
...
version = "X.X
```

e.g. This PR for the master branch [(https://github.com/mimblewimble/grin/pull/3390](https://github.com/mimblewimble/grin/pull/3390).

## 2. Grin-Wallet Release

### 2.1. Update Grin Cargo.toml

Replace in every `Cargo.toml` file the version with the new release version.

```toml
[package]
...
version = "X.X.X"
```

Commit the files.

### 2.2. Tag Grin

```bash
git tag vX.X.X
git push origin vX.X.X
```

This will trigger the CI and automatically do the new release.

### 2.3. Update Crates.io release

On every submodule first then on the main package:

```bash
cargo publish
```

### 2.4. Branching

Grin-Wallet follows [semantic versioning 2.0](https://semver.org).
Patches are released from the maintenance branch and as such do not need a new branch. **Hence for patch only follow step 1.4.1.**

If it's a major or minor release you'll need to create a new "maintenance" branch and update the current master branch.

e.g. if we just released Grin-Wallet v4.0.0 we will need to create a new branch named `current/v4.0.x` for patch on v4.0.0.

```bash
git checkout -b current/vX.X.X
git push --set-upstream origin current/vX.X.X
```

#### 2.4.1. Alpha Tagging on Maintenance Branch

On the **maintenance** branch "current/vX.X.X` replace in every `Cargo.toml` file the version with the correct version and alpha name.

```toml
[package]
...
version = "X.X.X-alpha.1"
```

#### 2.4.2. Alpha Tagging on Master Branch

On the **master** branch replace in every `Cargo.toml` file the version with the correct version and alpha name.

```toml
[package]
...
version = "X.X
```

e.g. This PR for the master branch [(https://github.com/mimblewimble/grin/pull/3390](https://github.com/mimblewimble/grin/pull/3390).

## 3. Update Brew Formulas

On macOS with [homebrew](https://brew.sh) installed:

```bash
brew bump-formula-pr grin --url=https://github.com/mimblewimble/grin/archive/vx.x.x.tar.gz

brew bump-formula-pr grin-wallet --url=https://github.com/mimblewimble/grin-wallet/archive/vx.x.x.tar.gz
```

## 4. Update Snapcraft

Update the file `snapcraft.yml` in [mimblewimble/packaging](https://github.com/mimblewimble/packaging)

Example PR:

- [https://github.com/mimblewimble/packaging/pull/3](https://github.com/mimblewimble/packaging/pull/3).

Then, in the same directory type:

```shell
snapcraft

...

 snapcraft push --release=stable grin_vX.X.X_amd64.snap
```

## 5. Update Grin Website

Update [mimblewimble/site](https://github.com/mimblewimble/site) download and index pages. Do not forget to update the checksums.

Examples PR:

- [https://github.com/mimblewimble/site/pull/189](https://github.com/mimblewimble/site/pull/189)
- [https://github.com/mimblewimble/site/pull/190](https://github.com/mimblewimble/site/pull/190)

Publish a new blog post on the website to notify about the new update such as this one:
[https://github.com/mimblewimble/site/pull/202](https://github.com/mimblewimble/site/pull/202)

## 6. Publish a Message on Grin-Forum

Create a message on forum.grin.mw in the announcements  category such as this one [https://forum.grin.mw/t/grin-grin-wallet-4-0-0-released](https://forum.grin.mw/t/grin-grin-wallet-4-0-0-released).
