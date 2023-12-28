a = 0

begin
  b = 1/a
rescue ZeroDivisionError
  a += 1
  retry
ensure
  p b
end
