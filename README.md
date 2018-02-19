# Gaee [![GeekApk Good](https://img.shields.io/badge/GeekApk-v0好耶-green.svg?style=flat-square)](https://geekapk.org) [![APIs](https://img.shields.io/badge/Doc-APIs-yellow.svg?style=flat-square)](https://github.com/geekapk/GeekApkR/blob/master/API.md) [![Ruby](https://img.shields.io/badge/Ruby-1.9+-brown.svg?style=flat-square)](https://ruby-lang.org)

好耶，是 [GeekApk](https://github.com/geekapk/GeekApkR) CLI 客户端！😗

Wow, 还有 __Ruby__ GeekApkR API 交互库!

Gaee 是 [GeekApkR API](https://github.com/geekapk/GeekApkR/blob/master/API.md) 的 Ruby ~~面向模型~~客户端 和 构建基于 Ruby 的 GeekApk 应用程序的库

Gaee 库 的具体食用方法请查看 `ri` 文档或者 [wiki](https://github.com/geekapk/Gaee/wiki)

`rake --tasks` 来查看所有可用 task

*注：`rake model` 可以查看所有模型支持的方法*

## 依赖关系

+ Ruby _1.9+_ 但是，测试的环境是 `ruby 2.6.0dev (2018-02-18 trunk 62469) [x86_64-linux]`

+ `gem 'json'` 因为 API 交换信息是使用 `JSON` 序列化的

+ `gem 'em-websocket'` _可选的_ 如果需要使用可能的即时推送频道的话

+ `logger` 使用它记录一些日志

+ `open-uri` HTTP(S) 交互

+ `gem 和 rake` _构建依赖_ 包管理和构建工具

## 模型们

## 许可证

```plain
The MIT License (MIT)
Copyright (c) 2018 duangsuse

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

## CLI 用途
