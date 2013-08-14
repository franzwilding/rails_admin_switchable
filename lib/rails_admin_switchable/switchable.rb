require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdmin
  module Config
    module Actions
      class Switchable < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :model do
          nil
        end

        register_instance_option :method do
          nil
        end

        register_instance_option :root? do
          true
        end

        register_instance_option :controller do

          Proc.new do
            unless @action.nil?
              unless params[:set_id].nil? || @action.model.nil? || @action.method.nil?
                obj = eval(@action.model)
                obj.send(@action.method, params[:set_id])
              end
              redirect_to :dashboard, :alert => "Swichted!"
            end
          end
        end

        register_instance_option :visible? do
          authorized?
        end

        register_instance_option :breadcrumb_parent do
          []
        end

        register_instance_option :link_icon do
          ' '
        end
      end
    end
  end
end
