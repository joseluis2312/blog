class Article < ApplicationRecord
	belongs_to:user
	has_many:comments

	validates:title, presence: true, uniqueness:true
	validates:body, presence: true, length: {minimum: 5 }
#	before_create :set_visit_count
	before_save :set_visit_count

    has_attached_file:cover
#    has_attached_file:cover, styles: {medium: "1280x720" thumb: "800x600"}
# validates_attachment_content_type:cover, content_type: /\Aimage\/.*\z/
#validates_attachment_content_type:cover, content_type: ['image/jpg','application/pdf','application/rtf']]
validates_attachment_content_type:cover, content_type: ['image/jpg','application/pdf','application/rtf']
def update_visit_count
#	self.save if self.visits_count.nil?
#	if self.visits_count.nil?
#		self.visits_count = 10
#	end

	self.update(visits_count: self.visits_count + 1)

end

private
def set_visit_count
	self.visits_count ||= 0
end


end
