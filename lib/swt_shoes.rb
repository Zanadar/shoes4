require 'java'
require 'swt'

module Swt
  include_package 'org.eclipse.swt.graphics'
  include_package 'org.eclipse.swt.events'
end

def window(*a, &b)
  Shoes.app(*a, &b)
end

require 'swt_shoes/element_methods'
require 'swt_shoes/animation'
require 'swt_shoes/app'
#require 'swt_shoes/window'
require 'swt_shoes/flow'
require 'swt_shoes/button'
require 'swt_shoes/line'
require 'swt_shoes/oval'
require 'swt_shoes/shape'
require 'swt_shoes/color'
require 'swt_shoes/sound'

module SwtShoes
  module Shoes
    def self.app(opts={}, &blk)
      Shoes::App.new(opts, &blk)
      Shoes.logger.debug "Exiting Shoes.app"
    end

    def self.logger
      ::Shoes.logger
    end

    def self.display
      Swt::Widgets::Display.getCurrent
    end
  end
end

