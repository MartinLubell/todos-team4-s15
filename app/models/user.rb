class User < ActiveRecord::Base
  has_one :account
  has_many :todolists
  has_many :usertodoitems, through: :todolists, source: :todoitems
end
