# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

shop_job = Jobsite.create( jobno: "00-000", name: "SHOP", location: "805 Boxwood Dr., Cambridge, Ontario", active: true, start: Time.new(1971, 1, 1, 0, 0, 0))
personal_job = Jobsite.create( jobno: "00-001", name: "PERSONAL", location: "Personal", active: true, start: Time.new(1971, 1, 1, 0, 0, 0) )
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
	email: "garyc@kweinc.com", 
	password: "orange1002",
	password_confirmation: "orange1002", 
	admin: false )

frankm = User.create(
	username: "frank",
	name: "Frank Mackinnon", 
	personal_phone: "837-3802", 
	work_phone: "220-9112", 
	email: "frank@kweinc.com", 
	password: "orange1003",
	password_confirmation: "orange1003",
	admin: false )

bruces = User.create(
	username: "bruce",
	name: "Bruce Shantz", 
	personal_phone: "699-4347", 
	work_phone: "220-9114", 
	email: "bruce@kweinc.com", 
	password: "orange1004",
	password_confirmation: "orange1004",
	admin: false )

vernh = User.create(
	username: "vern",
	name: "Vern Hayek", 
	personal_phone: "749-8537", 
	work_phone: "220-9116", 
	email: "vern@kweinc.com", 
	password: "orange1005",
	password_confirmation: "orange1005",
	admin: false )

markh = User.create(
	username: "mark",
	name: "Mark Henhoeffer", 
	personal_phone: "632-9969", 
	work_phone: "220-9525", 
	email: "mark@kweinc.com", 
	password: "orange1006",
	password_confirmation: "orange1006",
	admin: false )

garyd = User.create(
	username: "gary",
	name: "Gary Drost", 
	personal_phone: "658=2721", 
	work_phone: "220-9115", 
	email: "garyd@kweinc.com", 
	password: "orange1007",
	password_confirmation: "orange1007",
	admin: false )

adrianl = User.create(
	username: "adrian",
	name: "Adrian Loates", 
	personal_phone: "623-3264", 
	work_phone: "223-1196", 
	email: "adrian@kweinc.com", 
	password: "orange1008",
	password_confirmation: "orange1008",
	admin: false )

brendanm = User.create(
	username: "brendan",
	name: "Brendan Macrae", 
	personal_phone: "620-8422", 
	work_phone: "223-0234", 
	email: "brendan@kweinc.com", 
	password: "orange1009",
	password_confirmation: "orange1009",
	admin: false )

kylek = User.create(
	username: "kyle",
	name: "Kyle Kuntz", 
	personal_phone: "502-8131", 
	work_phone: "223-0610", 
	email: "kyle@kweinc.com", 
	password: "orange1010",
	password_confirmation: "orange1010",
	admin: false )

lancem = User.create(
	username: "lance",
	name: "Lance Mosburger", 
	personal_phone: "505=7873", 
	work_phone: "", 
	email: "lance@kweinc.com", 
	password: "orange1011",
	password_confirmation: "orange1011",
	admin: false )

bradg = User.create(
	username: "brad",
	name: "Brad Gerger", 
	personal_phone: "743-5158", 
	work_phone: "223-2734", 
	email: "brad@kweinc.com", 
	password: "orange1012",
	password_confirmation: "orange1012",
	admin: false )

steveg = User.create(
	username: "steve",
	name: "Steve Galvao", 
	personal_phone: "241-9626", 
	work_phone: "223-1275", 
	email: "steve@kweinc.com", 
	password: "orange1013",
	password_confirmation: "orange1013",
	admin: false )

jeremyk = User.create(
	username: "jeremy",
	name: "Jeremy Koch", 
	personal_phone: "504=2446", 
	work_phone: "", 
	email: "jeremy@kweinc.com", 
	password: "orange1014",
	password_confirmation: "orange1014",
	admin: false )

joshr = User.create(
	username: "josh",
	name: "Josh Reed", 
	personal_phone: "591=0574", 
	work_phone: "", 
	email: "josh@kweinc.com", 
	password: "orange1015",
	password_confirmation: "orange1015",
	admin: false )

mikeg = User.create(
	username: "mike",
	name: "Mike Guacci", 
	personal_phone: "404-7470", 
	work_phone: "220-8131", 
	email: "mike@kweinc.com", 
	password: "orange1016",
	password_confirmation: "orange1016",
	admin: false )

jakew = User.create(
	username: "jake",
	name: "Jacob Wilhelm", 
	personal_phone: "807-7355", 
	work_phone: "", 
	email: "jake@kweinc.com", 
	password: "orange1017",
	password_confirmation: "orange1017",
	admin: true )

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

joan =  User.create( 
	username: "joan", 
	name: "Joan", 
	personal_phone: "", 
	work_phone: "519-653-6989", 
	email: "joan@kweinc.com", 
	password: "orange1020", 
	password_confirmation: "orange1020", 
	admin: true )

Darla =  User.create( 
	username: "darla", 
	name: "Darla", 
	personal_phone: "", 
	work_phone: "519-653-6989", 
	email: "darla@kweinc.com", 
	password: "orange1021", 
	password_confirmation: "orange1021", 
	admin: true )

Tool.create(
	id: 102,
	name: "4' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 107,
	name: "4' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 109,
	name: "4' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 141,
	name: "4' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 142,
	name: "4' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 168,
	name: "4' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 182,
	name: "4' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

#### End of 4 ' step laddeers

###### 6 ' step ladders

Tool.create(
	id: 117,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 106,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 113,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 137,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 150,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 118,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 108,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 176,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 178,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 179,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )
	
Tool.create(
	id: 184,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 186,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 187,
	name: "6' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 146,
	name: "7' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 127,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 120,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 124,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 136,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 140,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 138,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 121,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 155,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 134,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )
	
Tool.create(
	id: 158,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 159,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 160,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 161,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 163,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 177,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 181,
	name: "8' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 115,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 129,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 144,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 162,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 166,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 167,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 169,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 171,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )
	
Tool.create(
	id: 172,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 173,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 174,
	name: "10' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 156,
	name: "12' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 164,
	name: "12' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 165,
	name: "12' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 183,
	name: "12' Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 154,
	name: "Little Giant Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 153,
	name: "Little Giant Ladder",
	description: "",
	condition: true,
	category: 1,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 203,
	name: "20' Extension Ladder",
	description: "",
	condition: true,
	category: 2,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 204,
	name: "24' Extension Ladder",
	description: "",
	condition: true,
	category: 2,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 206,
	name: "24' Extension Ladder",
	description: "",
	condition: true,
	category: 2,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 207,
	name: "24' Extension Ladder",
	description: "",
	condition: true,
	category: 2,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 205,
	name: "28' Extension Ladder",
	description: "",
	condition: true,
	category: 2,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 208,
	name: "14' Aluminum Extension Ladder",
	description: "",
	condition: true,
	category: 2,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 301,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 302,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 304,
	name: "Steel Jobbox",
	description: "Red",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 307,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 305,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 308,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 309,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 310,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 312,
	name: "Steel Jobbox",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 311,
	name: "Steel Jobbox with vise",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 306,
	name: "Wire Cabinet",
	description: "",
	condition: true,
	category: 3,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 403,
	name: "Hilti TE 5",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )
	
Tool.create(
	id: 404,
	name: "Hilti TE 5",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 406,
	name: "Hilti TE 5",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 407,
	name: "Hilti TE 5",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 405,
	name: "Hilti TE 16",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 411,
	name: "Hilti TE 16",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 412,
	name: "Hilti TE 16",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 408,
	name: "Hilti TE 25",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 401,
	name: "Hilti TE 24",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 413,
	name: "Hilti TE 24",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 410,
	name: "Hilti TE 55",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 409,
	name: "Hilti TE 2",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 415,
	name: "Hilti TE 4 Cordless",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 416,
	name: "Hilti TE 4 Cordless",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 414,
	name: "Hilti TE 6",
	description: "",
	condition: true,
	category: 4,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 501,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 506,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 510,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 512,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 521,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 522,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 504,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 526,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 528,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 530,
	name: "120V Electric Drill",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 529,
	name: "Circular Saw",
	description: "",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 536,
	name: "Impact",
	description: "Corded",
	condition: true,
	category: 5,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 555,
	name: "18V Rigid Drill",
	description: "Set with charger and 2 18V batteries",
	condition: true,
	category: 5,
	jobsite_id: personal_job.id,
	user_id: jakew.id )

Tool.create(
	id: 683,
	name: "Hydraulic KO 2-1/2\" and 4\" dies only",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )
	
Tool.create(
	id: 628,
	name: "Hydraulic KO",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 640,
	name: "Hydraulic KO",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 614,
	name: "Hydraulic KO",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 641,
	name: "Hydraulic KO",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 628,
	name: "Hydraulic KO",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 611,
	name: "Hydraulic KO",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 1,
	name: "Hydraulic KO",
	description: "was ID #600-25, whoever sees this tool first change this description and change the ID # to the new one",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 2,
	name: "Rigid Hydraulic KO",
	description: "was ID #600-68, whoever sees this tool first change this description and change the ID # to the new on",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 3,
	name: "Hydraulic KO",
	description: "was ID #600-77, whoever sees this tool first change this description and change the ID # to the new on",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 4,
	name: "Fridge Cart",
	description: "was ID #600-17, whoever sees this tool first change this description and change the ID # to the new on",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 5,
	name: "Hand Cart",
	description: "was ID #600-16, whoever sees this tool first change this description and change the ID # to the new on",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 6,
	name: "Cart",
	description: "was ID #600-31, whoever sees this tool first change this description and change the ID # to the new on",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 7,
	name: "Cart",
	description: "was ID #600-32, whoever sees this tool first change this description and change the ID # to the new on",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 8,
	name: "Cart",
	description: "was ID #600-38, whoever sees this tool first change this description and change the ID # to the new on",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 686,
	name: "Cart",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 684,
	name: "Cart",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 656,
	name: "Cart",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 631,
	name: "Cart",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 625,
	name: "Cart",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 624,
	name: "Cart",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 630,
	name: "Cart",
	description: "",
	condition: true,
	category: 6,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )
	
Tool.create(
	id: 706,
	name: "20' Skyjack",
	description: "",
	condition: true,
	category: 7,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 708,
	name: "26' Skyjack",
	description: "",
	condition: true,
	category: 7,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 702,
	name: "Hydraulic Bender",
	description: "",
	condition: true,
	category: 7,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 703,
	name: "Wire Puller",
	description: "",
	condition: true,
	category: 7,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 707,
	name: "Pump Truck",
	description: "",
	condition: true,
	category: 7,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 713,
	name: "Rigid Locator",
	description: "",
	condition: true,
	category: 7,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )

Tool.create(
	id: 706,
	name: "Concrete Vibrator",
	description: "715",
	condition: true,
	category: 7,
	jobsite_id: shop_job.id,
	user_id: shop_user.id )