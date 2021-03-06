# アプリ名
pet-home200829

# 概要
このアプリは里親になりたい人とペットをマッチングするアプリです。
検索機能を使うことで自分の好みに合うペットを探しやすくなっています。
また、このアプリには、ボランティアスタッフや保健所スタッフの思いを知ることができるページもあります。
そしてトップページ下部からは、里親にならなくても動物愛護に貢献できる行動例が紹介されています。

# 本番環境
https://pet-home200829.herokuapp.com/
-ログインアカウント メールアドレス:yamada@y, パスワード:yyy111

# 制作背景（意図）
このアプリを作ろうと思った理由は、殺処分ゼロに貢献できる活動をしたいと考えているからです。
小さい頃から動物が大好きで実家でも犬を飼っているのですが、飼い始めたことをきっかけに日本の動物愛護に関する問題を
知るようになりました。悲惨な現実を知り、殺処分というものを日本からなくすために自分にできる支援をしたい思いました。
将来的には自分で作った広告やアプリから情報を発信するなど、自分にできる形で役に立ちたいと考えています。

# DEMO

### TOPページ
https://gyazo.com/b871cbcbdf2eb3856b7ec89dc7240bab
### 新規登録画面
![user](https://gyazo.com/901bfe1518133eecf1e5d8d858805c15/raw)

### 犬一覧ページ（検索結果ページ）
![dogs](https://gyazo.com/c37e94270c7459eda87925132fe51ea5/raw)

### 詳細ページ
![show](https://gyazo.com/de2d806f8603b2b53fb376ead4a2512c/raw)

### 編集ページ
![edit](https://gyazo.com/650f5eb62679a62fb13de7eb31bcacb9/raw)

### 里親決定済ページ
![decide](https://gyazo.com/3d7e052fc5fa5b50775464415957e864/raw)
![decided](https://gyazo.com/2280728b9340543e62e2d09e1bd0babb/raw)

# 工夫したポイント
- ビューのレイアウト:
主に学習したのはバックエンドですが、見た目の印象も重視したかったので時間を費やして作成しました。
- 検索機能:
複数の投稿から利用者に合うペットを見つけやすくなるように検索機能をつけました。
- 一覧から削除される機能:
既に里親が決まった動物が一覧ページに反映されないようにしました。
- 里親決定後の詳細画面:
里親決定が完了したことが分かりやすいように工夫しました。

# 使用技術
### バックエンド
Ruby, Ruby on Rails

### フロントエンド
SCSS, HTML

### データベース
MySQL, SequelPro

### ソース管理
GitHub, GitHubDesktop

### エディタ
VScode

# 課題
- 小さい画面で見たときに、ビューが崩れてしまうこと
- javascriptを使えていないこと
- class名がわかりにくいこと
- herokuで動かすと重たいこと

# 実装予定の内容
- テストコードの作成

