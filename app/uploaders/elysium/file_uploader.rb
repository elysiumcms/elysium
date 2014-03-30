module Elysium
  class FileUploader < ::CarrierWave::Uploader::Base
    def store_dir
      "uploads/template/#{partition_path}"
    end

    def partition_path
      @partition_path ||= Elysium::PartitionPath.new(model.template_id).path
    end

    def extension_white_list
      %w(jpg jpeg gif png css js swf flv eot svg ttf woff otf ico)
    end

    process :save_content_type_and_size_in_model

    def save_content_type_and_size_in_model
      model.name = file.filename
      model.content_type = file.content_type
      model.size = file.size

      if mime_magic.image?
        model.width = mini_magick['width']
        model.height = mini_magick['heigh']
      end
    end

    def mime_magic
      @mime_magic ||= ::MimeMagic.by_path(file.path)
    end

    def mini_magick
      @mini_magick ||= ::MiniMagick::Image.open(file.path)
    end
  end
end
