# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create([
{name: "Estudante 1",birthday: "1993-02-25",mother_name: "Mae Estudante 1",father_name: "Pai estudante 1"},
{name: "Estudante 2",birthday: "1993-02-25",mother_name: "Mae Estudante 2",father_name: "Pai estudante 2"},
{name: "Estudante 3",birthday: "1993-02-25",mother_name: "Mae Estudante 3",father_name: "Pai estudante 3"},
{name: "Estudante 4",birthday: "1993-02-25",mother_name: "Mae Estudante 4",father_name: "Pai estudante 4"},
])

Classroom.create([
{code: "Turma 01", description: "Turma 01 manha"},
{code: "Turma 02", description: "Turma 02 manha"},
{code: "Turma 03", description: "Turma 01 tarde"},
{code: "Turma 04", description: "Turma 02 tarde"},
])

Teacher.create([
{name: "Professor 1", matter: "Portugues"},
{name: "Professor 2", matter: "Matematica"},
{name: "Professor 3", matter: "Ingles"},
{name: "Professor 4", matter: "Religiao"},
])