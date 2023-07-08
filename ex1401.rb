# -*- coding: utf-8 -*-
require 'date'

# 蔵書一冊分の蔵書データのクラスを作る
class BookInfo
    # BookInfoクラスのインスタンスを初期化する
    def initialize( title, author, page, publish_date )
        @title = title
        @author = author
        @page = page
        @publish_date = publish_date
    end

    # 最初に検討する属性に対するアクセサを提供する
    attr_accessor :title, :author, :page, :publish_date

    # BookInfoクラスのインスタンス文字列表現を返す
    def to_s
        "#@title, #@author, #@page, #@publish_date"
    end

    # 蔵書データを書式をつけて出力する操作を追加する
    # 項目の区切り文字を引数に指定することができる
    # 引数を省略した場合は改行を区切り文字にする
    def toFormattedString( sep = "\n" )
        "書籍名: #{@title}#{sep}著者名: #{@author}#{sep}ページ数: #{@page}ページ#{sep}発刊日: #{@publish_date}#{sep}"
    end
end

BookInfoManagerを定義する
class BookInfoManager
    def initialize
        @book_info = {}
    end

    # 蔵書データをセットアップする
    def setUp
# 複数冊の蔵書データを登録する 
book_infos = Hash.new
book_infos["Yamada2005"] = BookInfo.new(
    "実践アジャイル　ソフトウェア開発法とプロジェクト管理",
    "山田　正樹",
    248,
    Date.new( 2005, 1, 25))
book_infos["Ooba2006"] = BookInfo.new(
    "入門LEGO MINDSTORMS NXT レゴブロックで作る動くロボット",
    "大庭 紳一郎",
    164,
    Date.new( 2006, 12, 23))


