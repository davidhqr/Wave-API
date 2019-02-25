require 'json'

class WavesController < ApplicationController
  def index
  end

  def show
    code = params[:code]
    return head(:bad_request) unless code

    wave = Wave.find_by_code(code)
    return head(:not_found) unless wave

    render json: wave
  end

  def create
    data = JSON.parse(response.body)
    return head(:bad_request) unless data

    code = data[:code]
    return head(:bad_request) unless code && validate(code)

    if data[:file_name] && data[:file_format] && data[:file_size] && data[:file_path]

    elsif data[:text]
      return head(:conflict) if Wave.find_by_code(code)

      Wave.create(code: code, text: data[:text])
    else
      return head(:bad_request)
    end
  end

  private

  def validate(code)
    return true if code.length == 10 && code.start_with?("wv")
    false
  end
end
