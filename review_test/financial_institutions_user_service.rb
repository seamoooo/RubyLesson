# frozen_string_literal: true

class FinancialInstitutionsUserService
  # user_id検索
  #
  # @arg user_id: ユーザーID
  # @return name: ユーザー名
  def self.find_user_by_user_id(user_id:)
    result = FinancialInstitutionsUserRepository.fetch(user_id: user_id)

    data = {
      name: result["attributes"]["name"]
    }
  end
end