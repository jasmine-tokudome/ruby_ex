# -*- coding: utf-8 -*-
require 'pstore'

# 文字列を作成
juice = "orange juice"
# 配列にデータを作成
fruits = ["apple","banana","cherry","fig","grape"]

# PSstoreデータベースを作成する
db = PStore.new('fruitdb')

# PStoreにデータを書き込む
db.transaction do
  #文字列をPSストアに保存する
  db["drink"] = juice
  # 配列をPStoreに保存する
  db["fruits"] = fruits
end

# PStoreからデータを読み込んで表示する
db.transaction(true) do
  puts "drink: #{db["drink"]}"
  puts "fruits: #{db["fruits"].join(",")}"
end