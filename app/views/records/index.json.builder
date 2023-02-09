json.array! @records do |record|
    json.id record.id
    json.content record.content
    json.record_id record.record_id
end