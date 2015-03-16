# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  owner_id    :integer
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Course < ActiveRecord::Base
	has_and_belongs_to_many :users
	belongs_to :owner, class_name: :User
end

