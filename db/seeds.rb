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
