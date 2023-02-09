json.array! @records do |record|
    json.id record.id
    json.content record.content
    json.user_id record.user_id
end