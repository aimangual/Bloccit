class CommentPolicy < ApplicationPolicy
<<<<<<< HEAD
  def destroy?
    user.present? && (record.user == user || user.admin? || user.moderator?)
=======
  def new
    user.present?
  end

  def create
    new?
>>>>>>> checkpoint-46-comments
  end
end