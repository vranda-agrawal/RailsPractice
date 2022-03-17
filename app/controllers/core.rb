require "active_support/all"

array     = ['string']
duplicate = array.deep_dup
puts duplicate.first.gsub!('string', 'foo')

puts 7.to_param
puts "Tom".to_param
puts [0, true, String].to_param # => "0/true/String"

puts [3.4, -45.6].to_query('sample')
a = {c: 3, b: 2, a: 1}.to_query # => "a=1&b=2&c=3"
puts a
b = {id: 89, name: "John Smith"}.to_query('user')

puts b
puts 1.in?([1,2])        # => true
puts "lo".in?("hello")
puts "loo".in?("hello")

# module_parent
module X
    module Y
        module Z
        end
    end
end
M = X::Y::Z

puts X::Y::Z.module_parent # => X::Y
puts M.module_parent       # => X::Y

res = X::Y::Z.module_parent_name # => "X::Y"
puts res.class

puts X::Y::Z.module_parents # => [X::Y, X, Object]
puts M.module_parents       # => [X::Y, X, Object]

module N
end
puts N.name # => "N"
puts N.anonymous? # => false
puts Module.new.anonymous? # => true

class C; 
end
puts C.subclasses  # => []
class B < C;
end
puts C.subclasses  # => [B]
class A < B;
end
puts C.subclasses  # => [B]

puts C.descendants # => [B,A]

s = ""
puts s.html_safe?
s = "".html_safe
puts s.html_safe?
puts "".html_safe + "<".html_safe  # => "<"

puts "Hello World".remove(/Hello /) # => "World"

puts " \n  foo\n\r \t bar \n".squish # => "foo bar"

puts "Oh dear! Oh dear! I shall be late!".truncate(20)
puts "Oh dear! Oh dear! I shall be late!".truncate(20, omission: '&hellip;')

puts "Oh dear! Oh dear! I shall be late!".truncate_words(6)

puts "Oh dear! Oh dear! I shall be late!".truncate_words(4, omission: '&hellip;')

puts "Oh dear! Oh dear! I shall be late!".truncate_words(2, separator: '!')

puts "production".inquiry.production? # => true
puts "active".inquiry.inactive?       # => false

puts "foo".starts_with?("f") # => true
puts "foo".ends_with?("o")   # => true

puts "  foo".indent(2)        # => "    foo"
puts "foo\n\t\tbar".indent(2) # => "\t\tfoo\n\t\t\t\tbar"
puts "foo".indent(2, "\t")    # => "\t\tfoo"

puts "hello".at(0)  # => "h"
puts "hello".at(4)  # => "o"
puts "hello".at(-1) # => "o"
puts "hello".at(10) # => nil

puts "hello".from(0)  # => "hello"
puts "hello".from(2)  # => "llo"
puts "hello".from(-2) # => "lo"
puts "hello".from(10) # => nil

puts "hello".to(0)  # => "h"
puts "hello".to(2)  # => "hel"

puts "hello".first(3)  # => hel
puts "hello".first(1)  # => h

puts "hello".last(3)  # => llo
puts "hello".last(1)  # => o


puts "name".dasherize         # => "name"
puts "contact_data".dasherize # => "contact-data"

puts "Product".demodulize                        # => "Product"
puts "Backoffice::UsersController".demodulize    # => "UsersController"
puts "Admin::Hotel::ReservationUtils".demodulize # => "ReservationUtils"

puts "Product".deconstantize                        # => ""
puts "Backoffice::UsersController".deconstantize    # => "Backoffice"
puts "Admin::Hotel::ReservationUtils".deconstantize # => "Admin::Hotel"

puts "John Smith".parameterize # => "john-smith"
puts "Kurt Gödel".parameterize # => "kurt-godel"
puts "John Smith".parameterize(preserve_case: true) # => "John-Smith"
puts "Kurt Gödel".parameterize(separator: "_") # => "kurt_godel"

puts "Person".tableize      # => "people"
puts "Invoice".tableize     # => "invoices"
puts "InvoiceLine".tableize # => "invoice_lines"

puts "people".classify        # => "Person"
puts "invoices".classify      # => "Invoice"
puts "invoice_lines".classify # => "InvoiceLine"

puts "Integer".constantize # => Integer
puts ""
