# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wave.create(
  [
    { code: 'text_text', text: 'Hello!' },
    { code: 'text_file' },
    { code: 'text_multiple_files' },
  ]
)

FileItem.create(
  [
    { wave_id: 2, name: 'test_file', format: 'jpg', size: 0.7, path: 'uploads/2/test_file.jpg' },
    { wave_id: 3, name: 'test_multiple_files_1', format: 'pdf', size: 2.1, path: 'uploads/3/test_multiple_files_1.pdf' },
    { wave_id: 3, name: 'test_multiple_files_2', format: 'zip', size: 15, path: 'uploads/3/test_multiple_files_2.zip' },
  ]
)
