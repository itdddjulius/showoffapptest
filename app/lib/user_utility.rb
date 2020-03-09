module UserUtility
  def user_hash(user)
    user = user.instance_variables.each_with_object({}) { |var, hash| hash[var.to_s.delete("@")] = user.instance_variable_get(var) }
    return user["user"]["data"]
  end
end

