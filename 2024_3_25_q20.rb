tag=->{|t,msg| print "<#{t}>#{msg}</#{t}>" }
tag.call(:p, "Hello, World")
