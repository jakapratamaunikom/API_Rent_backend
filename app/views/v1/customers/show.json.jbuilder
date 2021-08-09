json.data do 
  json.customer do 
    json.call(
      @customer,
      :id,
      :name
    )
  end
end