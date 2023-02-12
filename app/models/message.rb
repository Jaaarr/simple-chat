class Message < ApplicationRecord
  belongs_to :chat
  validates :body, presence: true

  after_create_commit -> { broadcast_append_to "messages", target: "new_message" }
end
