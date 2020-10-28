# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Genre.create(name:"スイーツ・グルメ")
  Genre.create(name:"美容・コスメ")
  Genre.create(name:"アパレル・ファッション")
  Genre.create(name:"旅行")
  Genre.create(name:"ファミリー（ママ、キッズ）")
  Genre.create(name:"スポーツ・フィットネス・ボディメイク")
  Genre.create(name:"ダイエット")
  Genre.create(name:"漫画・イラスト・アート")
  Genre.create(name:"記事執筆・ライティング")
  Genre.create(name:"ペット・動物")
  Genre.create(name:"家具・インテリア・生活雑貨")
  Genre.create(name:"恋愛")
  Genre.create(name:"花・フラワーアレンジメント")
  Genre.create(name:"医師・医療")
  Genre.create(name:"お金")
  Genre.create(name:"芸能")
  Genre.create(name:"政治")
  Genre.create(name:"その他")

  Influencer.create!(
    email: "test1@test.com",
    name: "テスト一郎",
    kana_name: "テストイチロウ",
    account: "https://mkhbg.instagram.com/xxxxxx",
    sns_follower: "1287人",
    genre_id: 1,
    prefectures: "大阪府",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/1.jpg")
  )

  Influencer.create!(
    email: "test2@test.com",
    name: "テスト二郎",
    kana_name: "テストジロウ",
    account: "https://mkhbg.instagram.com/qqqqq",
    sns_follower: "287976人",
    genre_id: 2,
    prefectures: "滋賀県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/2.jpg")
  )

  Influencer.create!(
    email: "test3@test.com",
    name: "テスト三郎",
    kana_name: "テストサブロウ",
    account: "https://mkhbg.instagram.com/ccccc",
    sns_follower: "1876人",
    genre_id: 3,
    prefectures: "兵庫県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/3.jpg")
  )

  Influencer.create!(
    email: "test4@test.com",
    name: "テスト四郎",
    kana_name: "テストシロウ",
    account: "https://mkhbg.instagram.com/wwwww",
    sns_follower: "300人",
    genre_id: 4,
    prefectures: "香川県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/4.jpg")
  )

  Influencer.create!(
    email: "test5@test.com",
    name: "テスト五郎",
    kana_name: "テストゴロウ",
    account: "https://mkhbg.instagram.com/eeeee",
    sns_follower: "200000人",
    genre_id: 5,
    prefectures: "京都府",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/5.jpg")
  )

  Influencer.create!(
    email: "test6@test.com",
    name: "テスト六郎",
    kana_name: "テストロクロウ",
    account: "https://mkhbg.instagram.com/rrrrrr",
    sns_follower: "9087人",
    genre_id: 6,
    prefectures: "愛知県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/6.jpg")
  )

  Influencer.create!(
    email: "test7@test.com",
    name: "テスト七郎",
    kana_name: "テストナナロウ",
    account: "https://mkhbg.instagram.com/ttttt",
    sns_follower: "8797676人",
    genre_id: 7,
    prefectures: "広島県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/7.jpg")
  )

  Influencer.create!(
    email: "test8@test.com",
    name: "テスト八郎",
    kana_name: "テストハチロウ",
    account: "https://mkhbg.instagram.com/yyyyyy",
    sns_follower: "1000人",
    genre_id: 8,
    prefectures: "鹿児島県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/8.jpg")
  )

  Influencer.create!(
    email: "test9@test.com",
    name: "テスト九郎",
    kana_name: "テストキュウロウ",
    account: "https://mkhbg.instagram.com/uuuuu",
    sns_follower: "639872人",
    genre_id: 9,
    prefectures: "青森県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/9.jpg")
  )

  Influencer.create!(
    email: "test10@test.com",
    name: "テスト十郎",
    kana_name: "テストジュウロウ",
    account: "https://mkhbg.instagram.com/iiiiiii",
    sns_follower: "473人",
    genre_id: 10,
    prefectures: "東京都",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/10.jpg")
  )

  Influencer.create!(
    email: "test11@test.com",
    name: "テスト十一郎",
    kana_name: "テストジュウイチロウ",
    account: "https://mkhbg.instagram.com/oooooo",
    sns_follower: "97967人",
    genre_id: 11,
    prefectures: "長野県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/11.jpg")
  )

  Influencer.create!(
    email: "test12@test.com",
    name: "テスト十二郎",
    kana_name: "テストジュウニロウ",
    account: "https://mkhbg.instagram.com/pppppp",
    sns_follower: "8757人",
    genre_id: 12,
    prefectures: "栃木県",
    enthusiasm: "任された仕事は責任感持って全力でします！",
    password: 111111,
    profile_image: open("./app/assets/images/12.jpg")
  )

  Owner.create!(
    email: "owner1@owner.com",
    name: "株式会社一",
    kana_name: "カブシキガイシャイチ",
    account: "httpsqqqqqqqqqqqq",
    industry: "接客業",
    prefectures: "大阪府",
    business_content: "ネイルサロン経営",
    password: 222222,
    profile_image: open("./app/assets/images/owner1.jpg")
  )

  Owner.create!(
    email: "owner2@owner.com",
    name: "オーナー二郎",
    kana_name: "オーナージロウ",
    account: "httpwwwwwwwww",
    industry: "接客業",
    prefectures: "大阪府",
    business_content: "飲食店経営",
    password: 222222,
    profile_image: open("./app/assets/images/owner2.jpg")
  )

  Owner.create!(
    email: "owner3@owner.com",
    name: "オーナー三郎",
    kana_name: "オーナサブロウ",
    account: "httpseeeeeeeeeee",
    industry: "サービス業",
    prefectures: "滋賀県",
    business_content: "不動産売買",
    password: 222222,
    profile_image: open("./app/assets/images/owner3.jpg")
  )

  Owner.create!(
    email: "owner4@owner.com",
    name: "オーナー四郎",
    kana_name: "オーナシロウ",
    account: "httpsrrrrrrrr",
    industry: "サービス業",
    prefectures: "愛知県",
    business_content: "不動産売買",
    password: 222222,
    profile_image: open("./app/assets/images/owner4.jpg")
  )

  Owner.create!(
    email: "owner5@owner.com",
    name: "オーナー五郎",
    kana_name: "オーナゴロウ",
    account: "httpsttttttt",
    industry: "接客業",
    prefectures: "東京都",
    business_content: "美容室経営",
    password: 222222,
    profile_image: open("./app/assets/images/owner5.jpg")
  )

  Owner.create!(
    email: "owner6@owner.com",
    name: "株式会社六",
    kana_name: "カブシキガイシャロク",
    account: "httpsyyyyyyyy",
    industry: "製造業",
    prefectures: "東京都",
    business_content: "健康食品及び自然食品の製造並びに販売",
    password: 222222,
    profile_image: open("./app/assets/images/owner6.jpg")
  )

  Owner.create!(
    email: "owner7@owner.com",
    name: "株式会社七",
    kana_name: "カブシキガイシャナナ",
    account: "httpsuuuuuuuuu",
    industry: "販売業",
    prefectures: "大阪府",
    business_content: "酒類の販売",
    password: 222222,
    profile_image: open("./app/assets/images/owner7.jpg")
  )

  Owner.create!(
    email: "owner8@owner.com",
    name: "株式会社八",
    kana_name: "カブシキガイシャハチ",
    account: "httpsiiiiiiii",
    industry: "サービス業",
    prefectures: "東京都",
    business_content: "不動産売買",
    password: 222222,
    profile_image: open("./app/assets/images/owner8.jpg")
  )

  Owner.create!(
    email: "owner9@owner.com",
    name: "株式会社九",
    kana_name: "カブシキガイシャキュウ",
    account: "httpsooooooooo",
    industry: "サービス業",
    prefectures: "大阪府",
    business_content: "観光施設の経営",
    password: 222222,
    profile_image: open("./app/assets/images/owner9.jpg")
  )

  Owner.create!(
    email: "owner10@owner.com",
    name: "株式会社十",
    kana_name: "カブシキガイシャジュウ",
    account: "httpsppppppppp",
    industry: "サービス業",
    prefectures: "大阪府",
    business_content: "パチンコ遊技場の経営",
    password: 222222,
    profile_image: open("./app/assets/images/owner10.jpg")
  )

  Owner.create!(
    email: "owner11@owner.com",
    name: "株式会社十一",
    kana_name: "カブシキガイシャジュウイチ",
    account: "httpsaaaaaaaaa",
    industry: "サービス業",
    prefectures: "千葉県",
    business_content: "カラオケスタジオの経営",
    password: 222222,
    profile_image: open("./app/assets/images/owner11.jpg")
  )

  Owner.create!(
    email: "owner12@owner.com",
    name: "株式会社十二",
    kana_name: "カブシキガイシャジュウニ",
    account: "httpssssssssss",
    industry: "販売業",
    prefectures: "京都府",
    business_content: "サプリメント販売",
    password: 222222,
    profile_image: open("./app/assets/images/owner12.jpg")
  )