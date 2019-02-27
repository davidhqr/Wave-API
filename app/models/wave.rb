class Wave < ApplicationRecord
  has_many_attached :files
  validates :code, presence: true, uniqueness: true
  validate :code_format
  validate :files_quantity
  validate :files_size
  validate :files_name

  def code_format
    unless code.length == 10 && code.start_with?("wv")
      errors.add(:files, "is not valid")
    end
  end

  def files_quantity
    if files.attachments.length > 3
      errors.add(:files, "exceeded maximum number of files")
    end
  end

  def files_size
    files.attachments.each do |file|
      if file.blob.byte_size > 10000000
        errors.add(:files, "exceeded maximum file size")
      end
    end
  end

  def files_name
    files.attachments.each do |file|
      if file.blob.filename.to_s.length > 50
        errors.add(:files, "exceeded maximum filename length")
      end
    end
  end
end
