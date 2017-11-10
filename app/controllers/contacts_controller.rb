class ContactsController < ApplicationController
  def index
    if params[:group_id] && !params[:group_id].empty?
      @contacts = Contact.where(group_id: params[:group_id]).page(params[:page])
    else
      @contacts = Contact.page(params[:page])
    end
  end
end
