class Year < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '1歳未満' },
      { id: 3, name: '1歳〜5歳' },
      { id: 4, name: '6歳〜10際' },
      { id: 5, name: '11歳〜15歳'},
      { id: 6, name: '16歳〜20歳'},
      { id: 7, name: '21歳〜25歳'}
    ]

    include ActiveHash::Associations
    has_many :dogs
    has_many :cats

end