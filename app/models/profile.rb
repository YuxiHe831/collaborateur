class Profile < ActiveRecord::Base
  validates :name, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :kind, presence: true
  def self.search(search)
    if search
      find(:all, :conditions => ['kind LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
