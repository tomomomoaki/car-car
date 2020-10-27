class CarsTagsSaver

  include ActiveModel::Model
  attr_accessor :title, :image, :text, :maker_id, :car_name, :body_type_id, :user_id

  with_options presence: true do
    validates :title
    validates :text
    #validates :maker_id
    #validates :car_name
    #validates :body_type_id
  end
  
  def save
    car = Car.create(title: title, image: image, text: text, user_id: user_id)
    tag = Tag.create(maker_id: maker_id, car_name: car_name, body_type_id: body_type_id)
    CarTag.create(car_id: car.id, tag_id: tag.id)
  end

end
    