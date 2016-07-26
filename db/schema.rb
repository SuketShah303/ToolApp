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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141012150146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Reminders", id: false, force: true do |t|
    t.integer "ID",              null: false
    t.integer "UserID"
    t.integer "ReminderTypeID"
    t.integer "FrequencyTypeID"
    t.text    "FrequencyValue"
    t.integer "MessageFormatID"
    t.integer "EmailFormatID"
    t.text    "EmailID"
    t.text    "MobileNumber"
    t.date    "NextDueDate"
    t.boolean "IsValid"
    t.date    "CreatedDate"
    t.date    "ModifiedDate"
  end

  create_table "TLAffiliate", id: false, force: true do |t|
    t.integer "ID",            null: false
    t.text    "AffiliateName"
    t.text    "Country"
  end

  create_table "TLEmail", id: false, force: true do |t|
    t.integer "ID",           null: false
    t.text    "EmailFormat"
    t.date    "CreatedDate"
    t.date    "ModifiedDate"
  end

  create_table "TLFrequency", id: false, force: true do |t|
    t.integer "ID",           null: false
    t.text    "Type"
    t.date    "CreatedDate"
    t.date    "ModifiedDate"
  end

  create_table "TLLanguage", id: false, force: true do |t|
    t.integer "ID",            null: false
    t.text    "LanguageCode"
    t.text    "LanguagaeType"
  end

  create_table "TLMessage", id: false, force: true do |t|
    t.integer "ID",            null: false
    t.text    "MessageFormat"
    t.date    "CreatedDate"
    t.date    "ModifiedDate"
  end

  create_table "TLReminders", id: false, force: true do |t|
    t.integer "ID",           null: false
    t.text    "Type"
    t.date    "CreatedDate"
    t.date    "ModifiedDate"
  end

  create_table "TLSites", id: false, force: true do |t|
    t.integer "ID",          null: false
    t.text    "SiteName"
    t.integer "AffiliateID"
    t.integer "LanguageID"
  end

  create_table "TLUserTypes", id: false, force: true do |t|
    t.integer "ID",           null: false
    t.text    "Type"
    t.date    "CreatedDate"
    t.date    "ModifiedDate"
  end

  create_table "Users", id: false, force: true do |t|
    t.integer "ID",           null: false
    t.text    "Name"
    t.integer "TypeID"
    t.date    "CreatedDate"
    t.date    "ModifiedDate"
  end

end
