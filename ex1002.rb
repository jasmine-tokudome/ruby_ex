# -*- coding: utf-8 -*-
require 'date'

# 蔵書1冊分の蔵書データのクラスを作る
class BookInfo
  # BookInfoクラスのインスタンスを初期化する
  def initialize(title, author, page, publish_date)
    @title = title
    @author = author
    @page = page
    @publish_date = publish_date
  end

  # 最初に検討する属性に対しるアクセサを提供する
  attr_accessor :title, :author, :page, :publish_date

  # BookInfoクラスのインスタンスの文字列時表現を返す
  def to_s
    "#@title,#@author,#@page,#@publish_date"
  end

  # 蔵書データを書式を付けて出力する操作を追加する
  # 項目の区切り文字を引数に指定する事ができる
  # 引数を省略した場合は改行を栗木文字にする
  def toFormattedString(sep = "\n")
    "書籍名: #{@title}#{sep}著者名: #{@author}#{sep}ページ数: #{@page}ページ#{sep}発刊日: #{@publish_date}#{sep}"
  end
end

# BookInfoクラスのインスタンスを作成し、book_intoという名前をつける
book_info = BookInfo.new(
  "実践アジャイル ソフトウェア開発法とプロジェクト管理",
  "山田 正樹",
  248,
  Date.new(2005, 1, 25)
)

# book_infoのデータ文字列表現を得る
puts book_info.to_s

# book_infoのデータ文字列表現を得る
puts book_info.toFormattedString
puts book_info.toFormattedString("/")
