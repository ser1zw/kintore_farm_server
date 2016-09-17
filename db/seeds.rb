# -*- mode: ruby, coding: utf-8 -*-
require './models/prize'
require './models/training_history'

TrainingHistory.create(
  login_id: 'muscle808',
  datetime: '20160917160000',
  training_type: 'squat',
  count: 1
)
TrainingHistory.create(
  login_id: 'muscle808',
  datetime: '20160917160001',
  training_type: 'squat',
  count: 1
)
TrainingHistory.create(
  login_id: 'muscle808',
  datetime: '20160917160003',
  training_type: 'squat',
  count: 2
)
TrainingHistory.create(
  login_id: 'muscle808',
  datetime: '20160917160005',
  training_type: 'squat',
  count: 3
)
TrainingHistory.create(
  login_id: 'muscle808',
  datetime: '20160917160010',
  training_type: 'squat',
  count: 5
)

# basename = 'http://localhost:4567/images'
# Prize.create(name: 'ピーマン',
#              description: 'ピーマンです。',
#              point: 100,
#              image_url: basename + '/' + 'bellpepper.jpg'
#             )
# Prize.create(name: 'ナス',
#              description: 'ナスです。',
#              point: 100,
#              image_url: basename + '/' + 'eggplant.jpg'
#             )
# Prize.create(name: 'トマト',
#              description: 'トマトです。',
#              point: 100,
#              image_url: basename + '/' + 'tomato.jpg'
#             )
