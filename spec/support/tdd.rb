# frozen_string_literal: true

class TDD
  include EasyCallbacks
  before_code :write_a_test
  around_code :drink_coffee
  after_code :clean_code_and_iterate

  def code
    puts 'Write the best code!'
  end

  def write_a_test
    puts 'Make it fail'
  end

  def drink_coffee
    yield
    puts 'Drink coffee'
  end

  def clean_code_and_iterate
    puts 'Refactor'
  end
end
