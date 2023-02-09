json.array! @users do |user|
    json.id record.id
    json.name user.name
    json.email user.email
end