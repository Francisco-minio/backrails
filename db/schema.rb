# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_12_013143) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "asignaturacursos", force: :cascade do |t|
    t.integer "curso_id", null: false
    t.integer "asignatura_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asignatura_id"], name: "index_asignaturacursos_on_asignatura_id"
    t.index ["curso_id"], name: "index_asignaturacursos_on_curso_id"
  end

  create_table "asignaturaprofesors", force: :cascade do |t|
    t.integer "profesor_id", null: false
    t.integer "asignatura_id", null: false
    t.integer "curso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asignatura_id"], name: "index_asignaturaprofesors_on_asignatura_id"
    t.index ["curso_id"], name: "index_asignaturaprofesors_on_curso_id"
    t.index ["profesor_id"], name: "index_asignaturaprofesors_on_profesor_id"
  end

  create_table "asignaturas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "numero"
    t.string "letra"
    t.string "nivel"
    t.string "jornada"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "establecimientos", force: :cascade do |t|
    t.string "nombre"
    t.string "ciudad"
    t.string "rbd"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.string "director"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profesorjeves", force: :cascade do |t|
    t.integer "profesor_id", null: false
    t.integer "curso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["curso_id"], name: "index_profesorjeves_on_curso_id"
    t.index ["profesor_id"], name: "index_profesorjeves_on_profesor_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.time "inicioatencion"
    t.time "finatencion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regasignaturas", force: :cascade do |t|
    t.integer "asignatura_id", null: false
    t.integer "establecimiento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asignatura_id"], name: "index_regasignaturas_on_asignatura_id"
    t.index ["establecimiento_id"], name: "index_regasignaturas_on_establecimiento_id"
  end

  create_table "regcursos", force: :cascade do |t|
    t.integer "establecimiento_id", null: false
    t.integer "curso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["curso_id"], name: "index_regcursos_on_curso_id"
    t.index ["establecimiento_id"], name: "index_regcursos_on_establecimiento_id"
  end

  create_table "registros", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "establecimiento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["establecimiento_id"], name: "index_registros_on_establecimiento_id"
    t.index ["usuario_id"], name: "index_registros_on_usuario_id"
  end

  create_table "regprofesors", force: :cascade do |t|
    t.integer "profesor_id", null: false
    t.integer "establecimiento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["establecimiento_id"], name: "index_regprofesors_on_establecimiento_id"
    t.index ["profesor_id"], name: "index_regprofesors_on_profesor_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "rol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "password_digest"
    t.integer "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_usuarios_on_role_id"
  end

  add_foreign_key "asignaturacursos", "asignaturas"
  add_foreign_key "asignaturacursos", "cursos"
  add_foreign_key "asignaturaprofesors", "asignaturas"
  add_foreign_key "asignaturaprofesors", "cursos"
  add_foreign_key "asignaturaprofesors", "profesors"
  add_foreign_key "profesorjeves", "cursos"
  add_foreign_key "profesorjeves", "profesors"
  add_foreign_key "regasignaturas", "asignaturas"
  add_foreign_key "regasignaturas", "establecimientos"
  add_foreign_key "regcursos", "cursos"
  add_foreign_key "regcursos", "establecimientos"
  add_foreign_key "registros", "establecimientos"
  add_foreign_key "registros", "usuarios"
  add_foreign_key "regprofesors", "establecimientos"
  add_foreign_key "regprofesors", "profesors"
  add_foreign_key "usuarios", "roles"
end
