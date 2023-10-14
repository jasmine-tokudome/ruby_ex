# -*- coding: utf-8 -*-
require 'pstore'

# PStoreデータベースをオープンにする
db = PStore.new('fruitdb')

# PStoreが読み込みモードのときに書き込もうとするとエラーになる
db.transaction(true) do
  db["drink"] = "grape juice"
end
