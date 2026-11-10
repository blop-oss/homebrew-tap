# blop-oss Homebrew tap

Homebrew formulae for [Blop](https://github.com/blop-oss/blop-app) packages.

## Install the Blop CLI

```sh
brew install blop-oss/tap/blop
```

The formula installs `@blopai/cli` from npm and depends on `node`. It is the
same package `npm install --global @blopai/cli` installs, so both give the same
`blop` binary and the same on-disk state.

## Upgrade

```sh
brew upgrade blop
```

`Formula/blop.rb` is bumped by `.github/workflows/bump-formula.yml` after each
`@blopai/cli` release on npm. To bump it by hand:

```sh
brew bump-formula-pr blop --tap=blop-oss/tap  # or edit url + sha256
```

## Other install paths

- npm: `npm install --global @blopai/cli`
- pnpm: `pnpm add --global @blopai/cli`
- bun: `bun add --global @blopai/cli`

Node.js 22 or newer is required in every case; the formula installs Homebrew's
`node`.
