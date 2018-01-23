class SubjectsController < ApplicationController
  def index
    # Записываем текст пояснения-приветствия в переменную
    @hello = "Выбери камень, ножницы или бумага"

    # Уничтожаем все прошлые модели перед созданием новых, чтобы не было лишних
    Subject.destroy_all
    # Создаем 3 экземпляра модели Subject и даем им имя камень, ножницы и бумага
    Subject.create(name: 'rock.png')
    Subject.create(name: 'scissor.png')
    Subject.create(name: 'paper.png')
    @subjects = Subject.all
  end

  def show
    # Вытаскиваем предмет по id
    @subject = Subject.find(params[:id])
  end
end
