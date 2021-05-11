# docker build に渡す --build-arg BUILDKIT_INLINE_CACHE=1
ARG BUILDKIT_INLINE_CACHE
ENV BUILDKIT_INLINE_CACHE ${BUILDKIT_INLINE_CACHE:-0}

# コードを実行するコンテナイメージ
FROM alpine:3.10

# アクションのリポジトリからコードファイルをコンテナのファイルシステムパス `/`にコピー
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]