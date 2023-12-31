# -*- coding: utf-8 -*-
# 新しいハッシュを作る
friends = {
  :shin => "Shin Kuboaki",
  :shinichirou => "Shinichirou Ooba",
  :shingo => "Shingo Katori"
}

# ハッシュに要素を追加する
friends[ :shinsaku ] = "Shinsaku Takasugi"

# ハッシュの要素を検索する(見つかるはず)
puts friends.include?( :shinsaku)
puts friends[:shinsaku]

friends.delete( :shinsaku )

if friends.include?( :shinsaku) then
  puts friends[:shinsaku]
else
  puts "みつかりません"
end
