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
	visual_scale = 0.5,
	wield_scale = {x=1.0, y=1.0, z=1.0},
	groups = {choppy=2,oddly_breakable_by_hand=2, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
})
end

--veNext start
minetest.register_node("christmas:star",
 { 	description = "star", 	
 drawtype = "plantlike",
 tiles = {"star.png"}, 
 	is_ground_content = true, 	
 	groups = {snappy=1,bendy=2,cracky=1}, 	
 	drop = 'christmas:star', 	
 	})
minetest.register_node("christmas:lights", {
description = "lights",
light_source = 10,
tiles = {
				"lights.png",
				"lights.png",
				"lights.png",
				"lights.png",
				"lights.png",
				"lights.png",
			}, 
groups = {snappy=1,bendy=2,cracky=1},
        drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = 'facedir',
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, 0.49999, 0.5, 0.5, 0.5},
				}
			},
			on_punch = function (pos, node, puncher)
		node.name = "christmas:lightsflashing"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node("christmas:lightsoff", {
description = "lights off",
tiles = {
				"lights.png",
				"lights.png",
				"lights.png",
				"lights.png",
				"lights.png",
				"lightsoff.png",
			},
        
groups = {snappy=1,bendy=2,cracky=1},
       drawtype = "nodebox",
	   paramtype = "light",
	   paramtype2 = 'facedir',
	   node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, 0.49999, 0.5, 0.5, 0.5},
					}
				},
	on_punch = function (pos, node, puncher)
		node.name = "christmas:lights"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node("christmas:lightsflashing", {
description = "lights flashing",
light_source = 10,
tiles = {
				"lights.png",
				"lights.png",
				"lights.png",
				"lights.png",
				"lights.png",
				{name='lightsflashing.png', animation={type='vertical_frames', aspect_w=16, aspect_h=16, length=2}},
			},
        
groups = {snappy=1,bendy=2,cracky=1},
        drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = 'facedir',
			drop = "christmas:lights_off",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, 0.49999, 0.5, 0.5, 0.5},
				}
			},
		on_punch = function (pos, node, puncher)
		node.name = "christmas:lightsoff"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node("christmas:garland_silver",{
description = "garland silver",
tiles = {
				"garland_silver.png",
				"garland_silver.png",
				"garland_silver.png",
				"garland_silver.png",
				"garland_silver.png",
				"garland_silver.png",
			},
        
groups = {snappy=1,bendy=2,cracky=1},
        drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = 'facedir',
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, 0.49999, 0.5, 0.5, 0.5},
				}
			}
})

minetest.register_node("christmas:garland_yellow",{
description = "garland yellow",
tiles = {
				"garland_yellow.png",
				"garland_yellow.png",
				"garland_yellow.png",
				"garland_yellow.png",
				"garland_yellow.png",
				"garland_yellow.png",
			},
        
groups = {snappy=1,bendy=2,cracky=1},
        drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = 'facedir',
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, 0.49999, 0.5, 0.5, 0.5},
				}
			}
})

minetest.register_node("christmas:skirt",{
description = "skirt",
tiles = {
				"skirt.png",
				"skirt.png",
				"skirt.png",
				"skirt.png",
				"skirt.png",
				"skirt.png",
			},
        
groups = {snappy=1,bendy=2,cracky=1},
        drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = 'facedir',
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.49990, 0.5},
				}
			}
})

--veNext end