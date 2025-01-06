# iOSSecuritySuiteBypass

<p>This is a tweak that bypasses the iOSSecuritySuite Swift library used by some app store apps to detect jailbreaks.</p>
<p>It is an extremely basic tweak but it works for what it is.</p>

## install
- Follow this [tutorial](https://theos.dev/docs/installation-linux) to install **Theos**.

## compile
- Automatic installation of the .deb via SSH over Wi-Fi onto the device:

```shell
make package install THEOS_PACKAGE_SCHEME=rootless THEOS_DEVICE_IP=<ip_of_IP>
```
