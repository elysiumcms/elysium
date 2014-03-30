module Elysium
  class ScreenshotUploader < ::CarrierWave::Uploader::Base
    include CarrierWave::Magic

    def store_dir
      "uploads/template/#{partition_path}/_screenshot"
    end

    def partition_path
      @partition_path ||= Elysium::PartitionPath.new(model.id).path
    end

    def extension_white_list
      %w(jpg jpeg gif png)
    end
  end
end
