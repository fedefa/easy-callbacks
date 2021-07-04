# frozen_string_literal: true

require 'easy_callbacks/version'
require 'active_model'

module EasyCallbacks
  METHODS = %i[code].freeze

  def self.included(target)
    target.class_eval do
      extend ActiveModel::Callbacks
      METHODS.each do |method|
        define_model_callbacks method.to_sym

        # Provide a wrapper method using a prepended module
        hooks_module = Module.new do
          define_method(method) do |*args, &block|
            run_callbacks(method) do
              super(*args, &block)
            end
          end
        end
        target.prepend hooks_module
      end
    end
  end
end
