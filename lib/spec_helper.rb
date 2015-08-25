require 'minitest/autorun'

Dir['./lib/*.rb'].each {|file| require file}
Dir['./lib/ext/*.rb'].each {|file| require file}
