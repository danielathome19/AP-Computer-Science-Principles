{ pkgs }: {
  deps = [
    pkgs.python39Full
    pkgs.ruby_3_1
    pkgs.rubyPackages_3_1.solargraph
  ];
}