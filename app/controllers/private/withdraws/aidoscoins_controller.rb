module Private::Withdraws
  class AidoscoinsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
