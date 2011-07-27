class Topic < ActiveRecord::Base
  belongs_to :category
  has_one :detail,:as => "resource"
  accepts_nested_attributes_for :detail

  def detail_attributes=(hash)
    self.build_detail(hash) if !self.detail
    self.detail.update_attributes(hash)
  end
end
