require 'simplecov'
SimpleCov.start

require 'time'
require 'require_all'

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../farmar'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
