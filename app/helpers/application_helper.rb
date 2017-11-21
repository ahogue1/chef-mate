module ApplicationHelper
  def avatar_url(might. need to send this user)
    current_user.facebook_picture_url || "http://placehold.it/30x30"
  end
end
