class Actor < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :movies

  # Recalculate the average score for a parent airline
  # whenever a review is created/updated/destroyed


  def graphql_json_response
    as_json.merge(message: 'success', error: nil, code: 200)
  end
end
