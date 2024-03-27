def reader_method(s)
  <<~EOF
    def #{s}
      @#{s}
    end
  EOF
end

print reader_method("foo")
