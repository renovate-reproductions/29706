{
  inputs = {
    dotfiles.url = "github:ipetkov/dotfiles";
    nixpkgs.follows = "dotfiles/nixpkgs";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { ... }: { };
}
