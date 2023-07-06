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

# 新しいハッシュを作成し、Studentクラスのインスタンスを複数作成する
# 処理を手続きにする
def setUpstudents
students = {
    :shin => Student.new('Shin Kuboaki', 45),
    :shinichirou => Student.new("Shinichirou Ooba",35),
    :shingo => Student.new("Shingo Katori",30),
}
end

# すべてのインスタンスの名前と年齢を表示する
# 処理を手続きにする
def printStudents
students.each{|key,value|
puts "#{key} #{value.to_s}"
}
end