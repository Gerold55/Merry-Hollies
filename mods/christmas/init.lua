local present_table = { --name, material, invimg
{'Present', 'present'}
}

for i in ipairs (present_table) do
	local name = present_table[i][1]
	local material = present_table[i][2]
	local invimg = present_table[i][3]
	
minetest.register_node('christmas:present_' ..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'present.obj',
	tiles = {'green_'..material..'.png'},
	groups = {choppy=2,oddly_breakable_by_hand=2, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
})
end