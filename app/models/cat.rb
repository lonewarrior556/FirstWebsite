class Cat < ActiveRecord::Base
  SEX = ['m', 'f']
  COLORS = ['black', 'brown', 'orange', 'grey', 'white', 'orange with black strips' ]
  validates :color, :name, :sex, :presence => true
  validates :color, :inclusion =>  { in: COLORS }
  validates :sex, :inclusion =>    { in: SEX }

  def age
    Time.new.year - birth_date.year
  end


  has_many :cat_rental_requests, dependent: :destroy





end
