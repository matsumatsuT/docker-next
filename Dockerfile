# コンテナで起動するのはできた
# なぜできたか調べる

# TODO: ローカルで変更があった時に反映されて欲しい



# next.jsをインストールできるためにversion20を使用
FROM node:20-alpine3.19

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# package.jsonとyarn.lockをコピー
COPY ./my-app/package*.json ./my-app/yarn.lock ./


# 依存関係をインストール
RUN yarn install

# アプリケーションのソースコードをコピー
# COPY ./my-app/ .

# アプリケーションを実行
CMD ["yarn", "dev"]


