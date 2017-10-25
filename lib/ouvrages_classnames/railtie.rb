require 'ouvrages_classnames/classnames_helper'

module OuvragesClassnames
  class Railtie < Rails::Railtie
    initializer "classnames.helper" do |app|
      ActionView::Base.send :include, ClassnamesHelper
    end
  end
end
