CustomError = Class.new(StandardError)

def boom
    raise CustomError
rescue
    p raise
end

begin
    boom
rescue => e
    p e
    p e.class
end
