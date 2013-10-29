class Board
 include Mongoid::Document

 field :length, type:Float
 field :width, type:Float

 belongs_to :customer, class_name:"User"
 belongs_to :producer, class_name:"User"

end
