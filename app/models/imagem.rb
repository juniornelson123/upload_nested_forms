class Imagem < ApplicationRecord
  belongs_to :veiculo
  mount_uploader :image,ImagemUploader

	def image=(val)
    	if !val.is_a?(String) && valid?
      		image_will_change!
      		super
    	end
  	end
end
