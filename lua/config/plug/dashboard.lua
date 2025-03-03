local db = require('dashboard')

db.default_executive = 'telescope'
db.hide_statusline = true

db.custom_header = {
	'┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑',
	'│ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣛⣿⣿⣟⡻⢿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣆⣾⡿⠻⢻⣿⡿⣱⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ │',
	'│ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢕⣾⣿⢟⣉⣙⣻⠷⣜⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣼⣹⣿⠁⢈⣼⡿⢑⣛⣛⣃⣛⣛⣻⣿⣿⣿⣿⣿⣿⣿ │',
	'│ ⣿⣿⣿⣿⠟⣁⢌⠉⠩⠭⢍⢛⢿⣿⣿⣿⡏⢎⣾⣿⢏⣾⣿⣿⣿⣿⡞⡞⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⡿⣿⠇⠀⠿⡋⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ │',
	'│ ⣿⣿⣿⢫⡖⢰⣿⢡⣤⣶⣦⣤⣢⠻⣿⣿⣘⣾⡿⡝⢬⡍⣉⣧⠻⠿⣿⢹⢸⣿⣿⣿⣿⡇⣿⣿⣿⣛⣛⣛⣛⠿⣿⣇⣷⠸⣠⠣⠟⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ │',
	'│ ⣿⣿⢣⡟⣼⢸⣿⣿⣿⣿⢿⣿⣷⡵⡝⡇⢿⡿⡱⣱⣦⣤⣿⣡⡃⠉⡂⢠⠎⣿⣿⣿⣿⡇⣿⣿⣶⣶⣶⣾⣷⡇⣿⣿⣶⢸⡿⡆⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ │',
	'│ ⣿⢣⡿⠉⡟⢸⢃⣿⠯⠾⠓⣽⠛⣩⣹⡹⡼⣱⢱⣿⣿⣏⡛⣻⣿⣿⠃⢸⠀⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⡖⡆⢝⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⢻⣿⣿⣿⣿ │',
	'│ ⣿⢸⠋⡜⣼⢌⢩⠖⠂⠀⣲⣇⢀⣠⡄⡆⢧⠇⡼⣿⣟⢉⠀⢻⣿⡇⠘⠨⠈⢸⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣇⢿⣌⢿⢳⣶⣶⣾⣷⣾⣭⠍⣣⣶⢣⣿⣿⣿⣿⣿ │',
	'│ ⡟⢿⢸⣼⡏⡈⢸⣶⣶⣿⡿⣿⡜⣿⣿⠃⠘⢀⣇⠘⣫⡱⣤⢸⣭⣀⣀⡀⠀⡼⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⢸⣿⢰⠿⢿⣿⡿⠿⢿⣿⣷⣜⠃⣾⣿⣿⣿⣿⣿ │',
	'│ ⢁⣿⢸⠘⡠⢎⣿⣿⣿⣿⣳⠖⠮⠙⡿⣷⠀⢀⣴⣾⣿⣇⢿⣎⠉⢩⣭⠉⡅⣧⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⡏⣷⣿⣿⣿⣿⡇⡟⡿⣗⠿⣿⣶⣾⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿ │',
	'│ ⣾⢇⡾⠀⣷⡤⡘⢿⣿⣿⠃⣠⠄⠀⡇⢇⣴⣿⡿⣿⡟⣿⡈⢇⠾⢩⡁⡼⠀⠸⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣧⠇⣷⣝⡈⣛⣿⣿⣿⣿⣿⣿⢀⠎⠻⣿⣿⣿⣿ │',
	'│ ⡴⠋⣄⡴⢣⡇⢸⢄⠻⣿⡧⣉⣉⢅⣴⣿⣟⡛⠧⢙⢿⡜⣃⡆⠀⡿⠇⣄⡂⢽⣦⣿⣿⡇⣛⣛⣛⣿⣿⡏⣼⢸⣿⣭⣭⣭⣭⠤⣭⣭⣭⣭⣥⠭⠭⠭⠭⠭⠤⢤⣤⣭⣭⣭⣭ │',
	'│ ⠖⠊⠙⠚⠂⢠⠈⢳⠳⡨⠙⠛⣵⣿⣿⣿⡟⡀⣾⢘⣶⣾⡟⠀⠀⡆⢀⢸⢧⣼⣿⣿⣿⡇⣿⣿⣿⣿⣿⡿⠼⢸⣿⣿⢟⣫⡖⣬⣭⣝⠿⠿⢿⣿⣿⣿⣿⡿⣛⣛⢃⢶⣶⣎⣿ │',
	'│ ⣿⠿⣛⣦⡄⠀⠡⠱⠇⢇⣵⣿⣿⣿⣿⡿⣰⢡⢰⢿⣹⢟⡵⠰⠁⠇⡼⢨⢸⣿⣿⣿⣿⡇⠭⠉⣉⣀⣰⡐⢆⢸⣿⠑⣲⣮⠍⡚⢛⠶⣖⡭⣥⣆⣤⠤⢠⢮⣈⠁⣴⢲⡖⠂⣸ │',
	'│ ⣶⠛⢑⣢⣶⡀⠀⢇⣴⣿⣿⣿⣿⣿⡟⣰⣿⣿⡦⡈⣫⣾⢃⡒⠀⢱⠃⠆⠸⡫⠏⣻⣿⡇⠙⠛⠛⠋⠁⣬⣷⣿⣿⣔⣈⠝⠈⢂⠅⠋⠚⠡⢉⣘⡣⣃⣙⠥⠂⠘⠒⣢⣞⢠⣿ │',
	'│ ⣱⣾⣿⣿⣿⠟⣰⣿⣿⣿⣿⣿⣿⠏⣸⣿⣿⡏⡇⣿⡘⡇⣀⠃⠀⠈⠀⠀⣈⢌⡞⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣤⣤⣀⣀⣈⣉⣉⣉⣉⠉⠉⣀⣠⣴⣾⣿ │',
	'│ ⣿⣿⣿⡿⣣⣾⣿⣿⣿⣿⣿⣿⠏⠐⢸⣿⡿⡱⢧⢯⣧⠡⣷⠀⢀⠀⠀⢁⣷⡈⡒⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟ │',
	'┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙',
	'                      Get back to work!                      ',
	'                      給我回去工作！                      ',
}

db.custom_center = {
	{ desc='喵~' }
}

db.custom_footer = {
	'	',
	'▷ Modded nii-nvim ◁',
}

