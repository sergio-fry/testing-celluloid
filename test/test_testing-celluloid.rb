require 'helper'

class TestTestingCelluloid < Test::Unit::TestCase
  should "add raw methods" do
    class MyActor
      include Celluloid
    end

    assert_equal MyActor, MyActor.new.raw_object.class

    actor = MyActor.new
    mock(actor).method_5 { 5 }
    assert_equal 5, actor.method_5


    assert_equal MyActor, MyActor.new_raw_object.class
  end
end
