❯ irb
irb(main):001:0> a ="foo"
=> "foo"
irb(main):002:0> a.object_id
=> 22580
irb(main):003:0> a._id_
(irb):3:in `<main>': undefined method `_id_' for "foo":String (NoMethodError)
	from /Users/tokudome/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `load'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `<main>'
irb(main):004:0> a.__id__
=> 22580
irb(main):007:0> a.class
=> String
irb(main):008:0> "foo".class
=> String
irb(main):009:0> :foo.class
=> Symbol
irb(main):010:0> a.method
(irb):10:in `method': wrong number of arguments (given 0, expected 1) (ArgumentError)
	from (irb):10:in `<main>'
	from /Users/tokudome/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `load'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `<main>'
irb(main):011:0> a.methods
=>
[:each_grapheme_cluster,
 :slice,
 :slice!,
 :rpartition,
 :encoding,
 :force_encoding,
 :b,
 :valid_encoding?,
 :ascii_only?,
 :hash,
 :unicode_normalized?,
 :unicode_normalize,
 :unicode_normalize!,
 :pretty_print,
 :encode,
 :encode!,
 :to_r,
 :include?,
 :%,
 :*,
 :+,
 :to_c,
 :count,
 :partition,
 :unpack,
 :unpack1,
 :+@,
 :-@,
 :<=>,
 :<<,
 :==,
 :===,
 :sum,
 :=~,
 :[],
 :[]=,
 :next,
 :empty?,
 :eql?,
 :casecmp,
 :casecmp?,
 :insert,
 :bytesize,
 :match,
 :match?,
 :succ!,
 :next!,
 :upto,
 :index,
 :byteindex,
 :rindex,
 :byterindex,
 :replace,
 :clear,
 :chr,
 :getbyte,
 :setbyte,
 :byteslice,
 :bytesplice,
 :scrub,
 :scrub!,
 :dedup,
 :freeze,
 :undump,
 :intern,
 :length,
 :size,
 :succ,
 :downcase,
 :capitalize,
 :upcase,
 :dump,
 :upcase!,
 :inspect,
 :swapcase!,
 :oct,
 :downcase!,
 :capitalize!,
 :swapcase,
 :to_str,
 :codepoints,
 :split,
 :lines,
 :hex,
 :chars,
 :to_s,
 :to_i,
 :to_f,
 :reverse!,
 :concat,
 :grapheme_clusters,
 :reverse,
 :bytes,
 :start_with?,
 :prepend,
 :crypt,
 :ljust,
 :gsub,
 :end_with?,
 :scan,
 :strip,
 :to_sym,
 :center,
 :sub,
 :lstrip,
 :chop,
 :rjust,
 :ord,
 :sub!,
 :rstrip,
 :delete_prefix,
 :chomp,
 :strip!,
 :gsub!,
 :chop!,
 :chomp!,
 :delete_suffix,
 :lstrip!,
 :rstrip!,
 :delete_prefix!,
 :delete_suffix!,
 :tr,
 :tr_s,
 :delete,
 :squeeze,
 :tr!,
 :tr_s!,
 :delete!,
 :squeeze!,
 :each_line,
 :each_byte,
 :each_char,
 :each_codepoint,
 :clamp,
 :between?,
 :<=,
 :>=,
 :<,
 :>,
 :pretty_print_inspect,
 :pretty_print_cycle,
 :pretty_print_instance_variables,
 :singleton_class,
 :dup,
 :itself,
 :methods,
 :singleton_methods,
 :protected_methods,
 :private_methods,
 :public_methods,
 :instance_variables,
 :instance_variable_get,
 :instance_variable_set,
 :instance_variable_defined?,
 :remove_instance_variable,
 :instance_of?,
 :kind_of?,
 :is_a?,
 :display,
 :public_send,
 :extend,
 :class,
 :clone,
 :tap,
 :frozen?,
 :yield_self,
 :then,
 :!~,
 :nil?,
 :respond_to?,
 :public_method,
 :method,
 :singleton_method,
 :define_singleton_method,
 :object_id,
 :pretty_inspect,
 :send,
 :to_enum,
 :enum_for,
 :!,
 :equal?,
 :__send__,
 :!=,
 :instance_eval,
 :instance_exec,
 :__id__]
irb(main):012:1* class Foo
irb(main):013:2*   def initialize
irb(main):014:2*     @hoge = 1
irb(main):015:1*   end
irb(main):016:0> end
=> :initialize
irb(main):017:0> f = Foo.new
=> #<Foo:0x00000001048bba28 @hoge=1>
irb(main):018:0> f.instance_variable
(irb):18:in `<main>': undefined method `instance_variable' for #<Foo:0x00000001048bba28 @hoge=1> (NoMethodError)
Did you mean?  instance_variables
instance_variable_set
instance_variable_get
from /Users/tokudome/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `load'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `<main>'
irb(main):019:0> f.instance_variables
=> [:@hoge]
irb(main):020:0> f.instance_variable_get(:@hoge)
=> 1
irb(main):021:0> f.instance_variable_set(:@hoge,2)
=> 2
irb(main):023:0> f.instance_variable_get(:@hoge)
=> 2
