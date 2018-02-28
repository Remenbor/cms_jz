module SessionsHelper
  #创建临时cookie 加密ID 登入指定用户
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    #ID不存在返回nil
    #User.find(session[:user_id]),不存在,find抛出异常（未登录session[:user_id]=nil）
  end

  def current_user?(user)
    user == current_user
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def user_permission_id?(user)
    UserPermission.where(user_id: user.id).select("permission_id").first.permission_id == 1
  end
end
