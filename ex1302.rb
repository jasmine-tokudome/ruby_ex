# -*- coding: utf-8 -*-
# Studentクラスを作る
class Student

    # Studentクラスのインスタンスを初期化する
    def initialize ( name, age)
        @name = name
        @age = age
    end

    # Studentクラスのインスタンスの文字列表現を返す
    def to_s
        "#@name, #@age"
    end

end

# Studentアプリケーションのインスタンスを作る
class StudentBook
    def initialize
        @student = {}
    end

    # ハッシュにStudentクラスのインスタンスを複数作成する
    def setUpstudents
    @students = {
    :shin => Student.new('Shin Kuboaki', 45),
    :shinichirou => Student.new("Shinichirou Ooba",35),
    :shingo => Student.new("Shingo Katori",30),
    }
    end

    # すべてのインスタンスの名前と年齢を表示する
    # 処理を手続きにする
    def printStudents
    @students.each{|key,value|
    puts "#{key} #{value.to_s}"
    }
    end

    # StudentBookが保持しているデータをリストする
    def AllStudent
        # Studentクラスのインスタンスの作成
        setUpstudents
        # Studentクラスのインスタンスの表示
        printStudents
    end
end

# StudentBookクラスのインスタンスを作成する
student_book = StudentBook.new

# Studentクラスのインスタンスの表示
student_book.AllStudent