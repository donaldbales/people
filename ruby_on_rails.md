# ruby on rails

## On Windows
<pre>
> cd Work\people
> rails --version
Rails 4.2.3
> rem Let's generate the application...
> rails new . --database=postgresql
C:\Users\don\Documents\Work\people>rails new . --database=postgresql
       exist
      create  README.rdoc
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
      create  app/assets/javascripts/application.js
      create  app/assets/stylesheets/application.css
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/views/layouts/application.html.erb
      create  app/assets/images/.keep
      create  app/mailers/.keep
      create  app/models/.keep
      create  app/controllers/concerns/.keep
      create  app/models/concerns/.keep
      create  bin
      create  bin/bundle
      create  bin/rails
      create  bin/rake
      create  bin/setup
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/secrets.yml
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/assets.rb
      create  config/initializers/backtrace_silencers.rb
      create  config/initializers/cookies_serializer.rb
      create  config/initializers/filter_parameter_logging.rb
      create  config/initializers/inflections.rb
      create  config/initializers/mime_types.rb
      create  config/initializers/session_store.rb
      create  config/initializers/wrap_parameters.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  lib
      create  lib/tasks
      create  lib/tasks/.keep
      create  lib/assets
      create  lib/assets/.keep
      create  log
      create  log/.keep
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/favicon.ico
      create  public/robots.txt
      create  test/fixtures
      create  test/fixtures/.keep
      create  test/controllers
      create  test/controllers/.keep
      create  test/mailers
      create  test/mailers/.keep
      create  test/models
      create  test/models/.keep
      create  test/helpers
      create  test/helpers/.keep
      create  test/integration
      create  test/integration/.keep
      create  test/test_helper.rb
      create  tmp/cache
      create  tmp/cache/assets
      create  vendor/assets/javascripts
      create  vendor/assets/javascripts/.keep
      create  vendor/assets/stylesheets
      create  vendor/assets/stylesheets/.keep
         run  bundle install
Fetching gem metadata from https://rubygems.org/............
Fetching version metadata from https://rubygems.org/...
Fetching dependency metadata from https://rubygems.org/..
Resolving dependencies........
Using rake 10.4.2
Using i18n 0.7.0
Using json 1.8.3
Installing minitest 5.8.0
Using thread_safe 0.3.5
Using tzinfo 1.2.2
Using activesupport 4.2.3
Using builder 3.2.2
Using erubis 2.7.0
Using mini_portile 0.6.2
Using nokogiri 1.6.6.2
Using rails-deprecated_sanitizer 1.0.3
Installing rails-dom-testing 1.0.7
Installing loofah 2.0.3
Using rails-html-sanitizer 1.0.2
Using actionview 4.2.3
Using rack 1.6.4
Using rack-test 0.6.3
Using actionpack 4.2.3
Installing globalid 0.3.6
Using activejob 4.2.3
Using mime-types 2.6.1
Using mail 2.6.3
Using actionmailer 4.2.3
Using activemodel 4.2.3
Installing arel 6.0.3
Using activerecord 4.2.3
Using debug_inspector 0.0.2
Using binding_of_caller 0.7.2
Using bundler 1.10.5
Installing byebug 6.0.2 with native extensions
Using coffee-script-source 1.9.1.1
Installing execjs 2.6.0
Using coffee-script 2.4.1
Using thor 0.19.1
Using railties 4.2.3
Using coffee-rails 4.1.0
Using multi_json 1.11.2
Using jbuilder 2.3.1
Using jquery-rails 4.0.4
Installing pg 0.18.2
Installing sprockets 3.3.3
Using sprockets-rails 2.3.2
Using rails 4.2.3
Using rdoc 4.2.0
Installing sass 3.4.17
Using tilt 1.4.1
Using sass-rails 5.0.3
Using sdoc 0.4.1
Using turbolinks 2.5.3
Installing tzinfo-data 1.2015.6
Using uglifier 2.7.1
Using web-console 2.2.1
Bundle complete! 12 Gemfile dependencies, 53 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
>
> Let's generate some scaffolding, first, type tables
> C:\Users\don\Documents\Work\people>rails generate scaffold --help
Usage:
  rails generate scaffold NAME [field[:type][:index] field[:type][:index]] [options]

Options:
      [--skip-namespace], [--no-skip-namespace]  # Skip namespace (affects only isolated applications)
      [--force-plural], [--no-force-plural]      # Forces the use of the given model name
  -o, --orm=NAME                                 # Orm to be invoked
                                                 # Default: active_record
      [--model-name=MODEL_NAME]                  # ModelName to be used
      [--resource-route], [--no-resource-route]  # Indicates when to generate resource route
                                                 # Default: true
  -y, [--stylesheets], [--no-stylesheets]        # Generate Stylesheets
                                                 # Default: true
  -se, [--stylesheet-engine=STYLESHEET_ENGINE]   # Engine for Stylesheets
                                                 # Default: scss
      [--assets], [--no-assets]                  # Indicates when to generate assets
                                                 # Default: true
  -c, --scaffold-controller=NAME                 # Scaffold controller to be invoked
                                                 # Default: scaffold_controller

ActiveRecord options:
      [--migration], [--no-migration]    # Indicates when to generate migration
                                         # Default: true
      [--timestamps], [--no-timestamps]  # Indicates when to generate timestamps
                                         # Default: true
      [--parent=PARENT]                  # The parent class for the generated model
      [--indexes], [--no-indexes]        # Add indexes for references and belongs_to columns
                                         # Default: true
  -t, [--test-framework=NAME]            # Test framework to be invoked
                                         # Default: test_unit

TestUnit options:
      [--fixture], [--no-fixture]   # Indicates when to generate fixture
                                    # Default: true
  -r, [--fixture-replacement=NAME]  # Fixture replacement to be invoked

ScaffoldController options:
      [--helper], [--no-helper]  # Indicates when to generate helper
                                 # Default: true
  -e, [--template-engine=NAME]   # Template engine to be invoked
                                 # Default: erb
      [--jbuilder]               # Indicates when to generate jbuilder
                                 # Default: true

Asset options:
  -j, [--javascripts], [--no-javascripts]       # Generate JavaScripts
                                                # Default: true
  -je, [--javascript-engine=JAVASCRIPT_ENGINE]  # Engine for JavaScripts
                                                # Default: coffee

Runtime options:
  -f, [--force]                    # Overwrite files that already exist
  -p, [--pretend], [--no-pretend]  # Run but do not make any changes
  -q, [--quiet], [--no-quiet]      # Suppress status output
  -s, [--skip], [--no-skip]        # Skip files that already exist

Description:
    Scaffolds an entire resource, from model and migration to controller and
    views, along with a full test suite. The resource is ready to use as a
    starting point for your RESTful, resource-oriented application.

    Pass the name of the model (in singular form), either CamelCased or
    under_scored, as the first argument, and an optional list of attribute
    pairs.

    Attributes are field arguments specifying the model's attributes. You can
    optionally pass the type and an index to each field. For instance:
    'title body:text tracking_id:integer:uniq' will generate a title field of
    string type, a body with text type and a tracking_id as an integer with an
    unique index. "index" could also be given instead of "uniq" if one desires
    a non unique index.

    As a special case, specifying 'password:digest' will generate a
    password_digest field of string type, and configure your generated model,
    controller, views, and test suite for use with ActiveModel
    has_secure_password (assuming they are using Rails defaults).

    Timestamps are added by default, so you don't have to specify them by hand
    as 'created_at:datetime updated_at:datetime'.

    You don't have to think up every attribute up front, but it helps to
    sketch out a few so you can start working with the resource immediately.

    For example, 'scaffold post title body:text published:boolean' gives
    you a model with those three attributes, a controller that handles
    the create/show/update/destroy, forms to create and edit your posts, and
    an index that lists them all, as well as a resources :posts declaration
    in config/routes.rb.

    If you want to remove all the generated files, run
    'rails destroy scaffold ModelName'.

Examples:
    `rails generate scaffold post`
    `rails generate scaffold post title body:text published:boolean`
    `rails generate scaffold purchase amount:decimal tracking_id:integer:uniq`
    `rails generate scaffold user email:uniq password:digest`

C:\Users\don\Documents\Work\people>
> rem Did you create a new postgresql database?
> rem Did you edit config/database.yml?
> rem Is environment variable RAILS_ENV=development?
>rails generate scaffold gender_type code:string description:string active_datetime:datetime inactive_datetime:datetime
      invoke  active_record
      create    db/migrate/20150824003934_create_gender_types.rb
      create    app/models/gender_type.rb
      invoke    test_unit
      create      test/models/gender_type_test.rb
      create      test/fixtures/gender_types.yml
      invoke  resource_route
       route    resources :gender_types
      invoke  scaffold_controller
      create    app/controllers/gender_types_controller.rb
      invoke    erb
      create      app/views/gender_types
      create      app/views/gender_types/index.html.erb
      create      app/views/gender_types/edit.html.erb
      create      app/views/gender_types/show.html.erb
      create      app/views/gender_types/new.html.erb
      create      app/views/gender_types/_form.html.erb
      invoke    test_unit
      create      test/controllers/gender_types_controller_test.rb
      invoke    helper
      create      app/helpers/gender_types_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/gender_types/index.json.jbuilder
      create      app/views/gender_types/show.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/gender_types.coffee
      invoke    scss
      create      app/assets/stylesheets/gender_types.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss

C:\Users\don\Documents\Work\people>
> rem Let's migrate the database changes
> rake:dbmigrate
== 20150824003934 CreateGenderTypes: migrating ================================
-- create_table(:gender_types)
   -> 0.0830s
== 20150824003934 CreateGenderTypes: migrated (0.0840s) =======================

C:\Users\don\Documents\Work\people>
> rem Now let's start up the app and try it out
> rails server --help
Usage: rails server [mongrel, thin etc] [options]
    -p, --port=port                  Runs Rails on the specified port.
                                     Default: 3000
    -b, --binding=IP                 Binds Rails to the specified IP.
                                     Default: localhost
    -c, --config=file                Uses a custom rackup configuration.
    -d, --daemon                     Runs server as a Daemon.
    -u, --debugger                   Enables the debugger.
    -e, --environment=name           Specifies the environment to run this server under (test/development/production).
                                     Default: development
    -P, --pid=pid                    Specifies the PID file.
                                     Default: tmp/pids/server.pid

    -h, --help                       Shows this help message.
Exiting

C:\Users\don\Documents\Work\people>
> rails server --port=80
Ctrl-C

> rem That worked great, so let's create the rest of the type (code) tables:
>rails generate scaffold person_type code:string description:string active_datetime:datetime inactive_datetime:datetime
rails generate scaffold identifier_type code:string description:string active_datetime:datetime inactive_datetime:datetime
rails generate scaffold industrial_hygiene_job_type code:string description:string active_datetime:datetime inactive_datetime:datetime
rails generate scaffold location_type code:string description:string active_datetime:datetime inactive_datetime:datetime
rails generate scaffold organization_type code:string description:string active_datetime:datetime inactive_datetime:datetime
rails generate scaffold position_type code:string description:string active_datetime:datetime inactive_datetime:datetime
> rake db:migrate
> rem Let's create the people table:
> rails generate scaffold person first_name:string middle_name:string last_name:string birth_datetime:datetime gender_type_id:integer person_type_id:integer
> rake db:migrate
> rem Let's create the HR tables:
> rails generate scaffold identifier identifier_type_id:integer value:string active_datetime:datetime inactive_datetime:datetime
rails generate scaffold industrial_hygiene_job industrial_hygiene_job_type_id:integer parent_id:integer code:string description:string active_datetime:datetime inactive_datetime:datetime level:integer context_id:string context_code:string context_description:string
rails generate scaffold location location_type_id:integer parent_id:integer code:string description:string active_datetime:datetime inactive_datetime:datetime level:integer context_id:string context_code:string context_description:string
rails generate scaffold organization organization_type_id:integer parent_id:integer code:string description:string active_datetime:datetime inactive_datetime:datetime level:integer context_id:string context_code:string context_description:string
rails generate scaffold position position_type_id:integer parent_id:integer code:string description:string active_datetime:datetime inactive_datetime:datetime level:integer context_id:string context_code:string context_description:string
> rake db:migrate
> rem Now let's create the relations
> rails generate scaffold person_identifier person_id:integer identifier_id:integer active_datetime:datetime inactive_datetime:datetime
rails generate scaffold person_industrial_hygiene_job person_id:integer industrial_hygiene_job_id:integer active_datetime:datetime inactive_datetime:datetime
rails generate scaffold person_location person_id:integer location_id:integer active_datetime:datetime inactive_datetime:datetime
rails generate scaffold person_organization person_id:integer organization_id:integer active_datetime:datetime inactive_datetime:datetime
rails generate scaffold person_position person_id:integer position_id:integer active_datetime:datetime inactive_datetime:datetime
> rake db:migrate
> Now we need to add FKs. We'll do this using PostgreSQL's psql and a script!









</pre>