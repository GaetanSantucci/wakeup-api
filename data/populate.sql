INSERT INTO public.plate(name, subtitle, description, image, price, slug)
	VALUES ( 'plateau sunshine', 'Conseillé pour 2-3 personnes', '3 viennoiseries artisanales\n
Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n Cake saveur vanille (fait-maison)\n
1 bouteille de jus d''orange frais (pressé maison de 25cl)\n Pâte à tartiner et confiture (Alain Milliat)\n Fruits frais ', 
			'http://localhost:3000/images/sunshine.png',
			29.90, 
			'sunshine'),
( 'plateau veggie', 'Conseillé pour 2-3 personnes', 
'3 viennoiseries artisanales\n Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n 6 madeleines aux pépites de chocolat (fait-maison)\n Cake saveur vanille (fait-maison)\n 4 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n Cream chees à l''huile d''olive et bascilic frais\n
Légumes croquants\n 1 bouteille de jus d''orange frais (pressé maison de 25cl)\n Pâte à tartiner et confiture (Alain Milliat)\n Fruits frais ', 
			'http://localhost:3000/images/veggie.png', 
 			34.90, 
 			'veggie'),
			( 'plateau best-seller', 'Conseillé pour 2-3 personnes', 
'3 viennoiseries artisanales\n Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n 4 madeleines aux pépites de chocolat (fait-maison)\n Cake saveur vanille (fait-maison)\n 4 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n 4 crescentines (petits pains italien fait-maison) au jambon Serrano affinage 12 mois\n Cantal entre deux AOP (lait cru)\n 
Légumes croquants\n 1 bouteille de jus d''orange frais (pressé maison de 25cl)\n Pâte à tartiner et confiture (Alain Milliat)\n Fruits frais ', 
			'http://localhost:3000/images/bestseller.png', 
 			42.90, 
 			'bestseller'),
			( 'plateau dolce vita', 'Conseillé pour 2-3 personnes', 
'3 viennoiseries artisanales\n Pain artisanal tranché\n 6 mini crêpes vanillées (fait-maison)\n 4 madeleines aux pépites de chocolat (fait-maison)\n Cake saveur vanille (fait-maison)\n 4 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n 4 crescentines (petits pains italien fait-maison) au jambon Serrano affinage 12 mois\n Jambon de Parme 16 mois d''affinage\n 
Pecorino DOP (fromage de brebis au lait pasteurisé)\n Burrata à l''huile d''olive\n Légumes croquants\n Olive vertes\n Pâte à tartiner et confiture (Alain Milliat)\n Fruits frais ', 
			'http://localhost:3000/images/dolcevita.png', 
 			49.90, 
 			'dolcevita'),
			( 'plateau apéritif', 'Conseillé pour 4-5 personnes', 
'Pain artisanal tranché\n 6 gaufres salées emmental, tomates séchées et basilic frais (fait-maison)\n Cantal entre deux AOP (lait cru)\n Bleu d''Auvergne AOP (lait cru)\n Buche cendrée au lait de chèvre\n Jambon cru d''Auvergne\n Bresaola (boeuf seché)\n Pistaches séchées et figues séchées\n Légumes croquants\n Olive vertes\n Confiture (Alain Milliat) et miel (de notre apiculteur local)\n Fruits frais ', 
			'http://localhost:3000/images/aperitive.png', 
 			69.90, 
 			'aperitif')

INSERT INTO public.associated_sale(
	name, subtitle, description, image, price)
	VALUES ('jus d''orange pressé', '', 'Bouteille de 25cl de jus d''orange frais pressé maison', 'http://localhost:3000/images/orange.jpeg', 3.90),
	('prosecco riccadonna', '', 'Bouteille de Prosecco Riccadona de 20cl', 'http://localhost:3000/images/prosecco.jpeg', 6.90),
	('thé noir dammann', '', 'Sachet de the noir breakfast dammann', 'http://localhost:3000/images/the_dammann.jpeg', 0.90)