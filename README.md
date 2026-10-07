# Homebrew tap

Bree 的官方 Homebrew 安装定义。程序免费提供，源码采用 [GPL-3.0](https://github.com/yuyongyan29-dev/Bree/blob/main/LICENSE)。

```sh
brew install yuyongyan29-dev/tap/bree
bree
```

当前为 Apple Silicon、macOS 27 提供预编译 Homebrew bottle，校验 SHA-256 后安装，无需 Rust、Cargo、Python 或 Node.js。匹配 bottle 的标准安装无需 Xcode 命令行工具；其他系统版本尚未验证。

版本、验证范围、签名状态及其他安装方式见 [Bree](https://github.com/yuyongyan29-dev/Bree)；遇到程序问题请使用 [Bree Issues](https://github.com/yuyongyan29-dev/Bree/issues)。

升级与卸载：

```sh
brew update
brew upgrade yuyongyan29-dev/tap/bree
brew uninstall bree
```
