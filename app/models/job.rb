# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :user

  # Put validations here for mandatory fields without having to do a table alter
  # http://guides.rubyonrails.org/active_record_validations.html
  # http://guides.rubyonrails.org/active_record_validations.html#presence

  validates :task, presence: true
end
