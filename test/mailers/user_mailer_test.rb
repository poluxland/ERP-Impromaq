require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  fixtures :medidas

  test "medidas" do
    mail = UserMailer.with(user: medidas(:one)).medidas
    assert_includes mail.to, "andrea.gongora-externo@meloncementos.cl"
    assert_includes mail.to, "miguel.basulto@meloncementos.cl"
  end

end
