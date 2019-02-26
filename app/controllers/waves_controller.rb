class WavesController < ApplicationController
  skip_before_action :verify_authenticity_token

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
    if params[:text]
      wave = create_text_wave
    else
      wave = create_file_wave
    end

    render json: wave
  end

  private

  def text_wave_params
    params.require(:code)
    params.require(:text)
    params.permit(:code, :text)
  end

  def create_text_wave
    Wave.create!(text_wave_params)
  end

  def file_wave_params
    params.require(:code)
    params.require(:files)
    params.permit(:code, files: [])
  end

  def create_file_wave
    wave = Wave.create!(file_wave_params)
    files = params[:files]

    files.each do |file|
      wave.files.attach(file)
    end

    wave
  end

  def validate(code)
    return true if code && code.length == 10 && code.start_with?("wv")
    false
  end
end
