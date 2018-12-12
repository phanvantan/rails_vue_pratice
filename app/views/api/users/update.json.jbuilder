if @user.errors.any?
  json.set! :errors, @user.errors.messages
else
  json.set! :user do
    json.extract! @user, :id, :name, :email, :actived
    json.created_at time_ago_in_words(@user.created_at)
    json.updated_at time_ago_in_words(@user.updated_at)
  end
end
