# 29706/29721

## Current behavior

When `lockFileMaintenance` and the `nix` manager are enabled, `flake.lock` files
are only refreshed if `flake.nix` contains a string like
`"github:NixOS/nixpkgs/anything"` (including the double quotes.
`anything` can be replaced with any alpha-numeric string of characters).

## Expected behavior

I would expect that when `lockFileMaintenance` and the `nix` manager are
enabled, then `flake.lock` will always be refreshed, regardless of the
contents/inputs defined in `flake.nix`.

A workaround for this bug is to inject a dummy string to satisfy Renovate's
hard-coded regex:

```sh
echo '# Trick renovate into working: "github:NixOS/nixpkgs/nixpkgs-unstable"' >> flake.nix
```

## Link to the Renovate issue or Discussion

- https://github.com/renovatebot/renovate/discussions/29706
- https://github.com/renovatebot/renovate/issues/29721
