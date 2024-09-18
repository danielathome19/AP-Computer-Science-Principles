# Install all programming language compilers/interpreters for CSP
sudo apt update -y && sudo apt-get install apt-transport-https && wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg  --dearmor -o /usr/share/keyrings/dart.gpg && echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list && sudo apt update -y && sudo apt install -y python3 default-jdk mono-complete g++ gcc ruby fsharp javascript-common openjdk-11-jdk golang scala lua5.3 swift dart rustc julia r-base perl elixir dotnet-sdk-8.0
# Install kotlin
curl -s "https://get.sdkman.io" | bash; source "$HOME/.sdkman/bin/sdkman-init.sh"; sdk install kotlin
# Install swift
wget https://download.swift.org/swift-5.10.1-release/ubuntu2004/swift-5.10.1-RELEASE/swift-5.10.1-RELEASE-ubuntu20.04.tar.gz
tar xzf swift*.tar.gz
sudo mv swift-5*04 /usr/local/swift
export PATH=/usr/local/swift/usr/bin:"${PATH}"
source ~/.bashrc
rm swift*.tar.gz
