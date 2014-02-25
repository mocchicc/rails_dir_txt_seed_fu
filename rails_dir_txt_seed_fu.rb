if Rails.env.development?
filepath = []
Dir.glob("./dir/*.txt") do |f|
	filepath << f
end
  filepath.each do |n|
  filename = File.basename(n,'.txt')
    Wiki.seed_once do |s|
      s.title = filename
      File.open("./dir/"+filename+".txt","r") do |file|
      	s.body = file.read
      end
    end
   end
end