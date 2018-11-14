How To Hide Your API Keys 🔑
============================

1. Add to your Gemfile the [dotenv gem](https://github.com/bkeepers/dotenv):

  **Manually** - edit your `Gemfile`

  ```
  gem 'dotenv'
  ```

  **Automatically Using Bundler** - run on command line in root of project

  ```
  bundle add dotenv
  ```

2. In your `/config/environment.rb` file, add `Dotenv.load` **after** you require all of your gems via bundler:

  ```ruby
  require 'bundler'
  Bundler.require

  Dotenv.load

  # rest of code here
  ```

3. Create a `.env` file in the root directory of your project.
4. Add `.env` to your `.gitignore` file:

  ```
  .DS_Store
  .idea

  log
  node_modules
  out
  tmp

  *.iml
  *.log
  *.swp

  db/*.db
  db/schema.rb

  .env
  ```

5. Git `add`, `commit`, and `push` your changes.
6. **Double check yourself!** Go to your Github repository to make sure that the `.env` file was not added.
7. Add your keys, etc. to your `.env` file like this:

  ```sh
  API_KEY=asdkff43qt4tfrg54ytg
  KEY_IS_IN_ALL_CAPS=the_actual_key_is_after_the_equals_sign
  ```

8. Access the values stored in those keys in your code like this:

  ```ruby
  ENV['API_KEY']
  ENV['KEY_IS_IN_ALL_CAPS']
  ```

9. Since all your keys are in the ignored `.env` file, you will never accidentally commit them! Yay!!

---

## Example Code

Test out the example code by making a `.env` file for this project and add `API_KEY` and `KEY_IS_IN_ALL_CAPS` to that file. Run the example with `rake example` to see it in action!

Take a look at the `Rakefile` task to see it being used.
