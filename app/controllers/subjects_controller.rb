class SubjectsController < ApplicationController
  def index
    @hello = "Выбери камень, ножницы или бумага"

    Subject.destroy_all
    Subject.create(name: 'rock.png')
    Subject.create(name: 'scissor.png')
    Subject.create(name: 'paper.png')
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end
end
