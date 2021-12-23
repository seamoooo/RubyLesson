# frozen_string_literal: true

class FinancialInstitutionsService
  # user_id検索
  #
  # @arg user_id: ユーザーID
  # @return name: 金融機関名 balance: 金融機関の残高
  def self.find_financial_institutions_by_user_id(user_id:)
    result = FinancialInstitutionsRepository.fetch(user_id: user_id)

    data = result.map do |val|
      {
       name: val["attributes"]["name"],
       balance: val["attributes"]["balance"]
      }
    end
  end
end