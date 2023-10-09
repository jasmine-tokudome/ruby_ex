# -*- coding: utf-8 -*-
# Studentクラスを作る

class Student
  # Studentクラスのインスタンスを初期化する
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Studentクラスのインスタンスの文字列表現を返す
  def to_s
    "#@name, #@age"
  end
end

students = {
  :shin => Student.new("Shin Kuboaki",45),
  :shinichirou => Student.new("Shinichirou Ooba",35),
  :shingo => Student.new("Shingo Katori",30),
}

students.each do |key,value|
  puts "#{key} #{value.to_s}"
end