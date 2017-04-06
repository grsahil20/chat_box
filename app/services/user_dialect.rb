module UserDialect
  def self.set_user_dialect(user_name, dialect)
    Redis.current.set(user_name, dialect)
  end

  def self.get_user_dialect(user_name)
    return nil unless user_name
    Redis.current.get(user_name)
  end
end
