# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# lady_child_array = ['トップス','ジャケット/アウター','パンツ','スカート','ワンピース','靴','ルームウェア/パジャマ','レッグウェア']
# lady_grandchild_array = [['すべて','Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','キャミソール','タンクトップ','ホルターネック','ニット/セーター','チュニック','カーディガン/ボレロ','アンサンブル','ベスト/ジレ','パーカー','トレーナー/スウェット','ベアトップ/チューブトップ','ジャージ','その他'], ['すべて','テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ダウンベスト','ジャンパー/ブルゾン','ポンチョ','ロングコート','トレンチコート','ダッフルコート','ピーコート','チェスターコート','モッズコート','スタジャン','毛皮/ファーコート','スプリングコート','スカジャン','その他'], ['すべて','デニム/ジーンズ','ショートパンツ','カジュアルパンツ','ハーフパンツ','チノパン','ワークパンツ/カーゴパンツ','クロップドパンツ','サロペット/オーバーオール','オールインワン','サルエルパンツ','ガウチョパンツ','その他'], ['すべて','ミニスカート','ひざ丈スカート','ロングスカート','キュロット','その他'], ['すべて','ミニワンピース','ひざ丈ワンピース','ロングワンピース','その他'], ['すべて','ハイヒール/パンプス','ブーツ','サンダル','スニーカー','ミュール','モカシン','ローファー/革靴','フラットシューズ/バレエシューズ','長靴/レインシューズ','その他'], ['すべて','パジャマ','ルームウェア'], ['すべて','ソックス','スパッツ/レギンス','ストッキング/タイツ','レッグウォーマー','その他']]
# parent = Category.create(name: 'レディース')
# lady_child_array.each_with_index do |child, i|
# child = parent.children.create(name: child)
# lady_grandchild_array[i].each do |grandchild|
#     child.children.create(name: grandchild)
#   end
# end

# men = Category.create(name:"メンズ")
# men_tops = men.children.create(name:"トップス")
# men_jacket = men.children.create(name:"ジャケット/アウター")
# men_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"}, {name:"Tシャツ/カットソー(七分/長袖)"},{name:"その他"}])
# men_jacket.children.create([{name:"テーラードジャケット"}, {name:"ノーカラージャケット"}, {name:"Gジャン/デニムジャケット"},{name:"その他"}])
lady_child_array = ['トップス','ジャケット/アウター','パンツ','スカート','ワンピース','靴','ルームウェア/パジャマ','レッグウェア','帽子','バッグ','アクセサリー','ヘアアクセサリー','小物','時計','ウィッグ/エクステ','浴衣/水着','スーツ/フォーマル/ドレス','マタニティ','その他']
lady_grandchild_array = [['すべて','Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','キャミソール','タンクトップ','ホルターネック','ニット/セーター','チュニック','カーディガン/ボレロ','アンサンブル','ベスト/ジレ','パーカー','トレーナー/スウェット','ベアトップ/チューブトップ','ジャージ','その他'], ['すべて','テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ダウンベスト','ジャンパー/ブルゾン','ポンチョ','ロングコート','トレンチコート','ダッフルコート','ピーコート','チェスターコート','モッズコート','スタジャン','毛皮/ファーコート','スプリングコート','スカジャン','その他'], ['すべて','デニム/ジーンズ','ショートパンツ','カジュアルパンツ','ハーフパンツ','チノパン','ワークパンツ/カーゴパンツ','クロップドパンツ','サロペット/オーバーオール','オールインワン','サルエルパンツ','ガウチョパンツ','その他'], ['すべて','ミニスカート','ひざ丈スカート','ロングスカート','キュロット','その他'], ['すべて','ミニワンピース','ひざ丈ワンピース','ロングワンピース','その他'], ['すべて','ハイヒール/パンプス','ブーツ','サンダル','スニーカー','ミュール','モカシン','ローファー/革靴','フラットシューズ/バレエシューズ','長靴/レインシューズ','その他'], ['すべて','パジャマ','ルームウェア'], ['すべて','ソックス','スパッツ/レギンス','ストッキング/タイツ','レッグウォーマー','その他'], ['すべて','ニットキャップ/ビーニー','ハット','ハンチング/ベレー帽','キャップ','キャスケット','麦わら帽子','その他'], ['すべて','ハンドバッグ','トートバッグ','エコバッグ','リュック/バックパック','ボストンバッグ','スポーツバッグ','ショルダーバッグ','クラッチバッグ','ポーチ/バニティ','ボディバッグ/ウェストバッグ','マザーズバッグ','メッセンジャーバッグ','ビジネスバッグ','旅行用バッグ/キャリーバッグ','ショップ袋','和装用バッグ','かごバッグ','その他'], ['すべて','ネックレス','ブレスレット','バングル/リストバンド','リング','ピアス(片耳用)','ピアス(両耳用)','イヤリング','アンクレット','ブローチ/コサージュ','チャーム','その他'], ['すべて','ヘアゴム/シュシュ','ヘアバンド/カチューシャ','ヘアピン','その他'], ['すべて','長財布','折り財布','コインケース/小銭入れ','名刺入れ/定期入れ','キーケース','キーホルダー','手袋/アームカバー','ハンカチ','ベルト','マフラー/ショール','ストール/スヌード','バンダナ/スカーフ','ネックウォーマー','サスペンダー','サングラス/メガネ','モバイルケース/カバー','手帳','イヤマフラー','傘','レインコート/ポンチョ','ミラー','タバコグッズ','その他'], ['すべて','腕時計(アナログ)','腕時計(デジタル)','ラバーベルト','レザーベルト','金属ベルト','その他'], ['すべて','前髪ウィッグ','ロングストレート','ロングカール','ショートストレート','ショートカール','その他'], ['すべて','浴衣','着物','振袖','長襦袢/半襦袢','水着セパレート','水着ワンピース','水着スポーツ用','その他'], ['すべて','スカートスーツ上下','パンツスーツ上下','ドレス','パーティーバッグ','シューズ','ウェディング','その他'], ['すべて','トップス','アウター','インナー','ワンピース','パンツ/スパッツ','スカート','パジャマ','授乳服','その他'], ['すべて','コスプレ','下着','その他']]

parent = Category.create(name: 'レディース')
lady_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 lady_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


mens_child_array = ['トップス','ジャケット/アウター','パンツ','靴','バッグ','スーツ','帽子','アクセサリー','小物','時計','水着','レッグウェア','アンダーウェア','その他',]
mens_grandchild_array = [['すべて','Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ','ポロシャツ','タンクトップ','ニット/セーター','パーカー','カーディガン','スウェット','ジャージ','ベスト','その他'], ['すべて','テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ナイロンジャケット','フライトジャケット','ダッフルコート','ピーコート','ステンカラーコート','トレンチコート','モッズコート','チェスターコート','スタジャン','スカジャン','ブルゾン','マウンテンパーカー','ダウンベスト','ポンチョ','カバーオール','その他'], ['すべて','デニム/ジーンズ','ワークパンツ/カーゴパンツ','スラックス','チノパン','ショートパンツ','ペインターパンツ','サルエルパンツ','オーバーオール','その他'], ['すべて','スニーカー','サンダル','ブーツ','モカシン','ドレス/ビジネス','長靴/レインシューズ','デッキシューズ','その他'], ['すべて','ショルダーバッグ','トートバッグ','ボストンバッグ','リュック/バックパック','ウエストポーチ','ボディーバッグ','ドラムバッグ','ビジネスバッグ','トラベルバッグ','メッセンジャーバッグ','エコバッグ','その他'], ['すべて','スーツジャケット','スーツベスト','スラックス','セットアップ','その他'], ['すべて','キャップ','ハット','ニットキャップ/ビーニー','ハンチング/ベレー帽','キャスケット','サンバイザー','その他'], ['すべて','ネックレス','ブレスレット','バングル/リストバンド','リング','ピアス(片耳用)','ピアス(両耳用)','アンクレット','その他'], ['すべて','長財布','折り財布','マネークリップ','コインケース/小銭入れ','名刺入れ/定期入れ','キーケース','キーホルダー','ネクタイ','手袋','ハンカチ','ベルト','マフラー','ストール','バンダナ','ネックウォーマー','サスペンダー','ウォレットチェーン','サングラス/メガネ','モバイルケース/カバー','手帳','ストラップ','ネクタイピン','カフリンクス','イヤマフラー','傘','レインコート','ミラー','タバコグッズ','その他'], ['すべて','腕時計(アナログ)','腕時計(デジタル)','ラバーベルト','レザーベルト','金属ベルト','その他'], ['すべて','一般水着','スポーツ用','アクセサリー','その他'], ['すべて','ソックス','レギンス/スパッツ','レッグウォーマー','その他'], ['すべて','トランクス','ボクサーパンツ','その他'], ['すべて']]

parent = Category.create(name: 'メンズ')
mens_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 mens_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


baby_child_array = ['ベビー服(女の子用) ~95cm','ベビー服(男の子用) ~95cm','ベビー服(男女兼用) ~95cm','キッズ服(女の子用) 100cm~','キッズ服(男の子用) 100cm~','キッズ服(男女兼用) 100cm~','キッズ靴','子ども用ファッション小物','おむつ/トイレ/バス','外出/移動用品','授乳/食事','ベビー家具/寝具/室内用品','おもちゃ','行事/記念品','その他']
baby_grandchild_array = [['すべて','トップス','アウター','パンツ','スカート','ワンピース','ベビードレス','おくるみ','下着/肌着','パジャマ','ロンパース','その他'], ['すべて','トップス','アウター','パンツ','おくるみ','下着/肌着','パジャマ','ロンパース','その他'], ['すべて','トップス','アウター','パンツ','おくるみ','下着/肌着','パジャマ','ロンパース','その他'], ['すべて','コート','ジャケット/上着','トップス(Tシャツ/カットソー)','トップス(トレーナー)','トップス(チュニック)','トップス(タンクトップ)','トップス(その他)','スカート','パンツ','ワンピース','セットアップ','パジャマ','フォーマル/ドレス','和服','浴衣','甚平','水着','その他'], ['すべて','コート','ジャケット/上着','トップス(Tシャツ/カットソー)','トップス(トレーナー)','トップス(その他)','パンツ','セットアップ','パジャマ','フォーマル/ドレス','和服','浴衣','甚平','水着','その他'], ['すべて','コート','ジャケット/上着','トップス(Tシャツ/カットソー)','トップス(トレーナー)','トップス(その他)','ボトムス','パジャマ','その他'], ['すべて','スニーカー','サンダル','ブーツ','長靴','その他'], ['すべて','靴下/スパッツ','帽子','エプロン','サスペンダー','タイツ','ハンカチ','バンダナ','ベルト','マフラー','傘','手袋','スタイ','バッグ','その他'], ['すべて','おむつ用品','おまる/補助便座','トレーニングパンツ','ベビーバス','お風呂用品','その他'], ['すべて','ベビーカー','抱っこひも/スリング','チャイルドシート','その他'], ['すべて','ミルク','ベビーフード','ベビー用食器','その他'], ['すべて','ベッド','布団/毛布','イス','たんす','その他'], ['すべて','おふろのおもちゃ','がらがら','オルゴール','ベビージム','手押し車/カタカタ','知育玩具','その他'], ['すべて','お宮参り用品','お食い初め用品','アルバム','手形/足形','その他'], ['すべて','母子手帳用品','その他']]

parent = Category.create(name: 'ベビー・キッズ')
baby_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 baby_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


interior_child_array = ['キッチン/食器','ベッド/マットレス','ソファ/ソファベッド','椅子/チェア','机/テーブル','収納家具','ラグ/カーペット/マット','カーテン/ブラインド','ライト/照明','寝具','インテリア小物','季節/年中行事','その他']
interior_grandchild_array = [['すべて','食器','調理器具','収納/キッチン雑貨','弁当用品','カトラリー(スプーン等)','テーブル用品','容器','エプロン','アルコールグッズ','浄水機','その他'], ['すべて','セミシングルベッド','シングルベッド','セミダブルベッド','ダブルベッド','ワイドダブルベッド','クイーンベッド','キングベッド','脚付きマットレスベッド','マットレス','すのこベッド','ロフトベッド/システムベッド','簡易ベッド/折りたたみベッド','収納付き','その他'], ['すべて','ソファセット','シングルソファ','ラブソファ','トリプルソファ','オットマン','コーナーソファ','ビーズソファ/クッションソファ','ローソファ/フロアソファ','ソファベッド','応接セット','ソファカバー','リクライニングソファ','その他'], ['すべて','一般','スツール','ダイニングチェア','ハイバックチェア','ロッキングチェア','座椅子','折り畳みイス','デスクチェア','その他'], ['すべて','こたつ','カウンターテーブル','サイドテーブル','センターテーブル','ダイニングテーブル','座卓/ちゃぶ台','アウトドア用','パソコン用','事務机/学習机','その他'], ['すべて','リビング収納','キッチン収納','玄関/屋外収納','バス/トイレ収納','本収納','本/CD/DVD収納','洋服タンス/押入れ収納','電話台/ファックス台','ドレッサー/鏡台','棚/ラック','ケース/ボックス','その他'], ['すべて','ラグ','カーペット','ホットカーペット','玄関/キッチンマット','トイレ/バスマット','その他'], ['すべて','カーテン','ブラインド','ロールスクリーン','のれん','その他'], ['すべて','蛍光灯/電球','天井照明','フロアスタンド','その他'], ['すべて','布団/毛布','枕','シーツ/カバー','その他'], ['すべて','ごみ箱','ウェルカムボード','オルゴール','クッション','クッションカバー','スリッパラック','ティッシュボックス','バスケット/かご','フォトフレーム','マガジンラック','モビール','花瓶','灰皿','傘立て','小物入れ','置時計','掛時計/柱時計','鏡(立て掛け式)','鏡(壁掛け式)','置物','風鈴','植物/観葉植物','その他'], ['すべて','正月','成人式','バレンタインデー','ひな祭り','子どもの日','母の日','父の日','サマーギフト/お中元','夏/夏休み','ハロウィン','敬老の日','七五三','お歳暮','クリスマス','冬一般','その他'], ['すべて']]

parent = Category.create(name: 'インテリア・住まい・小物')
interior_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 interior_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


book_child_array = ['本','漫画','雑誌','CD','DVD/ブルーレイ','レコード','テレビゲーム']
book_grandchild_array = [['すべて','文学/小説','人文/社会','ノンフィクション/教養','地図/旅行ガイド','ビジネス/経済','健康/医学','コンピュータ/IT','趣味/スポーツ/実用','住まい/暮らし/子育て','アート/エンタメ','洋書','絵本','参考書','その他'], ['すべて','全巻セット','少年漫画','少女漫画','青年漫画','女性漫画','同人誌','その他'], ['すべて','アート/エンタメ/ホビー','ファッション','ニュース/総合','趣味/スポーツ','その他'], ['すべて','邦楽','洋楽','アニメ','クラシック','K-POP/アジア','キッズ/ファミリー','その他'], ['すべて','外国映画','日本映画','アニメ','TVドラマ','ミュージック','お笑い/バラエティ','スポーツ/フィットネス','キッズ/ファミリー','その他'], ['すべて','邦楽','洋楽','その他'], ['すべて','家庭用ゲーム本体','家庭用ゲームソフト','携帯用ゲーム本体','携帯用ゲームソフト','PCゲーム','その他']]

parent = Category.create(name: '本・音楽・ゲーム')
book_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 book_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


goods_child_array = ['おもちゃ','タレントグッズ','コミック/アニメグッズ','トレーディングカード','フィギュア','楽器/器材','コレクション','ミリタリー','美術品','アート用品','その他']
goods_grandchild_array = [['すべて','キャラクターグッズ','ぬいぐるみ','小物/アクセサリー','模型/プラモデル','ミニカー','トイラジコン','プラモデル','ホビーラジコン','鉄道模型','その他'], ['すべて','アイドル','ミュージシャン','タレント/お笑い芸人','スポーツ選手','その他'], ['すべて','ストラップ','キーホルダー','バッジ','カード','クリアファイル','ポスター','タオル','その他'], ['すべて','遊戯王','マジック：ザ・ギャザリング','ポケモンカードゲーム','デュエルマスターズ','バトルスピリッツ','プリパラ','アイカツ','カードファイト!! ヴァンガード','ヴァイスシュヴァルツ','プロ野球オーナーズリーグ','ベースボールヒーローズ','ドラゴンボール','スリーブ','その他'], ['すべて','コミック/アニメ','特撮','ゲームキャラクター','SF/ファンタジー/ホラー','アメコミ','スポーツ','ミリタリー','その他'], ['すべて','エレキギター','アコースティックギター','ベース','エフェクター','アンプ','弦楽器','管楽器','鍵盤楽器','打楽器','和楽器','楽譜/スコア','レコーディング/PA機器','DJ機器','DTM/DAW','その他'], ['すべて','武具','使用済切手/官製はがき','旧貨幣/金貨/銀貨/記念硬貨','印刷物','ノベルティグッズ','その他'], ['すべて','トイガン','個人装備','その他'], ['すべて','陶芸','ガラス','漆芸','金属工芸','絵画/タペストリ','版画','彫刻/オブジェクト','書','写真','その他'], ['すべて','画材','額縁','その他'], ['すべて','トランプ/UNO','カルタ/百人一首','ダーツ','ビリヤード','麻雀','パズル/ジグソーパズル','囲碁/将棋','オセロ/チェス','人生ゲーム','野球/サッカーゲーム','スポーツ','三輪車/乗り物','ヨーヨー','模型製作用品','鉄道','航空機','アマチュア無線','パチンコ/パチスロ','その他']]

parent = Category.create(name: 'おもちゃ・ホビー・グッズ')
goods_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 goods_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


beauty_child_array = ['ベースメイク','メイクアップ','ネイルケア','香水','スキンケア/基礎化粧品','ヘアケア','ボディケア','オーラルケア','リラクゼーション','ダイエット','その他']
beauty_grandchild_array = [['すべて','ファンデーション','化粧下地','コントロールカラー','BBクリーム','CCクリーム','コンシーラー','フェイスパウダー','トライアルセット/サンプル','その他'], ['すべて','アイシャドウ','口紅','リップグロス','リップライナー','チーク','フェイスカラー','マスカラ','アイライナー','つけまつげ','アイブロウペンシル','パウダーアイブロウ','眉マスカラ','トライアルセット/サンプル','メイク道具/化粧小物','美顔用品/美顔ローラー','その他'], ['すべて','ネイルカラー','カラージェル','ネイルベースコート/トップコート','ネイルアート用品','ネイルパーツ','ネイルチップ/付け爪','手入れ用具','除光液','その他'], ['すべて','香水(女性用)','香水(男性用)','ユニセックス','ボディミスト','その他'], ['すべて','化粧水/ローション','乳液/ミルク','美容液','フェイスクリーム','洗顔料','クレンジング/メイク落とし','パック/フェイスマスク','ジェル/ゲル','ブースター/導入液','アイケア','リップケア','トライアルセット/サンプル','洗顔グッズ','その他'], ['すべて','シャンプー','トリートメント','コンディショナー','リンス','スタイリング剤','カラーリング剤','ブラシ','その他'], ['すべて','オイル/クリーム','ハンドクリーム','ローション','日焼け止め/サンオイル','ボディソープ','入浴剤','制汗/デオドラント','フットケア','その他'], ['すべて','口臭防止/エチケット用品','歯ブラシ','その他'], ['すべて','エッセンシャルオイル','芳香器','お香/香炉','キャンドル','リラクゼーショングッズ','その他'], ['すべて','ダイエット食品','エクササイズ用品','体重計','体脂肪計','その他'], ['すべて','健康用品','看護/介護用品','救急/衛生用品','その他']]

parent = Category.create(name: 'コスメ・香水・美容')
beauty_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 beauty_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


appliance_child_array = ['スマートフォン/携帯電話','スマホアクセサリー','PC/タブレット','カメラ','テレビ/映像機器','オーディオ機器','美容/健康','冷暖房/空調','生活家電','その他']
appliance_grandchild_array = [['すべて','スマートフォン本体','バッテリー/充電器','携帯電話本体','PHS本体','その他'], ['すべて','Android用ケース','iPhone用ケース','カバー','イヤホンジャック','ストラップ','フィルム','自撮り棒','その他'], ['すべて','タブレット','ノートPC','デスクトップ型PC','ディスプレイ','電子ブックリーダー','PC周辺機器','PCパーツ','その他'], ['すべて','デジタルカメラ','ビデオカメラ','レンズ(単焦点)','レンズ(ズーム)','フィルムカメラ','防犯カメラ','その他'], ['すべて','テレビ','プロジェクター','ブルーレイレコーダー','DVDレコーダー','ブルーレイプレーヤー','DVDプレーヤー','映像用ケーブル','その他','すべて'], ['ポータブルプレーヤー','イヤフォン','ヘッドフォン','アンプ','スピーカー','ケーブル/シールド','ラジオ','その他'], ['すべて','ヘアドライヤー','ヘアアイロン','美容機器','電気シェーバー','電動歯ブラシ','その他'], ['すべて','エアコン','空気清浄器','加湿器','扇風機','除湿機','ファンヒーター','電気ヒーター','オイルヒーター','ストーブ','ホットカーペット','こたつ','電気毛布','その他'], ['すべて','冷蔵庫','洗濯機','炊飯器','電子レンジ/オーブン','調理機器','アイロン','掃除機','エスプレッソマシン','コーヒーメーカー','衣類乾燥機','その他'], ['すべて','その他']]

parent = Category.create(name: '家電・スマホ・カメラ')
appliance_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 appliance_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


sports_child_array = ['ゴルフ','フィッシング','自転車','トレーニング/エクササイズ','野球','サッカー/フットサル','テニス','スノーボード','スキー','その他スポーツ','アウトドア','その他']
sports_grandchild_array = [['すべて','クラブ','ウエア(男性用)','ウエア(女性用)','バッグ','シューズ(男性用)','シューズ(女性用)','アクセサリー','その他'], ['すべて','ロッド','リール','ルアー用品','ウエア','釣り糸/ライン','その他'], ['すべて','自転車本体','ウエア','パーツ','アクセサリー','バッグ','工具/メンテナンス','その他'], ['すべて','ランニング','ウォーキング','ヨガ','トレーニング用品','その他'], ['すべて','ウェア','シューズ','グローブ','バット','アクセサリー','防具','練習機器','記念グッズ','応援グッズ','その他'], ['すべて','ウェア','シューズ','ボール','アクセサリー','記念グッズ','応援グッズ','その他'], ['すべて','ラケット(硬式用)','ラケット(軟式用)','ウェア','シューズ','ボール','アクセサリー','記念グッズ','応援グッズ','その他'], ['すべて','ボード','バインディング','ブーツ(男性用)','ブーツ(女性用)','ブーツ(子ども用)','ウエア/装備(男性用)','ウエア/装備(女性用)','ウエア/装備(子ども用)','アクセサリー','バッグ','その他'], ['すべて','板','ブーツ(男性用)','ブーツ(女性用)','ブーツ(子ども用)','ビンディング','ウエア(男性用)','ウエア(女性用)','ウエア(子ども用)','ストック','その他'], ['すべて','ダンス/バレエ','サーフィン','バスケットボール','バドミントン','バレーボール','スケートボード','陸上競技','ラグビー','アメリカンフットボール','ボクシング','ボウリング','その他'], ['すべて','テント/タープ','ライト/ランタン','寝袋/寝具','テーブル/チェア','ストーブ/コンロ','調理器具','食器','登山用品','その他'], ['すべて','旅行用品','その他']]

parent = Category.create(name: 'スポーツ・レジャー')
sports_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 sports_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


handmade_child_array = ['アクセサリー(女性用)','ファッション/小物','アクセサリー/時計','日用品/インテリア','趣味/おもちゃ','キッズ/ベビー','素材/材料','二次創作物','その他']
handmade_grandchild_array = [['すべて','ピアス','イヤリング','ネックレス','ブレスレット','リング','チャーム','ヘアゴム','アンクレット','その他'], ['すべて','バッグ(女性用)','バッグ(男性用)','財布(女性用)','財布(男性用)','ファッション雑貨','その他'], ['すべて','アクセサリー(男性用)','時計(女性用)','時計(男性用)','その他'], ['すべて','キッチン用品','家具','文房具','アート/写真','アロマ/キャンドル','フラワー/ガーデン','その他'], ['すべて','クラフト/布製品','おもちゃ/人形','その他'], ['すべて','ファッション雑貨','スタイ/よだれかけ','外出用品','ネームタグ','その他'], ['すべて','各種パーツ','生地/糸','型紙/パターン','その他'], ['すべて','Ingress','クリエイターズ宇宙兄弟'], ['すべて']]

parent = Category.create(name: 'ハンドメイド')
handmade_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 handmade_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


ticket_child_array = ['音楽','スポーツ','演劇/芸能','イベント','映画','施設利用券','優待券/割引券','その他']
ticket_grandchild_array = [['すべて','男性アイドル','女性アイドル','韓流','国内アーティスト','海外アーティスト','音楽フェス','声優/アニメ','その他'], ['すべて','サッカー','野球','テニス','格闘技/プロレス','相撲/武道','ゴルフ','バレーボール','バスケットボール','モータースポーツ','ウィンタースポーツ','その他'], ['すべて','ミュージカル','演劇','伝統芸能','落語','お笑い','オペラ','サーカス','バレエ','その他'], ['すべて','声優/アニメ','キッズ/ファミリー','トークショー/講演会','その他'], ['すべて','邦画','洋画','その他'], ['すべて','遊園地/テーマパーク','美術館/博物館','スキー場','ゴルフ場','フィットネスクラブ','プール','ボウリング場','水族館','動物園','その他'], ['すべて','ショッピング','レストラン/食事券','フード/ドリンク券','宿泊券','その他'], ['すべて'] ]

parent = Category.create(name: 'チケット')
ticket_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 ticket_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end


car_child_array = ['自動車本体','自動車タイヤ/ホイール','自動車パーツ','自動車アクセサリー','オートバイ車体','オートバイパーツ','オートバイアクセサリー']
car_grandchild_array = [['すべて','国内自動車本体','外国自動車本体'], ['すべて','タイヤ/ホイールセット','タイヤ','ホイール','その他'], ['すべて','サスペンション','ブレーキ','外装、エアロパーツ','ライト','内装品、シート','ステアリング','マフラー・排気系','エンジン、過給器、冷却装置','クラッチ、ミッション、駆動系','電装品','補強パーツ','汎用パーツ','外国自動車用パーツ','その他'], ['すべて','車内アクセサリー','カーナビ','カーオーディオ','車外アクセサリー','メンテナンス用品','チャイルドシート','ドライブレコーダー','レーダー探知機','カタログ/マニュアル','セキュリティ','ETC','その他'], ['すべて'], ['すべて','タイヤ','マフラー','エンジン、冷却装置','カウル、フェンダー、外装','サスペンション','ホイール','シート','ブレーキ','タンク','ライト、ウィンカー','チェーン、スプロケット、駆動系','メーター','電装系','ミラー','外国オートバイ用パーツ','その他'], ['すべて','ヘルメット/シールド','バイクウエア/装備','アクセサリー','メンテナンス','カタログ/マニュアル','その他']]

parent = Category.create(name: '自動車・オートバイ')
car_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 car_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end



other_child_array = ['まとめ売り','ペット用品','食品','飲料/酒','日用品/生活雑貨/旅行','アンティーク/コレクション','文房具/事務用品','事務/店舗用品','その他']
other_grandchild_array = [['すべて'], ['すべて','ペットフード','犬用品','猫用品','魚用品/水草','小動物用品','爬虫類/両生類用品','かご/おり','鳥用品','虫類用品','その他'], ['すべて','菓子','米','野菜','果物','調味料','魚介類(加工食品)','肉類(加工食品)','その他 加工食品','その他'], ['すべて','コーヒー','ソフトドリンク','ミネラルウォーター','茶','ウイスキー','ワイン','ブランデー','焼酎','日本酒','ビール、発泡酒','その他'], ['すべて','タオル/バス用品','日用品/生活雑貨','洗剤/柔軟剤','旅行用品','防災関連グッズ','その他'], ['すべて','雑貨','工芸品','家具','印刷物','その他'], ['すべて','筆記具','ノート/メモ帳','テープ/マスキングテープ','カレンダー/スケジュール','アルバム/スクラップ','ファイル/バインダー','はさみ/カッター','カードホルダー/名刺管理','のり/ホッチキス','その他'], ['すべて','オフィス用品一般','オフィス家具','店舗用品','OA機器','ラッピング/包装','その他'], ['すべて']]

parent = Category.create(name: 'その他')
other_child_array.each.each_with_index do |c, i|
 child = parent.children.create(name: c)
 other_grandchild_array[i].each do |g|
   child.children.create(name: g)
 end
end

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
  ['長袖トップス', '0', '良品です！', '221', 'M', 'ナイキ', '新品、未使用', '送料込み（出品者負担）', '北海道','2-3日', '1800', '1', '1',open("#{Rails.root}/db/fixtures/710858447.g_400-w_g.jpg"),'1','20200120','20200120',],
  ['レディースジャケット', '1', '良品です！', '64', 'M', '', '未使用に近い', '着払い（購入者負担）', '横浜','5日', '3200', '2', '1',open("#{Rails.root}/db/fixtures/161117-3-1a.jpg"),'2','20200120','20200120',],
  ['おすすめレディースジャケット', '0', '良品です！', '68', 'M', 'シャネル', '目立った傷や汚れなし', '送料込み（出品者負担）', '北海道','2-3日', '5600', '3', '1', open("#{Rails.root}/db/fixtures/428.jpg"), '3','20200120','20200120',],
  ['GUコーデ', '0', '良品です！', '221', 'M', '', 'やや傷や汚れあり', '着払い（購入者負担）', '青森','2-3日', '2600', '4', '1', open("#{Rails.root}/db/fixtures/20170715121414.jpg"), '4','20200120','20200120',],
  ['冬アウター', '0', '良品です！', '224', 'M', 'ナイキ', '傷や汚れあり', '送料込み（出品者負担）', '岩手','3年', '1300', '1', '1', open("#{Rails.root}/db/fixtures/imgrc0080352437.jpg"), '5','20200120','20200120',],
  ['お気に入りジャケット', '0', '良品です！', '67', 'M', 'シャネル', '全体的に状態が悪い', '着払い（購入者負担）', '秋田','1.5年', '4200', '2', '1', open("#{Rails.root}/db/fixtures/S2104101683037_01.jpg"), '6','20200120','20200120',],
  ['あったかジャケット', '0', '良品です！', '230', 'M', 'ナイキ', '新品、未使用', '送料込み（出品者負担）', '栃木','1日', '1400', '3', '1', open("#{Rails.root}/db/fixtures/61X7p8NKmuL._UX385_.jpg"), '7','20200120','20200120',],
  ['ジャケット', '0', '良品です！', '64', 'M', 'シャネル', '未使用に近い', '着払い（購入者負担）', '東京','5日', '2100', '4', '1', open("#{Rails.root}/db/fixtures/m17510377472_1.jpg"), '8','20200120','20200120',],
  ['セーター', '0', '良品です！', '227', 'M', 'ナイキ', '目立った傷や汚れなし', '送料込み（出品者負担）', '東京','5日', '6800', '1', '1', open("#{Rails.root}/db/fixtures/271063388.jpg"), '9','20200120','20200120',],
  ['アウター', '1', '良品です！', '69', 'M', 'シャネル', 'やや傷や汚れあり', '着払い（購入者負担）', '東京','5日', '2100', '2', '1', open("#{Rails.root}/db/fixtures/242982776.jpg"), '10','20200120','20200120',],
  ['ZARA アウター', '0', '良品です！', '221', 'M', '', '傷や汚れあり', '送料込み（出品者負担）', '東京','5日', '7000', '3', '1', open("#{Rails.root}/db/fixtures/m59740265111_1.jpg"), '11','20200120','20200120',],
  ['冬アウター', '0', '良品です！', '64', 'M', '', '全体的に状態が悪い', '着払い（購入者負担）', '岩手','3年', '1300', '4', '1', open("#{Rails.root}/db/fixtures/132464_r1.jpg"), '12','20200120','20200120',],
  ['お気に入りジャケット', '0', '良品です！', '221', 'M', '', '新品、未使用', '送料込み（出品者負担）', '秋田','1.5年', '4200', '1', '1', open("#{Rails.root}/db/fixtures/tailoredjacket_sam-1.jpg"), '13','20200120','20200120',],
  ['ユニクロ あったかジャケット', '0', '良品です！', '64', 'M', '', '未使用に近い', '着払い（購入者負担）', '栃木','1日', '1400', '2', '1', open("#{Rails.root}/db/fixtures/61I1soBGxyL._SX342_.jpg"), '14','20200120','20200120',],
  ['テーラードジャケット', '0', '良品です！', '221', 'M', '', '目立った傷や汚れなし', '送料込み（出品者負担）', '東京','5日', '2100', '3', '1', open("#{Rails.root}/db/fixtures/9884_3b2.jpg"), '15','20200120','20200120',],
  ['カシミア ジャケット', '0', '良品です！', '64', 'M', '', 'やや傷や汚れあり', '着払い（購入者負担）', '東京','5日', '6800', '4', '1', open("#{Rails.root}/db/fixtures/61hzLuHxusL._UX679_.jpg"), '16','20200120','20200120',],
  ['Forever21 アウター', '0', '良品です！', '221', 'M', '', '傷や汚れあり', '送料込み（出品者負担）', '東京','5日', '2100', '1', '1', open("#{Rails.root}/db/fixtures/287188644.jpg"), '17','20200120','20200120',],
  ['おすすめレディースジャケット', '0', '良品です！', '64', 'M', '', '全体的に状態が悪い', '着払い（購入者負担）', '北海道','2-3日', '5600', '2', '1', open("#{Rails.root}/db/fixtures/71JsWQC3o9L._UX679_.jpg"), '18','20200120','20200120',],
].each do |name, status, body, category_id, size, brandname, condition, burden, region, sending_days, price, saler_id, buyer_id,image, item_id,created_at,updated_at|
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
      images_attributes:[image: image, item_id: item_id, created_at:created_at, updated_at: updated_at],
    }
    )
end

