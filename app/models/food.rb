class Food < ActiveRecord::Base
	  has_attached_file :map1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :map1, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :map2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :map2, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :map3, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :map3, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :map4, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :map4, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :map5, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :map5, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :back1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :back1, :content_type => /\Aimage\/.*\Z/

    has_attached_file :icon1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :back1, :content_type => /\Aimage\/.*\Z/

    has_attached_file :classification, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :classification, :content_type => /\Aimage\/.*\Z/
end
