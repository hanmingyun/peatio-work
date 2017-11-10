module Admin
  module Withdraws
    class AidoscoinsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Aidoscoin'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24)
        @one_aidoscoins = @aidoscoins.with_aasm_state(:accepted).order("id DESC")
        @all_aidoscoins = @aidoscoins.without_aasm_state(:accepted).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @aidoscoin.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @aidoscoin.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end

