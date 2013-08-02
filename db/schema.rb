# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130724005330) do

  create_table "aportes", :force => true do |t|
    t.float    "montomovimiento"
    t.float    "montosolidaridad"
    t.string   "tipomovimiento"
    t.integer  "socio_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "departaments", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "loan_details", :force => true do |t|
    t.float    "montocuota"
    t.float    "amortizacion"
    t.float    "interes"
    t.datetime "fechavcuota"
    t.string   "estado"
    t.datetime "fechapago"
    t.float    "saldoactual"
    t.integer  "prestamo_id"
    t.string   "cancelacion_cuota"
    t.integer  "numerocuota"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "prestamos", :force => true do |t|
    t.float    "montoprestamo"
    t.integer  "socio_id"
    t.integer  "cantcuotas"
    t.float    "tasainteres"
    t.string   "cancelacion"
    t.float    "ganancia_generada"
    t.string   "sistema"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "socios", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "ci"
    t.string   "tel"
    t.string   "direccion"
    t.string   "tipo"
    t.integer  "departament_id"
    t.string   "correo"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
