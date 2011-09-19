require 'helper'

class TestTestingCelluloid < Test::Unit::TestCase
  should "call ordinary method aginst bang" do
    class MyActor
      include Celluloid
    end

    actor = MyActor.new
    mock(actor).my_method
    actor.my_method!
  end
end
