class PlaybooksController < ApplicationController
    def index
        @playbooks = Playbook.all
        render json: @playbooks, status: :ok
    end
end
