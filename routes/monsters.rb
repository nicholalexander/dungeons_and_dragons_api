class DungeonsAndDragonsAPI
  hash_routes.on 'monsters' do |r|
    set_view_subdir 'monsters'
    
    r.get "index" do
      @monsters = DB[:monsters].all
      view "index"
    end
    r.is "blurgh" do
      "BOO!"
    end
  end

  hash_routes.on 'api' do |r|
    set_view_subdir 'api'

    r.get "monsters/index" do
      response['Content-Type'] = 'application/json'  
      @monsters = DB[:monsters].all
      @monsters.to_json
    end

  end
end
