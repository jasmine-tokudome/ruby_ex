# -*- coding: utf-8 -*-
require 'rubygems'
require 'dbi'

dbh = DBI.connect('DBI:SQLite3:fruits01.db')

dbh.do("insert into products values (
1,
'りんご',
'別名「雪押したと呼ばれる國光です。',
'/images/kokkou.jpg',
'300',
'2009-02-01 09:15:00'
);")

dbh.do("insert into products values(
2,
'マンゴー',
'宮崎名産「太陽のたまご」です。',
'/images/mango.jpg,
'2000',
'2009-03-20 00:00:00'
);")

puts "2 records inserted."

dbh.disconnect
