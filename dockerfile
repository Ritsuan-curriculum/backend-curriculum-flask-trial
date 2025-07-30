# ベースイメージ
FROM python:3.11-slim

# 作業ディレクトリの作成
WORKDIR /app

# 依存関係ファイルのコピーとインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのコピー
COPY . .

# ポート解放
EXPOSE 5000

# Flaskアプリを起動
CMD ["python", "app.py"]
