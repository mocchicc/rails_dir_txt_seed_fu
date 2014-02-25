rails_dir_txt_seed_fu to read the text file in the directory (rake db:seed_fu)

## Usage

First, install gulp-usemin as a development dependency:

* Rails 4.0
* Ruby 2.0
* seed-fu

## Sample (Blog Model)


    Blog.seed_once do |s|
      s.title = filename
      s.body = file.read
    end
