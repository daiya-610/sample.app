ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
repuire "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # 特定のワーカーではテストをパラレル実行する
  parallelize(workers: :number_of_processors, with: :threads)

  # すべてのテストがアルファベット順に実行されるよう、
  #test/fixtures/*.ymlにあるすべてのfixtureをセットアップする
  fixtures :all

  # （すべてのテストで使うその他のヘルパーメソッドは省略）
end
