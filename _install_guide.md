1. Create a new repo in git
2. Create new rails app in directory using `rails new .`
3. Add `devise`, `carrierwave`, `rmagick` gems to Gemfile
4. `bundle install`
5. `rails generate devise:install`
6. Follow the additional steps
7. `rails g devise User`
8. `rake db:migrate`
9. Sketch out models of the app
    * User: Devise
    * UserDetail: first_name last_name birthday bio photo
    * Home: home_text sales_box_01_headline sales_box_01_text sales_box_02:headline sales_box_02:text sales_box_03:headline sales_box_03:text photo(add later using carrierwave?)
    * Publication: title publication_description date link pdf (use carrierwave for pdf?) 
    * Book: title subtitle description photo sales_link
    * Other: title description date category link