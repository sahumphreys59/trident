class Attachment < ApplicationRecord
	belongs_to :form
	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.   
end