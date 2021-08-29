class MemberType < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '個人' },
      { id: 3, name: '団体' }
    ]

    include ActiveHash::Associations
    has_many :users
end