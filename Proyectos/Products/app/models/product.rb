class Product < ActiveRecord::Base
 
validates :title, :description, :image_url, :presence=>{ :presence=>true,
                                            :message=> ': product should be include title, description & image'}

validates :price, :numericality => {:greater_than_or_equal_to=> 0.01,
                  :message=> ': el precio debe ser mayor o igual a 0.01'}

validates :title, :uniqueness => { :unique=>true,
          :message=> I18n.translate('activerecord.errors.messages.taken') }

validates :image_url, :format =>{
  :with => %r{\.(gif|jpg|png)$}i,
  :message => ': el url debe ser para una imagen de tipo GIF, JPG o PNG'
  }
end
