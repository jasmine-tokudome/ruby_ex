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

  def toFormattedString(sep = "\n")
    "書籍名: #{@title}#{sep}著者名: #{@author}#{sep}ページ数: #{@page}ページ#{sep}発刊日: #{@publish_date}#{sep}"
  end
end

class BookInfomanager
  def initialize
    @book_infos = {}
  end

  def setUp
    @book_infos["Yamada2005"] = BookInfo.new(
      "実践アジャイル ソフトウェア開発法とプロジェクト管理",
      "山田 正樹",
      248,
      Date.new(2005, 1, 25)
    )
    @book_infos["Ooba2006"] = BookInfo.new(
      "入門LEGO MINDSTORMS NEXT レゴブロックで作る動くロボット",
      "大庭 慎一郎",
      164,
      Date.new(2006, 12, 23)
    )
  end

  def addBookInfo
    book_info = BookInfo.new("", "", 0, Date.new)
    print "\n"
    print "キー: "
    key = gets.chomp
    print "書籍名: "
    book_info.title = gets.chomp
    print "著者名: "
    book_info.author = gets.chomp
    print "ページ数: "
    book_info.page = gets.chomp
    print "発刊年: "
    year = gets.chomp.to_i
    print "発刊月: "
    month = gets.chomp.to_i
    print "発刊日: "
    day = gets.chomp.to_i
    book_info.publish_date = Date.new(year, month, day)

    @book_infos[key] = book_info
  end

  def listAllBookInfos
    puts "\n---------------------------"
    @book_infos.each do |key, info|
      print info.toFormattedString
      puts "\n---------------------------"
    end
  end

  def run
    while true
      print "
1.蔵書データの登録
2.蔵書データの表示
9.修了
番号を選んでください(1,2,9):"

      num = gets.chomp
      case
      when '1' == num
        addBookInfo
      when '2' == num
        listAllBookInfos
      when '9' == num
        break;
      else
      end
    end
  end

end


  book_info_manager = BookInfomanager.new

  book_info_manager.setUp

  book_info_manager.run
