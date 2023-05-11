class Paroquia < ApplicationRecord
    mount_uploader :url, ParoquiasUploader
end
