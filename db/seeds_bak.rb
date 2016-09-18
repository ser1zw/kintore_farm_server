# -*- mode: ruby, coding: utf-8 -*-
require './models/prize'
require './models/training_history'

# TrainingHistory.create(
#   login_id: 'muscle808',
#   datetime: '20160917160000',
#   training_type: 'squat',
#   count: 1
# )
# TrainingHistory.create(
#   login_id: 'muscle808',
#   datetime: '20160917160001',
#   training_type: 'squat',
#   count: 1
# )
# TrainingHistory.create(
#   login_id: 'muscle808',
#   datetime: '20160917160003',
#   training_type: 'squat',
#   count: 2
# )
# TrainingHistory.create(
#   login_id: 'muscle808',
#   datetime: '20160917160005',
#   training_type: 'squat',
#   count: 3
# )
# TrainingHistory.create(
#   login_id: 'muscle808',
#   datetime: '20160917160010',
#   training_type: 'squat',
#   count: 5
# )

# basename = 'http://localhost:4567/images'
basename = '/images'
Prize.create(name: '野菜セット',
             description: '旬野菜のおすすめセット「ぱれっと」でお届けするのはその季節で一番おいしい「旬」の有機・低農薬野菜たち。全国の契約農家で大切に育てられた、季節の味覚をお届けします。',
             point: 1000,
             image_url: basename + '/' + 'vegiset.jpg'
            )

Prize.create(name: 'ピーマン',
             description: 'つややかな緑色とほろ苦い味が特徴の夏野菜・ピーマン。ナス科の野菜で、辛みのないとうがらしのひとつです。原産国は中南米。熱さを好む野菜であり、日本では6〜9月頃が旬となっています。',
             point: 100,
             image_url: basename + '/' + 'bellpepper.jpg'
            )
Prize.create(name: 'ナス',
             description: '煮て、揚げて、炒めてよし。どんな料理にも合います。皮ごとお料理にお使いください。',
             point: 100,
             image_url: basename + '/' + 'eggplant.jpg'
            )
Prize.create(name: 'トマト',
             description: '北海道産のトマトです。サラダや煮込み料理など使い方いろいろ。',
             point: 100,
             image_url: basename + '/' + 'tomato.jpg'
            )
Prize.create(name: '野菜ジュース',
             description: '岐阜県飛騨産のトマトをベースに、国産原料のみでつくられた野菜果汁とレモン果汁をブレンドしました。サラッと飲みやすい味です。',
             point: 200,
             image_url: basename + '/' + 'vegijuice.jpg'
            )
Prize.create(name: '野菜・果物ミックスジュース',
             description: 'りんごとにんじんをベースに、１０種類の野菜・果物を飲みやすくブレンドしました。',
             point: 200,
             image_url: basename + '/' + 'mixjuice.jpg'
            )

TvProgram.create(title: '名探偵コナン',
                 description: '小学生探偵の江戸川コナンが、数々の難事件を解決する推理アニメ。コナンは高校生探偵の工藤新一が犯罪集団・黒の組織によって体を小さくさせられた姿。コナンは幼なじみの蘭とその父・小五郎が営む毛利探偵事務所に身を寄せながら、FBIやCIAの捜査員たちと連携して、組織の実態を暴くべく奮闘する。',
                 start_datetime: '201609220330',
                 end_datetime: '201609220400',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'たけしのニッポンのミカタ！',
                 description: '現代日本人の身近に起きているさまざまな社会現象をテーマに、司会のビートたけし、国分太一と共に“今”を捉える知的エンターテインメント番組。アカデミックな論文から商店街の声まで幅広くVTRなどで取り上げ、スタジオでは斬新な“ミカタ”を語るその道の第一人者たちとトークを繰り広げていく。',
                 start_datetime: '201609162200',
                 end_datetime: '201609162254',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: '踊る！さんま御殿!!',
                 description: '1997年に始まった、明石家さんま司会のトークバラエティー。毎回、スタジオに招かれた各界からの有名人たちが、テーマに沿ったユニークなエピソードを披露する。',
                 start_datetime: '201609181300',
                 end_datetime: '201609181600',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: '踊る踊る踊る！さんま御殿!!　最強2世が奇跡の集結　美女アスリート浴衣祭',
                 description: '1997年に始まった、明石家さんま司会のトークバラエティー。毎回、スタジオに招かれた各界からの有名人たちが、テーマに沿ったユニークなエピソードを披露する。',
                 start_datetime: '201609181300',
                 end_datetime: '201609181600',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'あのニュースで得する人損する人　得損ヒーローズVS一流芸能人SP',
                 description: '日々目にする旬のニュースのポイントを「得か、損か」の一つに絞って紹介する情報バラエティー。毎回、ゲストを招いて、シンプルに、ちょっと下世話にニュースを分かりやすく解説。もし取り上げたニュースが損してしまう立場でも、“一発逆転・お得情報”も一緒に解説する。司会は後藤輝基、羽鳥慎一。',
                 start_datetime: '201609221900',
                 end_datetime: '201609222054',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'あのニュースで得する人損する人　最新ダイエットの新常識！知らなきゃ損！2時間ＳＰ',
                 description: '日々目にする旬のニュースのポイントを「得か、損か」の一つに絞って紹介する情報バラエティー。毎回、ゲストを招いて、シンプルに、ちょっと下世話にニュースを分かりやすく解説。もし取り上げたニュースが損してしまう立場でも、“一発逆転・お得情報”も一緒に解説する。司会は後藤輝基、羽鳥慎一。',
                 start_datetime: '201609221900',
                 end_datetime: '201609222054',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'あのニュースで得する人損する人',
                 description: '日々目にする旬のニュースのポイントを「得か、損か」の一つに絞って紹介する情報バラエティー。毎回、ゲストを招いて、シンプルに、ちょっと下世話にニュースを分かりやすく解説。もし取り上げたニュースが損してしまう立場でも、“一発逆転・お得情報”も一緒に解説する。司会は後藤輝基、羽鳥慎一。',
                 start_datetime: '201609221900',
                 end_datetime: '201609222054',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'ぐるぐるナインティナイン',
                 description: 'ナインティナインが毎回さまざまな企画に挑むバラエティー。人気企画「グルメチキンレース ゴチになります」ではゴチメンバーとVIPチャレンジャーが高級レストランでメニューの金額を見ないまま注文。設定金額から最も遠かった者は、全員が頼んだ料理の合計金額を自腹で支払わなければならない。企画はほかに「ピッタンコチョイス＋」「ナイナイ旅倶楽部」など。',
                 start_datetime: '201609171300',
                 end_datetime: '201609171455',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'ぐるナイ真夏の2時間SP',
                 description: 'ナインティナインが毎回さまざまな企画に挑むバラエティー。人気企画「グルメチキンレース ゴチになります」ではゴチメンバーとVIPチャレンジャーが高級レストランでメニューの金額を見ないまま注文。設定金額から最も遠かった者は、全員が頼んだ料理の合計金額を自腹で支払わなければならない。企画はほかに「ピッタンコチョイス＋」「ナイナイ旅倶楽部」など。',
                 start_datetime: '201609171300',
                 end_datetime: '201609171455',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'キスマイBUSAIKU!?',
                 description: 'Kis−My−Ft2のメンバー7人が“BUSAIKU”卒業を目指すバラエティー。さまざまなテーマに、本気で“かっこいい”と思うシーンを考え、自らが主演した映像を制作する。メンバーは、セルフプロデュースした映像を女性100人に審査してもらい、1位から7位までランキングで上位を狙う。',
                 start_datetime: '201609220145',
                 end_datetime: '201609220215',
                 image_path: basename + '/' + '',
                )
TvProgram.create(title: 'プレバト!!',
                 description: '人気芸能人にあらゆるジャンルで抜き打ちテストを実施。その結果をランキング形式で発表していくバラエティー。司会（コミッショナー）を浜田雅功、アシスタントを豊崎由里絵アナが務める。',
                 start_datetime: '201609251255',
                 end_datetime: '201609251350',
                 image_path: basename + '/' + '',
                )

