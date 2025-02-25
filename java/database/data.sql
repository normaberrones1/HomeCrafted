BEGIN TRANSACTION;


INSERT INTO users (username, email, password_hash, profile_picture_url, bio, role, visibility) VALUES
('user', 'john.doe@example.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'https://example.com/john.jpg', 'A home decor enthusiast.', 'ROLE_USER', TRUE),
('admin', 'jane.smith@example.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'https://example.com/jane.jpg', 'Interior designer with a love for modern styles.', 'ROLE_ADMIN', TRUE);


INSERT INTO rooms (room_name, user_id) VALUES
('Living Room', 1),
('Bedroom', 2);


INSERT INTO todo_lists (title, description, status, deadline, room_id, user_id) VALUES
('Rearrange Living Room', 'Move the couch and add some new plants.', 'Pending', '2025-03-01', 1, 1),
('Bedroom Redesign', 'New furniture and color scheme for a cozy feel.', 'In Progress', '2025-04-01', 2, 2);


INSERT INTO home_styles (style_name, description) VALUES
('Modern', 'A clean, sleek aesthetic with minimalist design and functional furniture.'),
('Rustic', 'A style inspired by natural, earthy elements and rural charm, using raw wood and natural textures.'),
('Industrial', 'A raw, urban style inspired by factories and warehouses, with exposed brick and steel.'),
('Minimalist', 'Simplicity and functionality are key, with a focus on open spaces and clean lines.'),
('Scandinavian', 'A functional and simple design with natural elements, light colors, and a focus on coziness.'),
('Contemporary', 'A mix of modern and traditional elements, focusing on comfort, space, and aesthetics.'),
('Traditional', 'Classic decor with rich wood furniture, elegant fabrics, and symmetry.'),
('Mid-Century Modern', 'Design focused on clean lines, functional furniture, and organic shapes.'),
('Bohemian', 'A carefree, eclectic style that mixes colors, patterns, and textures for a free-spirited look.'),
('Farmhouse', 'A cozy, country style that combines rustic charm with modern amenities and comfort.'),
('Coastal', 'A breezy, beach-inspired style with light colors, natural textures, and ocean motifs.'),
('Victorian', 'A richly detailed, opulent style characterized by heavy drapes, floral patterns, and antique furniture.'),
('Transitional', 'A blend of traditional and modern elements for a balanced, harmonious design.'),
('Shabby Chic', 'Vintage-inspired with soft colors, floral prints, and distressed furniture for a comfortable, worn look.'),
('Gothic', 'A dramatic style with dark colors, ornate details, and luxurious textures.'),
('Art Deco', 'A glamorous, geometric style from the 1920s and 1930s featuring bold colors and metallic finishes.'),
('French Country', 'A charming style inspired by the French countryside with rustic furniture and soft hues.'),
('Cottage', 'Cozy and inviting, with floral patterns, warm colors, and vintage elements.'),
('Mediterranean', 'Inspired by Southern Europe, featuring bright colors, rustic textures, and an earthy, natural vibe.'),
('Southwestern', 'Inspired by the American Southwest, with earthy colors, adobe walls, and vibrant textiles.'),
('Tropical', 'A laid-back style with lush plants, bright colors, and natural materials, reminiscent of the tropics.'),
('Boho Chic', 'A chic, carefree style that incorporates ethnic patterns, vibrant textiles, and earthy tones.'),
('Urban', 'A modern city style that uses sleek furniture, neutral colors, and functional design.'),
('Eclectic', 'A creative mix of various styles, combining different periods and cultures into a unique home.'),
('Colonial', 'A traditional style that draws from early American colonial architecture with classic furnishings.'),
('Country', 'A warm, rustic style with simple furniture, earthy colors, and vintage charm.'),
('Contemporary Coastal', 'A modern coastal style that combines sleek design with beach-inspired elements.'),
('Bungalow', 'A low, simple design often with large windows, built for comfort and easy living.'),
('Zen', 'Inspired by Japanese principles of simplicity and tranquility, featuring minimalistic design and natural elements.'),
('Nautical', 'Inspired by the sea, this style uses nautical colors and elements like ropes and anchors for a beachy feel.'),
('Provencal', 'A French-inspired style with rustic charm, warm earth tones, and vintage pieces.'),
('Craftsman', 'A style that emphasizes handcrafted details, wood, and natural materials, with a focus on artistry.'),
('Mountain Lodge', 'A cozy style with wood beams, stone walls, and natural materials for a rustic feel.'),
('Industrial Chic', 'A style that combines the raw look of industrial design with elegant, modern touches.'),
('Shaker', 'A minimalist style with simple wooden furniture and a focus on functionality and craftsmanship.'),
('Regency', 'A neoclassical style characterized by elegant, refined furniture and luxurious fabrics.'),
('Art Nouveau', 'A decorative style with flowing, organic lines and nature-inspired motifs, popular in the early 20th century.'),
('French Provincial', 'A French-inspired style with rustic, elegant charm, often incorporating vintage furniture.'),
('Cape Cod', 'A coastal, nautical style with light colors, wood, and simple yet functional furniture.'),
('Farmhouse Chic', 'A blend of rustic and modern design, focusing on comfortable, practical spaces.'),
('Neo-Classical', 'A style inspired by classical architecture with refined elegance, symmetry, and luxurious details.'),
('Glam', 'A luxurious and sophisticated style that uses bold colors, metallic finishes, and plush fabrics.'),
('Rustic Modern', 'A combination of rustic elements like wood and stone, paired with modern furniture and clean lines.'),
('Luxury', 'A high-end style featuring opulent materials, refined details, and a focus on elegance.'),
('Urban Loft', 'A style inspired by open spaces, industrial elements, and modern furnishings in city apartments.'),
('New England', 'A traditional style inspired by the New England region, featuring coastal charm and rustic touches.'),
('French Revival', 'A style that incorporates vintage French design with a refined, elegant approach to interiors.'),
('Mid-Century', 'A retro style from the mid-20th century, featuring functional furniture, bold colors, and organic shapes.'),
('Country Cottage', 'A cozy style that combines rustic elements with soft, charming details for a homey feel.'),
('Transitional Modern', 'A refined style blending modern and traditional elements with clean lines and warm materials.');


INSERT INTO color_schemes (base_color, complementary_color, accent_color, home_style_id) VALUES
('White', 'Gray', 'Black', 1),
('Dark Wood', 'Olive Green', 'Beige', 2),
('Gray', 'Yellow', 'Black', 3),
('White', 'Black', 'Silver', 4),
('Light Blue', 'White', 'Gray', 5),
('Beige', 'Blue', 'White', 6),
('Navy Blue', 'White', 'Gold', 7),
('Teal', 'Orange', 'White', 8),
('Earthy Tones', 'Burgundy', 'Turquoise', 9),
('Cream', 'Light Gray', 'Wood Tones', 10),
('Soft Blue', 'White', 'Navy', 11),
('Deep Burgundy', 'Soft Cream', 'Gold', 12),
('Neutral Gray', 'Forest Green', 'Beige', 13),
('Pastel Pink', 'Cream', 'Light Blue', 14),
('Dark Red', 'Black', 'Gold', 15),
('Gold', 'Silver', 'Black', 16),
('Ivory', 'Lavender', 'Soft Pink', 17),
('Light Green', 'Cream', 'Dark Brown', 18),
('Terracotta', 'Olive Green', 'Beige', 19),
('Clay Red', 'Tan', 'Orange', 20),
('Turquoise', 'White', 'Coral', 21),
('Deep Purple', 'Beige', 'Rust', 22),
('Gray', 'Black', 'Red', 23),
('Multicolor', 'Neutral Tones', 'Wood Tones', 24),
('White', 'Beige', 'Red', 25),
('Yellow', 'Blue', 'White', 26),
('Sand', 'Turquoise', 'White', 27),
('Light Brown', 'White', 'Black', 28),
('Soft White', 'Gray', 'Black', 29),
('Navy', 'White', 'Red', 30),
('Soft Yellow', 'Beige', 'Brown', 31),
('Olive Green', 'Brown', 'Beige', 32),
('Stone Gray', 'Dark Wood', 'Rust', 33),
('Charcoal Gray', 'Copper', 'Cream', 34),
('White', 'Dark Gray', 'Red', 35),
('Deep Blue', 'White', 'Gold', 36),
('Emerald Green', 'White', 'Gold', 37),
('Ivory', 'Soft Blue', 'Rust', 38),
('Navy Blue', 'White', 'Red', 39),
('Muted Green', 'White', 'Gray', 40),
('Cream', 'Burgundy', 'Gold', 41),
('Black', 'Gold', 'White', 42),
('Charcoal', 'Wood Tones', 'Cream', 43),
('Deep Blue', 'Gold', 'White', 44),
('Concrete Gray', 'White', 'Wood Tones', 45),
('Soft Beige', 'Navy', 'White', 46),
('Dusty Rose', 'Cream', 'Lavender', 47),
('Olive Green', 'White', 'Beige', 48),
('Light Gray', 'Warm Brown', 'Turquoise', 49),
('Beige', 'Forest Green', 'Gold', 50);


INSERT INTO posts (title, description, image_url, user_id, style_id, color_scheme_id) VALUES
('Modern Living Room', 'A clean and sleek design for the living room.', 'https://example.com/livingroom.jpg', 1, 1, 1),
('Cozy Bedroom', 'A warm and inviting bedroom with a rustic feel.', 'https://example.com/bedroom.jpg', 2, 2, 2);


INSERT INTO likes (user_id, post_id) VALUES
(1, 1),
(2, 2);


INSERT INTO comments (user_id, post_id, text) VALUES
(1, 1, 'I love this modern look!'),
(2, 2, 'This bedroom looks so cozy and inviting.');


INSERT INTO tags (name) VALUES
('modern'),
('rustic'),
('minimalist'),
('cozy'),
('design');


INSERT INTO post_tags (post_id, tag_id) VALUES
(1, 1),
(2, 2);


COMMIT TRANSACTION;