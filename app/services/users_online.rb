module UsersOnline
  def self.online_users
    if _online_users = Redis.current.get('online_user')
      JSON.parse _online_users
    else
      []
    end

  end

  def self.set_user_online(user_name)
    return nil unless user_name
    _online_users = online_users
    _online_users << user_name
    Redis.current.set('online_user', _online_users.uniq)
  end

  def self.set_user_offline(user_name)
    return nil unless user_name
    _online_users = online_users - [user_name]
    Redis.current.set('online_user', _online_users.uniq)
  end
end
