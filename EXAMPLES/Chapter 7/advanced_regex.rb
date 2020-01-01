string = "23/23/23"
string =~ %r{(\d+)(\|:)(\d+)(\|:)(\d+)}
a = [$1,$2,$3,$4,$5]
puts a

b = "it all looks-likes very good-best and bla bla-blah"
puts b.scan(/[a-z]+(?=-)/)
puts b.scan(/(?<=it)all/)

re = /(X+)(?!O)/
puts re =~ "test XXXO XXXO XXXO"
puts $2
re = /((?>X+))(?!O)/
puts re =~ "test XXXY"
puts $1
puts re =~ "test XXXO"
puts $1
