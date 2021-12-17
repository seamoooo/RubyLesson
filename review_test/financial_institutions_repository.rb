# frozen_string_literal: true

class FinancialInstitutionsRepository
  def self.fetch(user_id:)
    return nil if user_id.empty?

    result = fetch_request(user_id: user_id)
  end

  def self.fetch_request(user_id:)
    url = "#{FINANCIAL_INSTITUTIONS_API_URL}/users/#{user_id}/accounts"
    res = HTTPClient.new.get(url)
    raise ExternalAPIError, "response code:#{res.code} / #{user_id}" unless res.code == 200

    body = JSON.parse(res.body)
  end

  private_class_method :fetch_request
end