class PictureUploader < CarrierWave::Uploader::Base
 
  if Rails.env.production?
    storage :aws
  else
    storage :file
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
