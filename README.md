# ET.SOFT
Developement tools.

## SOFTWARE
- [BC.3.3.12.exe](https://eframework-cn.github.io/ET.SOFT/BC.3.3.12.exe): compare tool(free edition).
- [NPP.8.4.2.exe](https://eframework-cn.github.io/ET.SOFT/NPP.8.4.2.exe): notepad++
- [SetEnv.cmd](https://eframework-cn.github.io/ET.SOFT/SetEnv.cmd): easy to setting u3d development env for windows.
- [SSH Config](https://eframework-cn.github.io/ET.SOFT/config): ssh config template.
  - 放置于~/.ssh目录，如：C:/Users/$Name/.ssh
  - 配置说明
  ```
    Host # 主机别名，多账户可前缀区分：xxxx.github.com
        HostName # 主机地址，如：github.com
        User # 用户名称：提交时显示的名称（重要）
        IdentityFile # 密钥文件，如：~/.ssh/$User@github.key
        HostkeyAlgorithms +ssh-rsa # 密钥类型
        PubkeyAcceptedAlgorithms +ssh-rsa #密钥类型
        ProxyCommand connect -S 127.0.0.1:10808 -a none %h %p # 代理服务，若仓库地址访问缓慢可使用
  ```
- git-crypt: git crypt tool for windows.
  - [Windows](https://eframework-cn.github.io/ET.SOFT/git-crypt.exe)：放置于C:/Windows/System32目录
  - Linux：todo
  - OSX：todo
- [post-checkout](https://eframework-cn.github.io/ET.SOFT/post-checkout): git hooks for post checkout.
  - Windows：放置于C:/Program Files/Git/mingw64/share/git-core/templates/hooks目录（视git安装目录而定）
  - Linux：todo
  - OSX：todo

## WARNING
- For internal dev only, do not distribute it, please contact admin@eframework.cn/[new issue](https://github.com/eframework-cn/ET.SOFT/issues) to delete.
- 仅供内部开发使用，请勿公开传播，若侵权请联系admin@eframework.cn/[新增议题](https://github.com/eframework-cn/ET.SOFT/issues)删除.