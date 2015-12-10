require_relative 'apprentice_teacher'
require_relative 'teacher'
require_relative 'student'



my_teacher = Teacher.new
my_apprentice_teacher = ApprenticeTeacher.new
my_student = Student.new

p my_apprentice_teacher.teach_stuff
