module ProgrammesHelper

  def getImage(user)
    if user.user_image == nil
      img = user.image
    else
      img = user.user_image
    end
    img
  end
end
