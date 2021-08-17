# CloudflareSSHScript
이 스크립트는 Cloudflare의 프록시기능을 켜두었을때 도메인을 통한 SSH접속이 어려워 cloudflare API를 통해 A레코드의 IP를 가져와 IP를 통해 서버에 접속하는 스크립트이다.

사용방법
1. cloudflare를 사용중인 Domain, cloudflare 계정(E-mail), cloudflare API Key(Global API Key), IP를 가져올 A레코드를 기입한다
2. SSH접속을 할 계정(사용자이름)과 접속 포트(따로 지정하지 않았다면 22)를 입력한다
3. 스크립트를 실행한다

-----------------------------------------------------------------------------------------------------------------------------------
How to use

1. Write your Domain, cloudflare Account(E-mail), cloudflare API Key(Global API Key), A Record for get IP
2. Write your username for connect SSH and port number(defalut is 22)
3. run script
