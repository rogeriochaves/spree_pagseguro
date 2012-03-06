require 'spree_core'
require 'spree_pagseguro_hooks'

module SpreePagseguro
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib #{config.root}/lib/pag_seguro)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end
    
    config.after_initialize do |app|
      app.config.spree.payment_methods += [PaymentMethod::Pagseguro]
    end

    config.to_prepare &method(:activate).to_proc
  end
end
