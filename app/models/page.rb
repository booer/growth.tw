class Page < ActiveRecord::Base
	has_many :descriptions, :dependent => :destroy
	accepts_nested_attributes_for :descriptions, reject_if: :all_blank, allow_destroy: true
	has_many :clients, :dependent => :destroy
	accepts_nested_attributes_for :clients, reject_if: :all_blank, allow_destroy: true
end
