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
  ['ユニクロジャケット', '0', '良品です！', '1', 'M', 'ナイキ', '新品、未使用', '送料込み（出品者負担）', '北海道','2-3日', '1800', '1', '1',],
  ['レディースジャケット', '0', '良品です！', '64', 'M', '', '未使用に近い', '着払い（購入者負担）', '横浜','5日', '3200', '1', '1',],
  ['おすすめレディースジャケット', '0', '良品です！', '1', 'M', 'シャネル', '目立った傷や汚れなし', '送料込み（出品者負担）', '北海道','2-3日', '5600', '1', '1',],
  ['GUコーデ', '0', '良品です！', '223', 'M', '', 'やや傷や汚れあり', '着払い（購入者負担）', '青森','2-3日', '2600', '1', '1',],
  ['冬アウター', '0', '良品です！', '1', 'M', 'ナイキ', '傷や汚れあり', '送料込み（出品者負担）', '岩手','3年', '1300', '1', '1',],
  ['お気に入りジャケット', '0', '良品です！', '1', 'M', 'シャネル', '全体的に状態が悪い', '着払い（購入者負担）', '秋田','1.5年', '4200', '1', '1',],
  ['ユニクロ あったかジャケット', '0', '良品です！', '1', 'M', 'ナイキ', '新品、未使用', '送料込み（出品者負担）', '栃木','1日', '1400', '1', '1',],
  ['Century21 ジャケット', '0', '良品です！', '1', 'M', 'シャネル', '未使用に近い', '着払い（購入者負担）', '東京','5日', '2100', '1', '1',],
  ['カシミア ジャケット', '0', '良品です！', '1', 'M', 'ナイキ', '目立った傷や汚れなし', '送料込み（出品者負担）', '東京','5日', '6800', '1', '1',],
  ['Forever21 アウター', '0', '良品です！', '1', 'M', 'シャネル', 'やや傷や汚れあり', '着払い（購入者負担）', '東京','5日', '2100', '1', '1',],
  ['ZARA アウター', '0', '良品です！', '223', 'M', '', '傷や汚れあり', '送料込み（出品者負担）', '東京','5日', '7000', '1', '1',],
  ['冬アウター', '0', '良品です！', '64', 'M', '', '全体的に状態が悪い', '着払い（購入者負担）', '岩手','3年', '1300', '1', '1',],
  ['お気に入りジャケット', '0', '良品です！', '223', 'M', '', '新品、未使用', '送料込み（出品者負担）', '秋田','1.5年', '4200', '1', '1',],
  ['ユニクロ あったかジャケット', '0', '良品です！', '64', 'M', '', '未使用に近い', '着払い（購入者負担）', '栃木','1日', '1400', '1', '1',],
  ['Century21 ジャケット', '0', '良品です！', '223', 'M', '', '目立った傷や汚れなし', '送料込み（出品者負担）', '東京','5日', '2100', '1', '1',],
  ['カシミア ジャケット', '0', '良品です！', '64', 'M', '', 'やや傷や汚れあり', '着払い（購入者負担）', '東京','5日', '6800', '1', '1',],
  ['Forever21 アウター', '0', '良品です！', '223', 'M', '', '傷や汚れあり', '送料込み（出品者負担）', '東京','5日', '2100', '1', '1',],
  ['おすすめレディースジャケット', '0', '良品です！', '64', 'M', '', '全体的に状態が悪い', '着払い（購入者負担）', '北海道','2-3日', '5600', '1', '1',],
].each do |name, status, body, category_id, size, brandname, condition, burden, region, sending_days, price, saler_id, buyer_id|
  Item.create!(
    { name: name,
      status: status,
      body: body,
      category_id: category_id,
      size: size,
      brandname: brandname,
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

Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "1")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "2")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "3")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "4")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "5")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "6")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "7")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "8")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "9")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "10")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "11")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "12")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "13")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "14")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "15")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "16")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "17")
Image.create!(image: open("#{Rails.root}/db/fixtures/S__17391630のコピー.jpg"), item_id: "18")
