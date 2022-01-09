class Profile < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    has_many(:educations, dependent: :destroy)
    has_many(:experiences, dependent: :destroy)
    
    accepts_nested_attributes_for(:educations , reject_if: :reject_education_create, allow_destroy: true)
    accepts_nested_attributes_for(:experiences,allow_destroy: true)
    
    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end
end