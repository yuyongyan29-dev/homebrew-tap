# Homebrew tap

Bree 的官方 Homebrew 安装定义。程序免费提供，源码采用 [GPL-3.0](https://github.com/yuyongyan29-dev/Bree/blob/main/LICENSE)。

```sh
brew install --cask yuyongyan29-dev/tap/bree
bree
```

当前提供原生 Apple Silicon macOS 程序，下载预编译文件并校验 SHA-256，无需 Rust、Cargo、Python 或 Node.js。

版本、验证范围、签名状态及其他安装方式见 [Bree](https://github.com/yuyongyan29-dev/Bree)；遇到程序问题请使用 [Bree Issues](https://github.com/yuyongyan29-dev/Bree/issues)。

升级与卸载：

```sh
brew update
brew upgrade --cask yuyongyan29-dev/tap/bree
brew uninstall --cask bree
```
