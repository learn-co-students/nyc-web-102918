name = 'a string'

def say_name(name_arg)
  puts name_arg
end

say_name(name)
say_name('another string')


$global_blah = 'jimmy'

def say_name_global
  puts $global_blah
end


say_name_global
