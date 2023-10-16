{ pkgs }: {
  deps = [
    pkgs.python310
    pkgs.zig
    pkgs.go
    pkgs.nodejs
    pkgs.swift
    pkgs.rustup
    pkgs.lua
    pkgs.kotlin
    pkgs.scala
    pkgs.dart_stable
    pkgs.julia-stable-bin
    pkgs.dotnet-sdk
    pkgs.R
    pkgs.adoptopenjdk-bin
    pkgs.ruby_3_1
    pkgs.rubyPackages_3_1.solargraph
  ];
}