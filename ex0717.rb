# -*- coding: utf-8 -*-
# Arrayクラスのeachメソッドを使う

fruits_prices = [ ["apple",200], ["orange",100], ["melon",600] ]

fruits_prices.each { |fp|
    puts "名前：#{fp[0]},値段：#{fp[1]}円"
}

sum = 0
fruits_prices.each { |fp| sum += fp[1] }
puts "1個づつ買うと全部で#{sum}円です。"