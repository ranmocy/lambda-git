# Git, OpenSSH & OpenSSL, Curl layer for AWS Lambda

A lightweight AWS Lambda layer that enables your functions to use native Git and SSH tools. Custom-compiled
for native Lambda runtimes using [docker-lambda](https://github.com/mLupine/docker-lambda) images. Supports
Lambdas using x86_64 and arm64 architectures.

This repo supports Git HTTPS operations (Git is compiled with curl).

## Contents
- [Git, OpenSSH & OpenSSL, Curl layer for AWS Lambda](#git-openssh--openssl-curl-layer-for-aws-lambda)
  - [Contents](#contents)
  - [Available layers](#available-layers)
  - [FAQ](#faq)
  - [License](#license)
  - [Author](#author)

## Available layers

Layers are available in all major AWS regions (excl. opt-in regions, AWS China and Gov). Keep in mind that
arm64 layers are only available in regions that support arm64-based Lambdas.

| Git Version | OpenSSH Version | OpenSSL Version | Curl Version | x86_64 layer ARN                                                    | arm64 layer ARN                                                    |
| ----------- | --------------- | --------------- | ------------ | ------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 2.38.0      | 8.8p1           | 1.1.1l          | 7.85.0       | `arn:aws:lambda:$AWS_REGION:507675645778:layer:lambda-git-x86_64:1` | `arn:aws:lambda:$AWS_REGION:507675645778:layer:lambda-git-arm64:1` |

Make sure to replace `$AWS_REGION` with the AWS region you are using to deploy your Lambdas.

## FAQ
**How is this different than lambci/git-lambda-layer?**

This project is actively maintained. Moreover, this layer is custom-compiled for the specific Lambda runtime
environment, it weighs significantly less, uses up-to-date libraries and supports both x86_64 and arm64-based
Lambdas.

**How is this different than mLupine/lambda-git?**

This version supports HTTPS operations.

**I found a bug/I have a feature request**

Sure, just create an issue in this repository and I'll do my best to help.

## License
See [LICENSE](/LICENSE) for details.

## Author
* [Maciej Wilczyński](https://lupin.pl) \<m@lupin.pl\>.
* [Ranmocy](https://github.com/ranmocy)
