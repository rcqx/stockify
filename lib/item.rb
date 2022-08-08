require 'date'

class Item
  attr_accessor :publish_date

  def initialize(publish_date, archived = false)
    @id = Random.rand(1..1000)
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end 

  def move_to_archive
    if can_be_archived?
      @archived = true
    end
  end

  private

  def can_be_archived?
    if Date.today.year - @publish_date.year > 10
      return true
    else 
      return false
    end
  end
end 
