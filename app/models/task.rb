# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :user, inverse_of: :tasks, foreign_key: :user_id
  # validates :user, presence: true
end
