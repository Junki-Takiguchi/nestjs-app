## package.jsonのパッケージ更新
1. `package.json`の`dependencies`を削除し初期化
```json
{
  "name": "learn-typescript",
  "version": "1.0.0",
  }
}
```

2. `make access`でコンテナに接続し、Dockerfile内に記載されてる各パッケージをインストールしなおす
```bash
例）
npm install typescript \
    @types/node \
    ts-node
```

3. 全てのパッケージをインストール後、`package.json`を再度確認し、`dependencies`のスコープ内に各パッケージが更新されてることを確認する
```json
{
  "name": "learn-typescript",
  "version": "1.0.0",
  "dependencies": {
    "@types/node": "^18.13.0",
    "@typescript-eslint/eslint-plugin": "^5.51.0",
    "@typescript-eslint/parser": "^5.51.0",
    "eslint": "^8.33.0",
    "eslint-config-airbnb-base": "^15.0.0",
    "eslint-config-airbnb-typescript": "^17.0.0",
    "eslint-plugin-import": "^2.27.5",
    "prettier": "^2.8.4",
    "ts-node": "^10.9.1",
    "typescript": "^4.9.5"
  }
}
```