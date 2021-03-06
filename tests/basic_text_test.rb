require 'test_helper'
require 'concordion_test_case'

class BasicTextTest < ConcordionTestCase
  def set_name(name)
    @name = name
  end

  def return_arg(arg)
    arg
  end
  
  def concat(a,b)
    raise "second arg nil" if b.nil?
    raise "first arg nil" if a.nil?

    "#{a}:#{b}"
  end
  
  def double_down
    "#{@name*2}"
  end
end
