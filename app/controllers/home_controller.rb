class HomeController < ApplicationController
  before_filter :validate_params

  def index
  end

  def immunization_status
    begin
      person = Person.find(params['person-id'])
      if person.present?
        immunization_status = person.immunization_status
        if immunization_status.status.name.present? && immunization_status.severity.name.present?
          render json: {:status => immunization_status.status.name,
                        :severity => immunization_status.severity.name}
        else
          render json: {error: t('error'), message: t('person.message')}
        end
      end
    rescue Exception => e
      render json: {error: t('error'), message: e.message}
    end

  end

  def validate_params
    if !params['person-id'].present?
      render json: {error: t('error'), message: t('validate_params.person_id.error.message')}
    end

    if !params['state'].present? || params[:state] != 'fl'
      render json: {error: t('error'), message: t('validate_params.state.error.message')}
    end

  end
end

