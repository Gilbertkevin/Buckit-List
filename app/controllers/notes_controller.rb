class NotesController < ApplicationController
  def create
    note = Note.new(
      description: params[:description],
      item_id: params[:item_id],
    )
    if note.save
      render json: { message: "Note created successfully" }
    else
      render json: { errors: notes.errors.full_message }
    end
  end

  def show
    note = Note.find_by(id: params[:id])

    render json: note.as_json
  end

  def destroy
    note = note.find_by(id: params[:id])
    note.destroy

    render json: { message: "This note has been removed." }
  end
end
