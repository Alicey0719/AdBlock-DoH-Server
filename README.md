# AdGuard DoH Server

AdGuardHomeをHTTP越しに使えるようにします。
AdGuardHomeにはDNS over HTTPSの機能が標準で搭載されていますが、リバースプロキシ越しにアクセスするには不便であったためPython(doh-httpproxy)でDNS→HTTPの処理を行っています。

## アクセス先
- host:20012  
AdGuardHome管理画面
- host:80/dns-query
HTTP越しのアクセス

## 各ファイルの説明
- docker-compose.yml  
dockerで起動するものの構成をまとめています。
- start.sh  
'docker-compose up -d'とDockerネットワークの作成を行います。基本的にこのコマンドで起動することができます。
- stop.sh  
'docker-compose down'を行います。
- remove.sh  
'docker-compose down --rmi all --volumes --remove-orphans'とDockerネットワークの削除を行います。
- adgディレクトリ
AdGuardHomeの構成ファイルなどが作成されます。
- doh-serverディレクトリ  
doh-serverのDockerfileがあります。

# 注意事項
基本的にサポートはしません。致命的な欠陥等ありましたらTwitter等でお知らせください。  
FirefoxやChrome等でアクセスする場合は別途nginx等で中継し、HTTPSの状態にしないとアクセスできないと思われます。