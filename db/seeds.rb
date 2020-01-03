# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lady_child_array = ['トップス','ジャケット/アウター','パンツ','スカート','ワンピース','靴','ルームウェア/パジャマ','レッグウェア','帽子','バッグ','アクセサリー','ヘアアクセサリー','小物','時計','ウィッグ/エクステ','浴衣/水着','スーツ/フォーマル/ドレス','マタニティ','その他']
#レディースの孫カテゴリー配列
lady_grandchild_array = [['すべて','Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','キャミソール','タンクトップ','ホルターネック','ニット/セーター','チュニック','カーディガン/ボレロ','アンサンブル','ベスト/ジレ','パーカー','トレーナー/スウェット','ベアトップ/チューブトップ','ジャージ','その他'], ['すべて','テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ダウンベスト','ジャンパー/ブルゾン','ポンチョ','ロングコート','トレンチコート','ダッフルコート','ピーコート','チェスターコート','モッズコート','スタジャン','毛皮/ファーコート','スプリングコート','スカジャン','その他'], ['すべて','デニム/ジーンズ','ショートパンツ','カジュアルパンツ','ハーフパンツ','チノパン','ワークパンツ/カーゴパンツ','クロップドパンツ','サロペット/オーバーオール','オールインワン','サルエルパンツ','ガウチョパンツ','その他'], ['すべて','ミニスカート','ひざ丈スカート','ロングスカート','キュロット','その他'], ['すべて','ミニワンピース','ひざ丈ワンピース','ロングワンピース','その他'], ['すべて','ハイヒール/パンプス','ブーツ','サンダル','スニーカー','ミュール','モカシン','ローファー/革靴','フラットシューズ/バレエシューズ','長靴/レインシューズ','その他'], ['すべて','パジャマ','ルームウェア'], ['すべて','ソックス','スパッツ/レギンス','ストッキング/タイツ','レッグウォーマー','その他'], ['すべて','ニットキャップ/ビーニー','ハット','ハンチング/ベレー帽','キャップ','キャスケット','麦わら帽子','その他'], ['すべて','ハンドバッグ','トートバッグ','エコバッグ','リュック/バックパック','ボストンバッグ','スポーツバッグ','ショルダーバッグ','クラッチバッグ','ポーチ/バニティ','ボディバッグ/ウェストバッグ','マザーズバッグ','メッセンジャーバッグ','ビジネスバッグ','旅行用バッグ/キャリーバッグ','ショップ袋','和装用バッグ','かごバッグ','その他'], ['すべて','ネックレス','ブレスレット','バングル/リストバンド','リング','ピアス(片耳用)','ピアス(両耳用)','イヤリング','アンクレット','ブローチ/コサージュ','チャーム','その他'], ['すべて','ヘアゴム/シュシュ','ヘアバンド/カチューシャ','ヘアピン','その他'], ['すべて','長財布','折り財布','コインケース/小銭入れ','名刺入れ/定期入れ','キーケース','キーホルダー','手袋/アームカバー','ハンカチ','ベルト','マフラー/ショール','ストール/スヌード','バンダナ/スカーフ','ネックウォーマー','サスペンダー','サングラス/メガネ','モバイルケース/カバー','手帳','イヤマフラー','傘','レインコート/ポンチョ','ミラー','タバコグッズ','その他'], ['すべて','腕時計(アナログ)','腕時計(デジタル)','ラバーベルト','レザーベルト','金属ベルト','その他'], ['すべて','前髪ウィッグ','ロングストレート','ロングカール','ショートストレート','ショートカール','その他'], ['すべて','浴衣','着物','振袖','長襦袢/半襦袢','水着セパレート','水着ワンピース','水着スポーツ用','その他'], ['すべて','スカートスーツ上下','パンツスーツ上下','ドレス','パーティーバッグ','シューズ','ウェディング','その他'], ['すべて','トップス','アウター','インナー','ワンピース','パンツ/スパッツ','スカート','パジャマ','授乳服','その他'], ['すべて','コスプレ','下着','その他']]

parent = Category.create(name: 'レディース')
lady_child_array.each_with_index do |child, i|
child = parent.children.create(name: child)
lady_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end

men = Category.create(:name=>"メンズ")

men_tops = men.children.create(:name=>"トップス")
men_jacket = men.children.create(:name=>"ジャケット/アウター")

men_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"その他"}])
men_jacket.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"その他"}])


[
  ['daissh05', 'buy0@test.com', '山田', '太郎', 'ヤマダ', 'タロウ', '2012', '1', '1','09012345678', '123-4567', '北海道', '名古屋市', '2', '', '', '','hoge1233','hoge1233','hoge1233','',],
  ['daissh06', 'buy1@test.com', '山田', '花子', 'ヤマダ', 'ハナコ', '2012', '1', '1','09012345678', '123-4567', '北海道', '名古屋市', '2', '', '', '','hoge1235','hoge1235','hoge1235','',],
  ['daissh07', 'buy2@test.com', '伊藤', '花子', 'イトウ', 'ハナコ', '2012', '1', '1','09012345678', '123-4567', '北海道', '名古屋市', '2', '', '', '','hoge1236','hoge1236','hoge1236','',],
  ['daissh08', 'buy3@test.com', '加藤', '太郎', 'カトウ', 'タロウ', '2012', '1', '1','09012345678', '123-4567', '北海道', '名古屋市', '2', '', '', '','hoge1237','hoge1237','hoge1237','',],
].each do |nickname, email, last_name, first_name, last_name_kana, first_name_kana, birthdate_year, birthdate_month, birthdate_day, phone_number, address_number, address_prefecture, address_name, address_block, address_building, address_phone_number, introduce, password, reset_password_token, reset_password_sent_at, remember_created_at|
  User.create!(
    { nickname: nickname,
      email: email,
      last_name: last_name,
      first_name: first_name,
      last_name_kana: last_name_kana,
      first_name_kana: first_name_kana,
      birthdate_year: birthdate_year,
      birthdate_month: birthdate_month,
      birthdate_day: birthdate_day,
      phone_number: phone_number,
      address_number: address_number,
      address_prefecture: address_prefecture,
      address_name: address_name,
      address_block: address_block,
      address_building: address_building,
      address_phone_number: address_phone_number,
      introduce:introduce,
      password: password,
      reset_password_token: reset_password_token,
      reset_password_sent_at: reset_password_sent_at,
      remember_created_at: remember_created_at,

        }
  )
end


  [
    'ナイキ','グッチ','シャネル',

  ].each do |brandname|
    Brand.create!(
      { brandname: brandname 
          }
    )
  end


[
  ['ユニクロジャケット', '0', '良品です！', '1', 'M', '3', '美品', '出品者負担', '北海道','2-3日', '1800', '1', '1',],
  ['レディースジャケット', '0', '良品です！', '1', 'M', '2', '美品', '出品者負担', '横浜','5日', '3200', '1', '1',],
  ['おすすめレディースジャケット', '0', '良品です！', '1', 'M', '3', '美品', '出品者負担', '北海道','2-3日', '5600', '1', '1',],
  ['GUコーデ', '0', '良品です！', '1', 'M', '3', '美品', '出品者負担', '青森','2-3日', '2600', '1', '1',],
  ['冬アウター', '0', '良品です！', '1', 'M', '3', '美品', '出品者負担', '岩手','3年', '1300', '1', '1',],
  ['お気に入りジャケット', '0', '良品です！', '1', 'M', '2', '美品', '購入者負担', '秋田','1.5年', '4200', '1', '1',],
  ['ユニクロ あったかジャケット', '0', '良品です！', '1', 'M', '3', '美品', '購入者負担', '栃木','1日', '1400', '1', '1',],
  ['Century21 ジャケット', '0', '良品です！', '1', 'M', '3', '美品', '購入者負担', '東京','5日', '2100', '1', '1',],
  ['カシミア ジャケット', '0', '良品です！', '1', 'M', '3', '美品', '購入者負担', '東京','5日', '6800', '1', '1',],
  ['Forever21 アウター', '0', '良品です！', '1', 'M', '3', '美品', '購入者負担', '東京','5日', '2100', '1', '1',],
  ['ZARA アウター', '0', '良品です！', '219', 'M', '3', '美品', '購入者負担', '東京','5日', '7000', '1', '1',],
  ['冬アウター', '0', '良品です！', '219', 'M', '2', '美品', '出品者負担', '岩手','3年', '1300', '1', '1',],
  ['お気に入りジャケット', '0', '良品です！', '219', 'M', '1', '美品', '購入者負担', '秋田','1.5年', '4200', '1', '1',],
  ['ユニクロ あったかジャケット', '0', '良品です！', '219', 'M', '1', '美品', '購入者負担', '栃木','1日', '1400', '1', '1',],
  ['Century21 ジャケット', '0', '良品です！', '219', 'M', '1', '美品', '購入者負担', '東京','5日', '2100', '1', '1',],
  ['カシミア ジャケット', '0', '良品です！', '219', 'M', '3', '美品', '購入者負担', '東京','5日', '6800', '1', '1',],
  ['Forever21 アウター', '0', '良品です！', '219', 'M', '1', '美品', '購入者負担', '東京','5日', '2100', '1', '1',],
  ['おすすめレディースジャケット', '0', '良品です！', '219', 'M', '3', '美品', '出品者負担', '北海道','2-3日', '5600', '1', '1',],
].each do |name, status, body, category_id, size, brand_id, condition, burden, region, sending_days, price, saler_id, buyer_id|
  Item.create!(
    { name: name,
      status: status,
      body: body,
      category_id: category_id,
      size: size,
      brand_id: brand_id,
      condition: condition,
      burden: burden,
      region: region,
      sending_days: sending_days,
      price: price,
      saler_id: saler_id,
      buyer_id: buyer_id,
        }
  )
end

[
  ['https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQdp_WF__T4GtC2A-pa9-FhSYQtRpk7QtDU9QigpiChhswjTrtid1-ZyShmtze4emV9CGBcsPD2Gf3APvpqvKbXC_gYCJRxghdMebw_PYz_&usqp=CAc', '1'],
  ['https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcREeB_1KQcUmI53sLSP7A6lWQFYIjH0cyi1SXqCyRcEowEoVl8WQw44i03LPtt4yMJVK08_36IlkV_2w2zGVeYdyQo81zogb7cSrFKh8VIwsbolJAJFbX1G&usqp=CAc', '1'],
  ['https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQszI3hYwjEflsK0sIdLXX9zshkdTp7OJOxJoLJ-IC9IsF4cDWfg65EDZIJO4AQMEaah3yCbvCToQiExfHy30Lzy7iNKbHWTmBRXrV5IxxlQt8hRfadTJr6&usqp=CAc', '1'],
  ['https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT3AW7usaZBpFkuSO4E8Qjfk1soYYGDBnbSrZHnC6zc1RAZM4DMazi9tx4LCD9QdwN9RZlgUg5U3KUyiZrW3QwmjFdpg_ep9VYRPi6Htg8&usqp=CAc', '1'],
  ['https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTkqxkqQYTHTxmbzW58Y7VS5Ch9Ul2tksqyRQgaMDZ9t3yyHHSI3MAwPGIUg_T23PE7FjEYDVM4XxDbxsv5KdHe2TYGO--hGgdezOHq6c9lOI_gSZs7ttwSmw&usqp=CAc', '2'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpxC0lU75UJmfTttp6mpATJD5_ywzB9hwJPDYw2FmMDOxMAwN1ug&s', '2'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQingvKhLfizU19SWceunurEGz8YQeZsq0B8HAaCKBUzS933tkgJQ&s', '3'],
  ['https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRVSBh5IBgUjbDwK9jJWpS_uG4vX81n63JsGcntnW6_dT-X4SgJCmufpevyZOPBQUfGiHOMaaT0ItdSlCnSXUeS8gkYVsP3ghgsd1JOuW1-SbIjca-klHhZ&usqp=CAc', '4'],
  ['https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcToeydj75R_xSyERt7YmE4Z-TuGNaaGHuDUcF8JPtBrs3t81fCEd6_2bKX_d2tzN8tK2Gsgtx8-4aMFpDyV4sNHy3KDGSwxoSRIbp10i0k1FfCYNLBTKlgf&usqp=CAc', '5'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_kTkLP9jvIMmcwU97gxjhFuhBVWbK2cmPlf1DpVt-2_Z3WZAl&s', '6'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4G1lkBeJAugRKRYGiloTsinbLCsEzuyVjI8y_2sI07QxZuf7Amg&s', '7'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZQpD9_kJSHpFpGqVpsyoQ5k5FQS-2Eivt2-47dnX3hsM24t6r5Q&s', '8'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE8HBD67pbUX_rmM_8L6HfUYLFfj2rtBESVK0YcJObS1bM4DXP&s', '9'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIs6XbatXLysbguFKw6UXPnHJLHDyDJhHmynHx2saCyJM2MtcY&s', '10'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBC6g3H6YwwFdc6U9UgvMrUrLYWOV1JQ9_ehlYEL2qUG3T9f8e&s', '11'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtJ_xEVfaDp0PcKi_1mNAOJlUzjMaiLIpKQVmk6lldP2fpncXvDw&s', '12'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8Sn1-ASnRAx0tHuM0-S0HJRey-tSqFNg77PTqIourQCv4i2q9RQ&s', '13'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwXoHUuQKctFVa_2rkVuBO_Qy7e-YDc6P_BBoxTTsutJVWYG1J&s', '14'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY-Ij0NZZlia7B1NaZs8m71bI-MPzEclXF231eF36LAmA5xJD-_w&s', '15'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR62VmUWfmWeGQqyU9q_fXDmwUH8FBaVwKyfmTnsgqiKjau03lDvA&s', '16'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6trj-H7Vf-QKbNvn2OBy_vYbg-WnmPD_q7ieaqpc8v7frhTkj&s', '17'],
  ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpYp6nu44qB-ufp0diZUeAoTwUMEnrqDWUrhiGpi7aUA7REfEK&s', '18'],

  
].each do |image, item_id|
  Image.create!(
    { image: image,
      item_id: item_id,
        }
  )
end