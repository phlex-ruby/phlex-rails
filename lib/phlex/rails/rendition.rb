# frozen_string_literal: true

# @api private
module Phlex::Rails
  class Rendition
    attr_reader :args, :kwargs, :block

    def initialize(*args, **kwargs, &block)
      @args = args
      @kwargs = kwargs
      @block = block
    end
  end
end