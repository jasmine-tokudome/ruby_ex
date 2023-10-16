# -*- coding: utf-8 -*-
require 'pstore'

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

class BookInfoManager
  def initialize(pstore_name)
    # PSTOREデータベースファイルを指定して初期化
    @db = PStore.new(pstore_name)
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

    @db.transaction do
      @db[key] = book_info
    end
  end

  def listAllBookInfos
    puts "\n---------------------------"
    @db.transaction(true) do
      @db.roots.each { |key|
        puts "キー: #{key}"
        print @db[key].toFormattedString
        puts "\n---------------------------"
      }
    end

    def delBookInfo
      print "\n"
      print "キーを指定してください:"
      key = gets.chomp
      @db.transaction do
        if @db.root?(key).toFormattedString
          print "\n削除しますか?(Y/yなら削除を実行します)"
          @db.delete(key)
          puts "\nデータベースから削除しました"
        end
      end
    end
  end


      def run
        while true
          print "
1.蔵書データの登録
2.蔵書データの表示
3.蔵書データの削除
9.修了
番号を選んでください(1,2,3、9):"

          num = gets.chomp
          case
          when '1' == num
            addBookInfo
          when '2' == num
            listAllBookInfos
          when '3' == num
            delBookInfo
          when '9' == num
            break;
          else
          end
        end
      end
  end

        book_info_manager = BookInfoManager.new("book_info.db")

        book_info_manager.run


