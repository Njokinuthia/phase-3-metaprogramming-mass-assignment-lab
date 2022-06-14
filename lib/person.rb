class Person
  def initialize person_hash

    person_hash.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=" , value)    
    end
  end
end

suzie = {
  name:"suzie", 
  birthday:"28th Oct", 
  hair_color:"black",
  eye_color:"blue", 
  height:"5'1",
  weight:"54kgs", 
  handed:"right", 
  complexion:"dark-chocolate", 
  t_shirt_size:"medium",  
}

person1 = Person.new(suzie)
puts person1.complexion