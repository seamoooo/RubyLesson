# frozen_string_literal: true

class FinancialInstitutionsInfoPresenter
  def initialize(user_id:)
    @user_id = user_id
  end

  def user_name
    @user_name ||= FinancialInstitutionsUserService.find_user_by_user_id(user_id: @user_id)[:name]
  end

  def financial_institutions
    @financial_institutions ||= FinancialInstitutionsService.find_financial_institutions_by_user_id(user_id: @user_id)
  end
end