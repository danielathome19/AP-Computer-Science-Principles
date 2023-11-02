{ pkgs }: {
  deps = [
    pkgs.mono
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
  ];
}