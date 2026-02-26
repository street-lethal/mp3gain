# mp3gain

## 初期化

```sh
./scripts/init.sh
```

## 準備

対象ファイル(*.mp3)を `shared/` に配置

## 解析

```sh
./scripts/analyze.sh
```

## 単一ファイルの調整

* `.env` ファイルの `FILENAME` `GAIN_DIFF` を設定
  * `FILENAME` にファイル名を指定。拡張子(.mp3)は不要
  * `GAIN_DIFF` は標準の89dBからの差分を指定。
    * (例) 標準の89dBに対し、さらに +6dB（計95dB）底上げする場合は `6.0` を指定
    * 基本的には 1.5 の倍数を指定する。 1.5 の倍数でない値の場合は最も近い値が採用される。

```sh
./scripts/analyze.sh
```

## アルバム全体の音量バランスを維持したまま調整

* `.env` ファイルの `GAIN_DIFF` を設定
  * 設定方法は上記と同様

```sh
./scripts/album.sh
```
