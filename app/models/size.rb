class Size < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '小型' },
      { id: 3, name: '中型' },
      { id: 4, name: '大型' }
    ]

    include ActiveHash::Associations
    has_many :dogs

end