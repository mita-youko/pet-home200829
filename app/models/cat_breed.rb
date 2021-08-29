class CatBreed < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: 'アメリカン・カール' },
      { id: 3, name: 'アメリカン・ショートヘア' },
      { id: 4, name: 'エキゾチック' },
      { id: 5, name: 'エキゾチック・ショートヘア' },
      { id: 6, name: 'サイベリアン' },
      { id: 7, name: '雑種' },
      { id: 8, name: 'スコティッシュ・フォールド' },
      { id: 9, name: 'ソマリ' },
      { id: 10, name: 'ノルウェージャン・フォレスト・キャット' },
      { id: 11, name: 'ブリティッシュ・ショートヘア' },
      { id: 12, name: 'ペルシャ' },
      { id: 13, name: 'ペルシャ（チンチラ）' },
      { id: 14, name: 'ベンガル' },
      { id: 15, name: 'マンチカン' },
      { id: 16, name: 'ミヌエット' },
      { id: 17, name: 'メインクーン' },
      { id: 18, name: 'ラガマフィン' },
      { id: 19, name: 'ラグドール' },
      { id: 20, name: 'ロシアンブルー' },
      { id: 21, name: '日本猫' },
      { id: 22, name: 'その他' }
    ]

    include ActiveHash::Associations
    has_many :cats

end