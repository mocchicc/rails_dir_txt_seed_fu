``rails_dir_txt_seed_fu.rb`` to read the *.txt file in the directory (rake db:seed_fu FILTER=blog)

## Usage

First, install ``seed-fu`` as a development dependency:

* Rails 4.0
* Ruby 2.0
* seed-fu

## Sample (Blog Model)

    Blog.seed_once do |s|
      s.title = filename
      s.body = file.read
    end

## directory tree

    rails_dir_txt_seed_fu.rb
    /dir/AAA.txt
        /BBB.txt
        /CCC.txt

## rake

    rake db:seed_fu FILTER=blog

## output

    => Blog.create(title: "AAA" body: "ABCDEF", title: "BBB" body "ABCDEF", title: "CCC" body: "ABCDEF")
