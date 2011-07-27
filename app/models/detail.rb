class Detail < ActiveRecord::Base
   belongs_to :resource,:polymorphic => true
end
