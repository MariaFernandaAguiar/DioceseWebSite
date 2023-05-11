class Article < ApplicationRecord
    mount_uploader :url, ArticleUploader
end
