# frozen_string_literal: true

class JobSerializer < ActiveModel::Serializer
  attributes :id, :task, :completed, :user_id
end
