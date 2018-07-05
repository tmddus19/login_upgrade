class User < ActiveRecord::Base
    has_secure_password
    # .password("비밀번호")
    # -> 암호화 -> password_digest
end
