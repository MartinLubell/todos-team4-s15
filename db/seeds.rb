# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Account.destroy_all
User.destroy_all
Todolist.destroy_all
Todoitem.destroy_all
Tag.destroy_all

User.create [{login: "nb", password: "Waterloo"}]

Account.create [{age: 38, gender: "male", first_name: "Napoleon", last_name: "Bonaparte"}]

Todolist.create [{list_name: "Italian Campaign", list_due_date: "1796/11/01"},
                {list_name: "Russian Campaign", list_due_date: "1812/11/30"}]

Todoitem.create [{task_title: "Register Company Corp 4 men", due_date: "1796/09/15", description: "Contact all French departments for conscripts."},
                {task_title: "Follow up registration Comp Corp 4", due_date: "1796/10/15", description: "Ask for Corp 4 confirmations letters."},
                {task_title: "Russian rivers survey", due_date: "1795/12/15", description: "Detailled river maps done by military surveyors."},
                {task_title: "Practice building bridges as if over Volvograd River", due_date: "1797/10/13", description: "Strength tests need to be performed."},
                {task_title: "Send peace letter", due_date: "1795/10/15", description: "Show we are friends before we attack."},
                {task_title: "Contact Hannibal for elephants", due_date: "1803/10/20", description: "Wondering if elephants can travel in the Alps!?"},
                {task_title: "Register Comp Corp 10 men", due_date: "1803/10/15", description: "Ask for Corp 10 confirmations letters."}]

Tag.create [{tag_name: "Urgent"}, {tag_name: "For wife Josephine"}, {tag_name: "French War Minister"},
            {tag_name: "Russian Foreign Minister"}, {tag_name: "Construction"}]