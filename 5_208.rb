irb(main):001:0> a=/abcdefg/i
=> /abcdefg/i
irb(main):002:0> a.class
=> Regexp
irb(main):003:0> a=Regexp.new("abcdefg",Regexp::MULTILINE | Regexp::IGNORECASE)
=> /abcdefg/mi
irb(main):004:0> a=Regexp.new("abc")
=> /abc/
irb(main):005:0> a.match("abcdefg")
=> #<MatchData "abc">
  irb(main):006:0> a=Regexp.new("abc")
=> /abc/
irb(main):007:0> a=~"abcdefg"
=> 0
irb(main):008:0> a =~ "abcdefg"
=> 0
irb(main):009:0> "abcdefg"=~a
=> 0
irb(main):010:0> "abcdefg" =~ a
=> 0
irb(main):011:0> a
=> /abc/
irb(main):012:0> a==="abcdefg"
=> true
irb(main):013:0> $_="abcdefg"
=> "abcdefg"
irb(main):014:0> a=Regexp.new("abc")
=> /abc/
irb(main):015:0> ~ a
=> 0
irb(main):016:0> Regexp.escape("array.push(hash[key])")
=> "array\\.push\\(hash\\[key\\]\\)"
irb(main):017:0> /abcdefg/=~"abcdefghijklmnopqrstuvwxyz"
=> 0
irb(main):018:0> Regexp.last_match
=> #<MatchData "abcdefg">
  irb(main):019:0> $~
=> #<MatchData "abcdefg">
  irb(main):020:0> /(abc)d(efg)/=~"abcdefghijklmnopqrstuvwxyz"
=> 0
irb(main):021:0> Regexp.last_match(0)
=> "abcdefg"
irb(main):022:0> $&
=> "abcdefg"
irb(main):023:0> Regexp.last_match(1)
=> "abc"
irb(main):024:0> $1
=> "abc"
irb(main):025:0> a=Regexp.new("abc")
=> /abc/
irb(main):026:0> b=Regexp.new("ABC")
=> /ABC/
irb(main):027:0> c=Regexp.union(a,b)
=> /(?-mix:abc)|(?-mix:ABC)/
irb(main):028:0> c =~ "abc"
=> 0
irb(main):029:0> Regexp.last_match
=> #<MatchData "abc">
  irb(main):030:0> a=Regexp.new("abcdefg",Regexp::MULTILINE|Regexp::IGNORECASE)
=> /abcdefg/mi
irb(main):031:0> a.options
=> 5
irb(main):032:0> a.options & Regexp::IGNORECASE
=> 1
irb(main):033:0> a.options & Regexp::EXTENDED
=> 0
irb(main):034:0> a=Regexp.new("abcdefg")
=> /abcdefg/
irb(main):035:0> a.casefold?
=> false
irb(main):036:0> a=Regexp.new("abcdefg",Regexp::MULTILINE|Regexp::IGNORECASE)
=> /abcdefg/mi
irb(main):037:0> a.casefold?
=> true
irb(main):038:0> a=Regexp.new("abcdefg")
=> /abcdefg/
irb(main):039:0> a.kcode
Traceback (most recent call last):
  4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
        2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
1: from (irb):39
NoMethodError (undefined method `kcode' for /abcdefg/:Regexp)
irb(main):040:0> a=Regexp.new("abcdefg",nil,'u')
(irb):40: warning: encoding option is ignored - u
=> /abcdefg/
irb(main):041:0> a.kcode
Traceback (most recent call last):
        4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):41
NoMethodError (undefined method `kcode' for /abcdefg/:Regexp)
irb(main):042:0> a=Regexp.new("abcdefg",Regexp::MULTILINE|Regexp::IGNORECASE,'u')
(irb):42: warning: encoding option is ignored - u
=> /abcdefg/mi
irb(main):043:0> a.source
=> "abcdefg"
irb(main):044:0> a.to_s
=> "(?mi-x:abcdefg)"
irb(main):045:0> a.inspect
=> "/abcdefg/mi"
