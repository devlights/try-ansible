# try-ansible
This is a repository for learning Ansible using Gitpod. (for myself)

## How to run

```sh
# This is already done in Gitpod prebuild, so you don't need to do it normally.
$ docker-compose up -d              

# Enter the container for ansible
$ docker-compose exec ansible bash

root@xxxx# ansible-playbook -i apt/install/inventry.ini apt/install/playbook.yml
```

## 参考文献

- Ansible 実践ガイド 第３版 (ISBN: 9784295007647)

## メモ

従来のオンプレミス環境におけるインフラ構築作業では、エンジニアが手動で複雑なオペレーションを実施するのが当然だった。

- ハードウェアのセットアップ
- OSのチューニング
- ミドルウェアのセットアップ

などなど

一度構築したものを保守期限が切れるまで長期的に利用し続けるというスタイルを「塩漬け状態」という。

この運用スタイルが一般的であった。(今でも普通に存在するスタイル)

クラウドの登場もあり、インフラリリースを効率よく管理するために開発されたのが、システムオペレーションの自動化ツールである。

以下を解決するためである。

- クラウドリソースのライフサイクルが短く、頻繁に変更される膨大なリソースを手作業で構成管理することが非効率
- クラウドネイティブな設計によって、特定のベンダーに依存しない、移行性の高い運用が必要になった
- インフラリソースがソフトウェアによって抽象化されたため、動的にインフラを扱えるようになった
- 頻繁にシステムの構築と破棄を繰り返しても、同じクオリティのリソース提供が求められる

この恩恵はクラウド環境でなく、オンプレミスな環境でも受けることができる。


### DevOps の 定義

参考文献では、以下のように定義している。

> ビジネスやプロジェクトを成功させるために、組織文化とツールの両面を継続的に改善することで、ビジネスアジリティを向上させ、リスクを低減する活動


#### 例

運用者は独自の自動化ツールで構築作業を行い、出来上がった仮想マシンに対して、開発者は独自の手法でアプリケーションをデプロイする。
役割や責任を分断するという意味では効果的であるが、最終的に特定の人にしか管理できない自動化を生んでしまう。
これでは組織全体のメリットが半減してしまう。
こうした課題を一つずつ可視化し、改善することがDevOpsにおける組織文化の改善。


### Infrastructure as Code (コードによるインフラ構築)

