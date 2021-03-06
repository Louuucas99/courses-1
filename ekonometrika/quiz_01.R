# МНК, введение в R

# 1.
# Вспомним теорию вероятностей! Рассчитайте математическое ожидание случайной величины X, принимающей значения {0,2,4} с вероятностями, соответственно, {0.6,0.2,0.2}

0 * 0.6 + 2 * 0.2 + 4 * 0.2
# [1] 1.2

# 2.
# Вспомним теорию вероятностей! Известно, что E(X)=1, E(Y)=3, Var(X)=4, Var(Y)=1, Cov(X,Y)=1. Найдите E(2X+Y)

2 * 1 + 3
# [1] 5

# 3.
# Вспомним теорию вероятностей! Известно, что E(X)=1, E(Y)=3, Var(X)=4, Var(Y)=1, Cov(X,Y)=1. Найдите Var(X+2Y)

1 * 4 + 4 * 1 + 2 * 1 * 2 * 1
# [1] 12

# 4.
# Укажите две задачи, которые по Вашему мнению, имеет смысл решать при помощи линейной регрессии?

# Оценка влияния дохода человека на его расходы на покупку сладостей
# Установление рыночной цены подержанной машины

# 5.
# Метод наименьших квадратов, как следует из названия, заключается в минимизации суммы квадратов ...
# Отклонений реальных данных от предсказаний по модели


# 6.
# В модели множественной регрессии ...
# Одна зависимая переменная объясняется при помощи набора независимых


# 7.
# Какие из этих показателей могут быть равны нулю? (при наличии нескольких правильных ответов выберите самый полный)
# ESS, TSS и RSS

# 8.
# Исследователь анализирует влияние образования человека на его доход. Построив модель, он получил значения TSS, RSS, ESS и R2. Какие сочетания значений этих показателей возможны?

# TSS=20, RSS=8, ESS=12, R2=0.6


# 9.
# Что показывает коэффициент детерминации R2?
# Долю объясненной моделью дисперсии


# 10.
# Оценив уравнение регрессии с константой и двумя регрессорами по 8 точкам, Вы получили TSS=100, RSS=20. Найдите величину R2

# R2 = ESS / TSS = (TSS - RSS) / TSS

(100 - 20) / 100
# [1] 0.8

# 11.
# Построенная Вами модель имеет R2=0.7, TSS=130. Найдите RSS

# ESS = TSS * R2
# RSS = TSS - ESS
130 - 130 * 0.7
# [1] 39

# 12.
# Ваши данные представлены следующим графиком:

# https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/w9yCMCzWEeWfzwoHQuLGOQ_9e9774792803d98c35f40a6e595265b5_Pic1a.jpeg?expiry=1474243200000&hmac=b09mH1VKAzUAMkzCzagKbiLowT2saJHZbh3LnO5fPOg

# Чему равен показатель TSS?



# 13.
# Ваши данные представлены следующим графиком (точки - наблюдения, линия - оцененная регрессия):

# https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Vm3ifizbEeWHcBItwtuiKQ_a544f4ef3f62a209625be91ead4a7746_Pic2a.jpeg?expiry=1474243200000&hmac=lWP3imphBEvdONhoCquBWriUQ9-j-yz7JKKZRKevLo4

# Найдите показатель R2



# 14.
# Откройте встроенный в R набор данных под названием sleep. Для этого введите команду:

data(sleep)

# После этого в переменной sleep будут храниться требуемые данные.

# Здесь содержится информация по воздействию двух снотворных на продолжительность сна. Есть три переменные: extra (изменение продолжительности сна после начала приёма снотворного), group (1 или 2 - показывает, какой из двух препаратов принимал испытуемый), ID (номер испытуемого).

# Найдите значение, стоящее в 7-ой строчке 1-ого столбца

sleep[7, 1]
# [1] 3.7

# 15.
# Откройте встроенный в R набор данных под названием sleep. Для этого введите команду:

data(sleep)

# После этого в переменной sleep будут храниться требуемые данные. Здесь содержится информация по воздействию двух снотворных на продолжительность сна. Есть три переменные: extra (изменение продолжительности сна после начала приёма снотворного), group (1 или 2 - показывает, какой из двух препаратов принимал испытуемый), ID (номер испытуемого).

# Найдите среднее по всем испытуемым изменение продолжительности сна

# В ответ введите куб этого числа с точностью до второго знака после запятой, не забудьте про округление! (число вида 1.23 вместо 1.2345, 1.24 вместо 1.2356)

round(mean(sleep$extra) ^ 3, 2)
# [1] 3.65

# 16.
# Откройте встроенный в R набор данных под названием sleep. Для этого введите команду:

data(sleep)

# После этого в переменной sleep будут храниться требуемые данные.

# Здесь содержится информация по воздействию двух снотворных на продолжительность сна. Есть три переменные: extra (изменение продолжительности сна после начала приёма снотворного), group (1 или 2 - показывает, какой из двух препаратов принимал испытуемый), ID (номер испытуемого).

# Найдите сумму максимального и минимального изменения продолжительности сна

max(sleep$extra) + min(sleep$extra)
# [1] 3.9

# 17.
# Откройте встроенный в R набор данных под названием sleep. Для этого введите команду:

data(sleep)

# После этого в переменной sleep будут храниться требуемые данные. <br>

# Здесь содержится информация по воздействию двух снотворных на продолжительность сна. Есть три переменные: extra (изменение продолжительности сна после начала приёма снотворного), group (1 или 2 - показывает, какой из двух препаратов принимал испытуемый), ID (номер испытуемого).

# Найдите дисперсию (несмещенную оценку) изменения продолжительности сна по строчкам с 10 по 20 с точностью до 1-ого знака после запятой, не забудьте про округление!

round(var(sleep[10:20, ]$extra), 1)
# [1] 3.6

# 18.
# Откройте встроенный в R набор данных под названием mtcars. Для этого введите команду:

data(mtcars)

# После этого в переменной mtcars будут храниться требуемые данные.
# Здесь содержатся данные по 32 двум моделям автомобилей 1973-1974 гг.
# Постройте регрессию показателя расхода топлива (переменная mpg - запас хода в милях на один галлон топлива) на число цилиндров (cyl), мощность (hp), вес автомобиля (wt) и тип коробки передач (am). Насколько точно эти показатели предсказывают расход топлива?

# В ответ введите показатель R2 с точностью до второго знака после запятой, не забудьте про округление!

model <- lm(data = mtcars, mpg ~ cyl + hp + wt + am)
(beta_hat <- coef(model))
y <- mtcars$mpg
y_hat <- fitted(model)

RSS <- deviance(model)
TSS <- sum( (y - mean(y))^2 )

round((TSS - RSS) / TSS, 2)
# [1] 0.85

# 19.
# Откройте встроенный в R набор данных под названием mtcars. Для этого введите команду:

data(mtcars)

# После этого в переменной mtcars будут храниться требуемые данные.

# Здесь содержатся данные по 32 двум моделям автомобилей 1973-1974 гг.

# Постройте регрессию показателя расхода топлива (переменная mpg - запас хода в милях на один галлон топлива) на рабочий объём двигателя (disp), мощность (hp), вес автомобиля (wt) и тип коробки передач (am). Как влияет мощность двигателя на его расход топлива?

# В ответ введите коэффициент при типе коробки передач с точностью до второго знака после запятой, не забудьте про округление!

model2 <- lm(data = mtcars, mpg ~ disp + hp + wt + am)
round(coef(model2)['am'], 2)
#   am
# 2.16

# 20.
# Откройте встроенный в R набор данных под названием mtcars. Для этого введите команду:
# data(mtcars)
# После этого в переменной mtcars будут храниться требуемые данные.
# Здесь содержатся данные по 32 двум моделям автомобилей 1973-1974 гг.
# Рассмотрим несколько альтернативных моделей:

# Модель 1: mpgi=β0+β1dispi+β2hpi+β3wti+β4ami+εi
# Модель 2: mpgi=β0+β1cyli+β2hpi+β3wti+β4ami+εi
# Модель 3: mpgi=β0+β1dispi+β2cyli+β3wti+β4ami+εi
# Модель 4: mpgi=β0+β1dispi+β2hpi+β3cyli+β4ami+εi

# Какую из них Вы бы выбрали, используя критерий R2?

y <- mtcars$mpg

model.1 <- lm(data = mtcars, mpg ~ disp + hp + wt + am)
(sum( (y - mean(y)) ^ 2 ) - deviance(model.1)) / sum( (y - mean(y)) ^ 2 )
# [1] 0.8402309

model.2 <- lm(data = mtcars, mpg ~ cyl + hp + wt + am)
(sum( (y - mean(y)) ^ 2 ) - deviance(model.2)) / sum( (y - mean(y)) ^ 2 )
# [1] 0.8490314

model.3 <- lm(data = mtcars, mpg ~ disp + cyl + wt + am)
(sum( (y - mean(y)) ^ 2 ) - deviance(model.3)) / sum( (y - mean(y)) ^ 2 )
# [1] 0.8326661

model.4 <- lm(data = mtcars, mpg ~ disp + hp + cyl + am)
(sum( (y - mean(y)) ^ 2 ) - deviance(model.4)) / sum( (y - mean(y)) ^ 2 )
# [1] 0.8078523

# Модель 2


