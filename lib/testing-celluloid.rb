module Celluloid
  # just send bang message to object itself
  def method_missing(meth, *args, &block)
    if meth.to_s.match(/!$/) 
      unbanged_meth = meth.to_s.sub(/!$/, '')
      self.send(unbanged_meth)
    else
      super
    end
  end
end

#require 'logger'

#module Celluloid
  #@@logger_lock = Mutex.new
  #@@logger = Logger.new STDERR

  #def self.logger
    #@@logger_lock.synchronize { @@logger }
  #end
  
  #def self.logger=(logger)
    #@@logger_lock.synchronize { @@logger = logger }
  #end
  
  #def self.included(klass)
    #klass.send :include, Actor
  #end
#end

#require 'celluloid/version'
#require 'celluloid/actor'
#require 'celluloid/actor_proxy'
#require 'celluloid/calls'
#require 'celluloid/core_ext'
#require 'celluloid/events'
#require 'celluloid/linking'
#require 'celluloid/mailbox'
#require 'celluloid/registry'
#require 'celluloid/responses'
#require 'celluloid/signals'
#require 'celluloid/supervisor'

#require 'celluloid/future'

