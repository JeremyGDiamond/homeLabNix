# simple.nix
with (import <nixpkgs> {});
  mkShell {
    buildInputs = [
      ripgrep
    ];
  }
