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

class StudentBook
  def initialize
    @students = {}
  end

  def setUpStudents
    @students = {
      :shin => Student.new("Shin Kuboaki", 45),
      :shinichirou => Student.new("Shinichirou Ooba", 35),
      :shingo => Student.new("Shingo Katori", 30),
    }
  end

  def printStudents
      @students.each do |key, value|
        puts "#{key} #{value.to_s}"
      end
  end

  def listAllStudents
    setUpStudents
    printStudents
  end
end

  student_book = StudentBook.new

  student_book.listAllStudents


