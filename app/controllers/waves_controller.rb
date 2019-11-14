class WavesController < ApplicationController
  def index
  end

  def show
    code = params[:code]
    return head(:bad_request) unless code

    wave = Wave.find_by_code(code)
    return head(:not_found) unless wave

    response = wave.attributes
    response.delete("id")
    response.delete("updated_at")
    append_file_urls(wave, response)

    render json: response
  end

  def create
    if params["text"]
      create_text_wave
    else
      create_file_wave
    end
  end

  private

  def text_wave_params
    params.require(:code)
    params.require(:text)
    params.permit(:code, :text)
  end

  def create_text_wave
    wave = Wave.create(text_wave_params)
    render_wave(wave)
  end

  def file_wave_params
    params.require(:code)
    params.require(:files)
    params.permit(:code, files: [])
  end

  def create_file_wave
    wave = Wave.create(file_wave_params)
    render_wave(wave)
  end

  def append_file_urls(wave, response)
    files = []

    wave.files.attachments.each do |file|
      files.append(rails_blob_url(file, disposition: "attachment"))
    end

    if files.any?
      response[:files] = files
    end

    files
  end

  def render_wave(wave)
    unless wave.save
      render json: { error: wave.errors }, status: 400
      return
    end

    response = wave.attributes
    response.delete("id")
    response.delete("updated_at")
    append_file_urls(wave, response)

    render json: response
  end
end
