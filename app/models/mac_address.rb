# == Schema Information
#
# Table name: mac_addresses
#
#  address    :string(255)      primary key
#  user_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class MacAddress < ActiveRecord::Base
  belongs_to :user, inverse_of: :devices
  has_many :sessions, foreign_key: :mac_address

  before_validation :format_mac

  self.primary_key = :address

  validates :address, presence: true, uniqueness: true, format: { with: /\A([0-9A-F]{2}[:-]?){5}([0-9A-F]{2})\z/ }

  private
    def format_mac
      if address.present?
	       self.address = address.strip.upcase.gsub(/[-:]/, '').scan(/.{2}/).join ':'
      end
    end
end
