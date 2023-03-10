INSERT INTO public.plate(name, subtitle, description, image, price, slug)
	VALUES ( 'plateau sunshine', 'Conseillé pour 2-3 personnes', '3 viennoiseries artisanales\n
Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n Cake saveur vanille (fait-maison)\n Fruits frais\n 1 bouteille de jus d''orange frais (pressé maison de 25cl)\n Pâte à tartiner et confiture (Alain Milliat)', 
			'http://localhost:3000/images/sunshine.webp',
			29.90, 
			'sunshine'),
( 'plateau veggie', 'Conseillé pour 2-3 personnes', 
'3 viennoiseries artisanales\n Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n 6 madeleines aux pépites de chocolat (fait-maison)\n Cake saveur vanille (fait-maison)\n 4 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n Cream cheese à l''huile d''olive et basilic frais\n
Fruits frais, légumes croquants\n 1 bouteille de jus d''orange frais (pressé maison de 25cl)\n Pâte à tartiner et confiture (Alain Milliat)', 
			'http://localhost:3000/images/veggie.webp', 
 			34.90, false,
 			'veggie'),
			( 'plateau best-seller', 'Conseillé pour 2-3 personnes', 
'3 viennoiseries artisanales\n Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n 4 madeleines aux pépites de chocolat (fait-maison)\n Cake saveur vanille (fait-maison)\n 4 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n 4 crescentine (petits pains italien fait-maison) au jambon Serrano affinage 12 mois\n Cantal entre deux AOP (lait cru)\n 
Fruits frais, légumes croquants\n 1 bouteille de jus d''orange frais (pressé maison de 25cl)\n Pâte à tartiner et confiture (Alain Milliat)', 
			'http://localhost:3000/images/bestseller.webp', 
 			42.90, false,
 			'bestseller'),
			( 'plateau dolce vita', 'Conseillé pour 2-3 personnes', 
'3 viennoiseries artisanales\n Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n 4 madeleines aux pépites de chocolat (fait-maison)\n Cake saveur vanille (fait-maison)\n 4 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n 4 crescentines (petits pains italien fait-maison) au jambon de Parme\n Jambon de Parme 16 mois d''affinage\n 
Pecorino DOP (fromage de brebis au lait pasteurisé) et Burrata à l''huile d''olive\n Fruits frais, légumes croquants et olives vertes\n Pâte à tartiner et confiture (Alain Milliat)', 
			'http://localhost:3000/images/dolcevita.webp', 
 			49.90, false,
 			'dolcevita'),
			( 'plateau apéritif', 'Conseillé pour 4-5 personnes', 
'Pain artisanal tranché\n 6 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n Cantal entre deux AOP (lait cru)\n Bleu d''Auvergne AOP (lait cru)\n Bûche cendrée au lait de chèvre\n Jambon cru d''Auvergne\n Bresaola (boeuf séché)\n Pistaches et figues séchées\n Fruits frais, légumes croquants et olives vertes\n Confiture (Alain Milliat) et miel (de notre apiculteur local)', 
			'http://localhost:3000/images/aperitif.webp', 69.90, false, 'aperitif'),
			('mini plateau best-seller', 'Conseillé pour 1-2 personnes', '1 pain au chocolat artisanal\n Pain artisanal tranché\n 3 mini crêpes vanillées (fait-maison)\n Cake vanillé (fait-maison)\n 2 gaufres emmental tomates séchées et basilic frais\n Cantal AOP (lait cru)\n Pâte à tartiner et confiture (Alain Milliat)\n Fruits frais et légumes croquants','http://153.92.223.190/images/mini_bestseller.webp', 29.90, true, 'mini-best-seller'),
			('burrata à partager', 'Conseillé pour 2-3 personnes', 'Burrata crémeuse de 300g au lait de Bufflone et huile d''olive\n Pain tranché\n Fruits frais et légumes croquants', 'http://153.92.223.190/images/burrata.webp', 32.90, true,'burrata'),
			('mini dolce vita', 'Conseillé pour 1-2 personnes', '1 pain au chocolat artisanal\n Pain artisanal tranché\n 3 mini crêpes vanillées (fait-maison)\n Cake vanillé (fait-maison)\n 3 gaufres emmental tomates séchées et basilic frais\n Burrata crémeuse au lait de bufflonne\n Jambon de Parme 16 mois d''affinage\n Copeaux de Pecorino DOP (fromage de brebis au lait pasteurisé)\n Fruits frais, légumes croquants et olives vertes\n Pâte à tartiner et confiture (Alain Milliat)', 'http://153.92.223.190/images/mini_dolce.webp', 34.90, true, 'mini-dolce-vita'),
			('mini apéritif', 'Conseillé pour 2-3 personnes', 'Pain artisanal tranché\n Cantal entre deux AOP (lait cru)\n Fourme d''Ambert AOP (lait cru) \n Crottin de chèvre (lait cru)\n Jambon Serrano affinage 12 mois\n Pistaches séchées et figues séchées\n Fruits frais, légumes croquants et olives verte\n Confitures (Alain Milliat) et miel (de notre apiculteur local)', 'http://153.92.223.190/images/mini_aperitif.webp', 42.90, true,'mini-aperitif')

INSERT INTO public.addon_sales(
	name, subtitle, description, image, price)
	VALUES ('jus d''orange pressé', '', 'Bouteille de 25cl de jus d''orange frais pressé maison', 'http://localhost:3000/images/orange.jpeg', 3.90),
	('prosecco riccadonna', '', 'Bouteille de Prosecco Riccadona de 20cl', 'http://localhost:3000/images/prosecco.jpeg', 6.90),
	('thé noir dammann', '', 'Sachet de the noir breakfast dammann', 'http://localhost:3000/images/the_dammann.jpeg', 0.90)

	INSERT INTO public.plate_has_addon_sales(
	addon_sales_id, plate_id)
	VALUES (1, 1),
	(3, 1),
	(1, 2),
	(3, 2),
	(1, 3),
	(2, 3),
	(3, 3),
	(1, 4),
	(2, 4),
	(2, 5),
	(1, 6),
	(2, 6),
	(3, 6),
	(2, 7),
	(1, 8),
	(2, 8),
	(2, 9)

	INSERT INTO public.blog(
	title, description, image, interaction, slug)
	VALUES ('Découvrez nos plateaux', 'Succombez à  nos plateaux gourmands, élégants et raffinés et passez un moment convivial et de partage avec vos proches. \n Nous sélectionnons des produits gourmands, et de qualité pour vous proposer le meilleur. \n Vous pouvez également accompagner vos plateaux brunch avec une bouteille de Prosecco Riccadonna. Ce vin blanc pétillant aux fines bulles caractérisé par sa fraicheur et ses notes fruitées accompagnera parfaitement l''un de nos brunch ou notre plateau apéritif.', 'http://localhost:3000/images/brunch_dolce.webp', 'Découvrir', 'plateau'),
	('Offrez un moment de partage unique', 'Surprenez vos proches et offrez leur un petit-déjeuner gourmand livré à domicile ! Une idée originale pour un anniversaire ou pour les fêtes de fin d''année. \n Notre carte cadeau prête à offrir sera parfaite pour n''importe quelles occasions avec une jolie carte cadeau et son enveloppe élégante voila le cadeau parfait pour offrir un cadeau original et très gourmand ! \n N''hésitez pas à nous contactez par mail à contact@wakeupbox.fr ou à nous faire votre demande dans la rubrique Contact.', 'http://localhost:3000/images/carte_cadeau.webp', 'En savoir plus', 'prestation#carte_cadeau'),
	('Pour vos évènements', 'WAKE UP vous accompagne pour vos évènements tel qu''un anniversaire, un baptême, pour un apéritif dinatoire ou un lendemain de mariage.\n Nous sommes disponibles pour échanger avec vous concernant vos envies pour cet évènement.\n Pour toute demande, merci de nous contacter au minimum 2 semaines à l''avance.', 'http://localhost:3000/images/plateau_aperitif_homepage.webp', 'Contact', 'contact'),
	('Pour vos entreprises', 'Découvrez nos plateaux business pour vos petits-déjeuners d''entreprise, vos réunions, vos teams building ou tout autre évènement d''entreprise. \n Du petit-déjeuner classique au petit-déjeuner avec une touche salée, nos plateaux s''adapterons à toutes les envies. \n Livraison pour une commande minimum de 5 personnes.Pour toute demande, merci de nous contacter au minimum 2 semaines à l''avance.', 'http://localhost:3000/images/business_homepage.webp', 'En savoir plus', 'prestation'),;