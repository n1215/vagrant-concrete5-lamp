Vagrant template and Ansible playbook for concrete5 5.7 on LAMP 
==============================================================
concrete5 5.7を動かす環境を構築するためのVagrantfileとAnsibleのPlaybookです。


構成
----
* CentOS 6.6 (64bit)
* Apache 2.2
* PHP5.6 
* MySQL5.6

要件
----
### VirtualBox
 [VirtualBoxのダウンロード](https://www.virtualbox.org/wiki/Downloads)

### Vagrant
[Vagrantのダウンロード](https://www.vagrantup.com/downloads.html)

### Git
* Windows → [Git for Windows](https://msysgit.github.io/) (msysgit)
* Mac, Linux → 適宜パッケージ管理ツールなどでインストール

### ターミナル
* Windows → 上記 Git for Windows に付属する Git Bash がお勧めです
* Mac, Linux → 標準のターミナル

※Windows上で直接Ansibleを動かすのは面倒なので、ゲストマシンにAnsibleをインストールし、ローカル実行するようになっています。


利用方法
--------
ターミナルで下記コマンドを実行

    > git clone https://github.com/n1215/vagrant-concrete5-lamp
    > cd vagrant-concrete5-lamp
    > vagrant up

http://192.168.33.10 にアクセス  
concrete5自体のインストールは手動でどうぞ

MySQL設定
-----------
データベース名: concrete5
ホスト: localhost
ユーザー名： concrete5_user
パスワード： concrete5

※rootユーザのパスワードはroot  
※各設定は ansible/group-vars/allから変更可能