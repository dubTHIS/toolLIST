# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
	if ( (i % 2) == 0 )
		Jobsite.create( jobno: "14-00#{i}", name: "Jobsite ##{i}", location: "13#{i} road street", active: true, start: Time.new - (i * 60) )
	else
		Jobsite.create( jobno: "14-00#{i}", name: "Jobsite ##{i}", location: "15#{i} road street", active: false, start: Time.new - (i * 60) )
	end
end
shop_job = Jobsite.create( jobno: "00-000", name: "SHOP", location: "805 Boxwood Dr., Cambridge, Ontario", active: true, start: Time.new(1971, 1, 1, 0, 0, 0))
personal_job = Jobsite.create( jobno: "00-001", name: "PERSONAL", location: "Personal", active: true, start: Time.new(1971, 1, 1, 0, 0, 0) )
margaret_job = Jobsite.create( jobno: "14-559", name: "NAC Church", location: "160 Margaret Ave., Kitchener, Ontario", active: true, start: Time.new, hrs_of_op: "8AM - 4:30PM M - F" )
techtown_job = Jobsite.create( jobno: "14-309", name: "TechTown", location: "340 Hagey Blvd #207, Waterloo, ON N2L 6R6", active: true, start: Time.new, hrs_of_op: "7AM - 3:30PM M - F" )
paris_job = Jobsite.create( jobno: "14-393", name: "Telfer Place Retirement Home", location: "245 Grand River St N, Paris, ON N3L 3V8", active: true, start: Time.new, hrs_of_op: "7AM - 4:30PM M - TH, 7AM - 11AM F" )


shop_user =  User.create( 
	username: "shop", 
	name: "SHOP", 
	personal_phone: "", 
	work_phone: "519-653-6989", 
	email: "office@kweinc.com", 
	password: "orange1001", 
	password_confirmation: "orange1001", 
	admin: true )

garyc = User.create(
	username: "garyc",
	name: "Gary Cooney",
	personal_phone: "747-3002", 
	work_phone: "220-9117", 
	email: "garyc.kwe@bell.blackberry.net", 
	password: "orange1002",
	password_confirmation: "orange1002", 
	admin: false )

frankm = User.create(
	username: "frankm",
	name: "Frank Mackinnon", 
	personal_phone: "837-3802", 
	work_phone: "220-9112", 
	email: "frank.kwe@bell.blackberry.net", 
	password: "orange1003",
	password_confirmation: "orange1003",
	admin: false )

bruces = User.create(
	username: "bruces",
	name: "Bruce Shantz", 
	personal_phone: "699-4347", 
	work_phone: "220-9114", 
	email: "bruce.kwe@bell.blackberry.net", 
	password: "orange1004",
	password_confirmation: "orange1004",
	admin: false )

vernh = User.create(
	username: "vernh",
	name: "Vern Hayek", 
	personal_phone: "749-8537", 
	work_phone: "220-9116", 
	email: "vern.kwe@bell.blackberry.net", 
	password: "orange1005",
	password_confirmation: "orange1005",
	admin: false )

markh = User.create(
	username: "markh",
	name: "Mark Henhoeffer", 
	personal_phone: "632-9969", 
	work_phone: "220-9525", 
	email: "mark.kwe@bell.blackberry.net", 
	password: "orange1006",
	password_confirmation: "orange1006",
	admin: false )

garyd = User.create(
	username: "garyd",
	name: "Gary Drost", 
	personal_phone: "658=2721", 
	work_phone: "220-9115", 
	email: "garyd.kwe@bell.blackberry.net", 
	password: "orange1007",
	password_confirmation: "orange1007",
	admin: false )

adrianl = User.create(
	username: "adrianl",
	name: "Adrian Loates", 
	personal_phone: "623-3264", 
	work_phone: "223-1196", 
	email: "adrian.kwe@bell.blackberry.net", 
	password: "orange1008",
	password_confirmation: "orange1008",
	admin: false )

brendanm = User.create(
	username: "brendanm",
	name: "Brendan Macrae", 
	personal_phone: "620-8422", 
	work_phone: "223-0234", 
	email: "brendan.kwe@bell.blackberry.net", 
	password: "orange1009",
	password_confirmation: "orange1009",
	admin: false )

kylek = User.create(
	username: "kylek",
	name: "Kyle Kuntz", 
	personal_phone: "502-8131", 
	work_phone: "223-0610", 
	email: "kyle.kwe@bell.blackberry.net", 
	password: "orange1010",
	password_confirmation: "orange1010",
	admin: false )

kylek = User.create(
	username: "kylek",
	name: "Kyle Kuntz", 
	personal_phone: "502-8131", 
	work_phone: "223-0610", 
	email: "kyle.kwe@bell.blackberry.net", 
	password: "orange1010",
	password_confirmation: "orange1010",
	admin: false )

lancem = User.create(
	username: "lancem",
	name: "Lance Mosburger", 
	personal_phone: "505=7873", 
	work_phone: "", 
	email: "none@none.com", 
	password: "orange1011",
	password_confirmation: "orange1011",
	admin: false )

bradg = User.create(
	username: "bradg",
	name: "Brad Gerger", 
	personal_phone: "743-5158", 
	work_phone: "223-2734", 
	email: "kwe2@bell.blackberry.net", 
	password: "orange1012",
	password_confirmation: "orange1012",
	admin: false )

steveg = User.create(
	username: "steveg",
	name: "Steve Galvao", 
	personal_phone: "241-9626", 
	work_phone: "223-1275", 
	email: "kwe1@bell.blackberry.net", 
	password: "orange1013",
	password_confirmation: "orange1013",
	admin: false )

jeremyk = User.create(
	username: "jeremyk",
	name: "Jeremy Koch", 
	personal_phone: "504=2446", 
	work_phone: "", 
	email: "none@none3.com", 
	password: "orange1014",
	password_confirmation: "orange1014",
	admin: false )

joshr = User.create(
	username: "joshr",
	name: "Josh Reed", 
	personal_phone: "591=0574", 
	work_phone: "", 
	email: "none@none4.com", 
	password: "orange1015",
	password_confirmation: "orange1015",
	admin: false )

mikeg = User.create(
	username: "mikeg",
	name: "Mike Guacci", 
	personal_phone: "404-7470", 
	work_phone: "220-8131", 
	email: "floater.kwe@bell.blackberry.net", 
	password: "orange1016",
	password_confirmation: "orange1016",
	admin: false )

jakew = User.create(
	username: "jakew",
	name: "Jacob Wilhelm", 
	personal_phone: "807-7355", 
	work_phone: "", 
	email: "none@none5.com", 
	password: "orange1017",
	password_confirmation: "orange1017",
	admin: false )

jimw =  User.create( 
	username: "jimw", 
	name: "Jim Wilhelm", 
	personal_phone: "576-4397", 
	work_phone: "220-9111", 
	email: "jim@kweinc.com", 
	password: "orange1018", 
	password_confirmation: "orange1018", 
	admin: true )

edm =  User.create( 
	username: "edm", 
	name: "Ed Moitoso", 
	personal_phone: "696-3244", 
	work_phone: "220-9113", 
	email: "ed@kweinc.com", 
	password: "orange1019", 
	password_confirmation: "orange1019", 
	admin: true )

hilti = Tool.create(
	id: 1,
	name: "Hilti TE-55",
	description: "Hammer Drill plus associated bits",
	condition: true,
	category: 4,
	jobsite_id: margaret_job.id,
	user_id: frankm.id )

ladder6 = Tool.create(
	id: 2,
	name: "6' Ladder",
	description: "6 foot ladder yellow featerlite",
	condition: true,
	category: 1,
	jobsite_id: techtown_job.id,
	user_id: bruces.id )

ladder8 = Tool.create(
	id: 3,
	name: "8' Ladder",
	description: "8 foot ladder red louisville",
	condition: true,
	category: 1,
	jobsite_id: paris_job.id,
	user_id: garyc.id )

drill1 = Tool.create(
	id: 4,
	name: "Rigid drill ",
	description: "regular rigid drill 18v",
	condition: true,
	category: 5,
	jobsite_id: personal_job.id,
	user_id: garyc.id )

drill2 = Tool.create(
	id: 5,
	name: "Dewalt Impact Drill",
	description: "Dewalt Impact Drill 20v",
	condition: true,
	category: 5,
	jobsite_id: personal_job.id,
	user_id: frankm.id )

jobbox = Tool.create(
	id: 6,
	name: "Green Jobbox",
	description: "Green Metal Jobbox",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

misc = Tool.create(
	id: 7,
	name: "Dewalt Right Angle Drill",
	description: "Yellow Right Angle Drill",
	condition: true,
	category: 6,
	jobsite_id: margaret_job.id,
	user_id: bruces.id )

#Hour.create( date: Date.today.day.ago, total: 8, user_id: garyc.id, jobsite_id: paris_job.id)
#Hour.create( date: Date.today, total: 7, user_id: frankm.id, jobsite_id: margaret_job.id)
#Hour.create( date: Date.today(), total: 5, user_id: bruces.id, jobsite_id: techtown_job.id)
#Hour.create( date: Date.today(), total: 8, user_id: vernh.id, jobsite_id: techtown_job.id)