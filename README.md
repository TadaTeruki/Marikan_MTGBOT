
# 概要

MTG(ミーティング)をいつ生やせばいいかを知らせてくれるBotです。

## 使い方

このリポジトリをインストールしてください。  
必要なライブラリはこれでダウンロードしてください。

```shell
pip install -r requirements.txt
```

config.pyに、チャンネルのID, Discordのトークンを入れてください。
python3.11.3で動作確認しました。

## コマンド

mbot、コマンド名、引数の順で渡してください。

* (何も渡されない)  
ボットが起動しているとき、反応してくれます。
* show  
現在の設定、通知する日付を表示します。
* notify (日付) (内容)  
日付の時に通知します。
* mtg (日付) (内容) (何日前に通知するか、省略可能)  
mtgの予告をします。  
何日前に通知するか書かれていなかった場合、入力された日付の70, 40, 10日前に通知します。  
30日前、15日前に通知させる例

```text
mbot mtg 1/1 ミーティング 30 15
```

（注意）入力された日付が現在と近い場合、一部の通知は来年にされる可能性があります。  
例）現在は11/3日で、11/13日を入力した場合、70日前、40日前の分の通知は来年おこなわれます。  

* del (日付)  
入力された日付のアラームを削除します。
