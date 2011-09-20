module Celluloid
  module TestingClassMethods
    def new_raw_object(*args, &block)
      actor = allocate
      actor.send(:initialize, *args, &block)
      actor
    end
  end

  class ActorProxy
    def raw_object
      @actor
    end
  end

  def self.included(klass)
    klass.send :include, Actor
    klass.extend TestingClassMethods
  end
end

