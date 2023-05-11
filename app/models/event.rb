class Event < ApplicationRecord
    mount_uploader :url, EventsUploader
end
