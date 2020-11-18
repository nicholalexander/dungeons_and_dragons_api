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
end
