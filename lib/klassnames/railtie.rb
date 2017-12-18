require 'klassnames/classnames_helper'

module Klassnames
  class Railtie < Rails::Railtie
    initializer "classnames.helper" do |app|
      ActionView::Base.send :include, ClassnamesHelper
    end
  end
end
