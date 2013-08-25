class User < ActiveRecord::Base
  attr_accessible :name, :password, :pic
  

  
 
  validates_presence_of :password, :on => :create
  validates_presence_of :name
  validates_uniqueness_of :name
  
  def self.authenticate(name, password)
    user = find_by_name(name)
    if user.name=name && user.password=password
      user
    else
      nil
    end
  end
  

end
