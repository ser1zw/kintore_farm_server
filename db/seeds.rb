# -*- mode: ruby, coding: utf-8 -*-
require './models/tv_program'
basename = '/images/tv'

TvProgram.create(title: 'がっちりマンデー～日曜に勉強！月曜から実践！～',
                 description: '情報番組は数あれど、なぜか“あのジャンル”だけはポッカリと抜け落ちています。それは…お金。日曜日に勉強して月曜日から実践へ！ご家庭での節約術から株・不動産、果ては国家レベルの経済理論まで…『がっちりマンデー！！』は笑いながら楽しく金儲け情報を提供していきます。',
                 start_datetime: '201609250730',
                 end_datetime: '201609250830',
                 image_url: basename + '/' + 'gacchiri.png',
                )
TvProgram.create(title: 'ハンチョウ〜警視庁安積班〜',
                 description: 'フリーの記者・広川（若杉宏二）が殺され、安積（佐々木蔵之介）と小池（福士誠治）が捜査を開始。パソコンがなくなっていることに気付いた安積は、広川が最後に仕事をしたタウン誌の編集部へ。すると、広川は取材相手の「江戸木目込人形」の 職人・清瀬（竜雷太）とトラブルを起こしていたことが判明する。',
                 start_datetime: '201609220153',
                 end_datetime: '201609220223',
                 image_url: basename + '/' + 'hancho.png',
                )
TvProgram.create(title: 'タビフク。',
                 description: '大島優子と秋元才加が大阪を旅する後編を。ユニバーサル・スタジオ・ジャパンでは、絶叫系のライドが苦手で乗れないという秋元が、“世界最長×世界最大高低差”の最新鋭コースター「ザ・フライングダイナソー」に挑戦する。ほか、日本一の高層ビル・あべのハルカスのレストランで互いのことについて語り合う。',
                 start_datetime: '201609220153',
                 end_datetime: '201609220223',
                 image_url: basename + '/' + 'tabifuku.png',
                )
TvProgram.create(title: '名探偵コナン',
                 description: '小学生探偵の江戸川コナンが、数々の難事件を解決する推理アニメ。コナンは高校生探偵の工藤新一が犯罪集団・黒の組織によって体を小さくさせられた姿。コナンは幼なじみの蘭とその父・小五郎が営む毛利探偵事務所に身を寄せながら、FBIやCIAの捜査員たちと連携して、組織の実態を暴くべく奮闘する。',
                 start_datetime: '201609220330',
                 end_datetime: '201609220400',
                 image_url: basename + '/' + 'conan.png',
                )
TvProgram.create(title: 'たけしのニッポンのミカタ！',
                 description: '現代日本人の身近に起きているさまざまな社会現象をテーマに、司会のビートたけし、国分太一と共に“今”を捉える知的エンターテインメント番組。アカデミックな論文から商店街の声まで幅広くVTRなどで取り上げ、スタジオでは斬新な“ミカタ”を語るその道の第一人者たちとトークを繰り広げていく。',
                 start_datetime: '201609162200',
                 end_datetime: '201609162254',
                 image_url: basename + '/' + 'takeshi.png',
                )
TvProgram.create(title: '踊る！さんま御殿!!',
                 description: '1997年に始まった、明石家さんま司会のトークバラエティー。毎回、スタジオに招かれた各界からの有名人たちが、テーマに沿ったユニークなエピソードを披露する。',
                 start_datetime: '201609181300',
                 end_datetime: '201609181600',
                 image_url: basename + '/' + 'goten.png',
                )
TvProgram.create(title: 'あのニュースで得する人損する人　得損ヒーローズVS一流芸能人SP',
                 description: '日々目にする旬のニュースのポイントを「得か、損か」の一つに絞って紹介する情報バラエティー。毎回、ゲストを招いて、シンプルに、ちょっと下世話にニュースを分かりやすく解説。もし取り上げたニュースが損してしまう立場でも、“一発逆転・お得情報”も一緒に解説する。司会は後藤輝基、羽鳥慎一。',
                 start_datetime: '201609221900',
                 end_datetime: '201609222054',
                 image_url: basename + '/' + 'tokuson.jpg',
                )
TvProgram.create(title: 'ぐるぐるナインティナイン',
                 description: 'ナインティナインが毎回さまざまな企画に挑むバラエティー。人気企画「グルメチキンレース ゴチになります」ではゴチメンバーとVIPチャレンジャーが高級レストランでメニューの金額を見ないまま注文。設定金額から最も遠かった者は、全員が頼んだ料理の合計金額を自腹で支払わなければならない。企画はほかに「ピッタンコチョイス＋」「ナイナイ旅倶楽部」など。',
                 start_datetime: '201609171300',
                 end_datetime: '201609171455',
                 image_url: basename + '/' + 'gurunai.png',
                )
TvProgram.create(title: 'キスマイBUSAIKU!?',
                 description: 'Kis−My−Ft2のメンバー7人が“BUSAIKU”卒業を目指すバラエティー。さまざまなテーマに、本気で“かっこいい”と思うシーンを考え、自らが主演した映像を制作する。メンバーは、セルフプロデュースした映像を女性100人に審査してもらい、1位から7位までランキングで上位を狙う。',
                 start_datetime: '201609220145',
                 end_datetime: '201609220215',
                 image_url: basename + '/' + 'kisumybusaiku.png',
                )
TvProgram.create(title: 'プレバト!!',
                 description: '人気芸能人にあらゆるジャンルで抜き打ちテストを実施。その結果をランキング形式で発表していくバラエティー。司会（コミッショナー）を浜田雅功、アシスタントを豊崎由里絵アナが務める。',
                 start_datetime: '201609251255',
                 end_datetime: '201609251350',
                 image_url: basename + '/' + 'pbattle.png',
                )
