# hello-world-ecs

ステップ,場所,やっていること
1. 開発,ローカル,index.html を修正し、git push する。
2. ビルド,GitHub,Dockerイメージを作成。名前（タグ）を付けて ECR へプッシュ。
3. 書き換え,GitHub,task-definition.json 内の image 欄を「手順2のURL」に書き換える。
4. 登録 & 更新,ココ！,書き換えたJSONをAWSに送信。AWS側で**新しいタスク定義（リビジョン）**が作成される。
5. 入替,AWS (ECS),ECSサービスが「新しいタスク定義ができた！」と気づき、古いコンテナを捨てて、新しいコンテナを起動する。
