require_relative 'mixins/payments.rb'

class PaymentSummary < Sequel::Model(:payment_summary)
  include ASModel
  corresponds_to JSONModel(:payment_summary)

  set_model_scope :global

  include Payments

  def self.update_toplevel_mtimes(*)
    # Just here as a bugfix for versions 2.0.0 -- 2.0.1.
  end
end
