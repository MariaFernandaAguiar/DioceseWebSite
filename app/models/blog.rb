class Blog < ApplicationRecord
    mount_uploader :url, BlogUploader
end
