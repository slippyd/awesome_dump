# Copyright (c) 2010 Michael Dvorkin
#
# Awesome Dump is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
module Kernel

  def ai(options = {})
    ad = AwesomeDump.new(options)
    ad.send(:awesome, self)
  end
  alias :awesome_inspect :ai

  def ad(object, options = {})
    puts object.ai(options)
  end
  alias :awesome_dump :ad

  module_function :ad
end