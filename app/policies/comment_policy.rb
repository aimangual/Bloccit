class CommentPolicy < ApplicationPolicy
  def destroy?
    user.present? && (record.user == user || user.admin? || user.moderator?)
  def new
    user.present?
  end

  def create
    new?
  end
end