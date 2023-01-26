const data = {
  name: 'Plateau maginfique',
  description: 'test test',
  image: '',
  price: '25,90'
}

for (const key in data) {
  if (!data[key]) throw new Error(`Merci de saisir une valeur pour l'objet ${key}`, req, res, 400)
  console.log('Bravo pour avoir ajoute :', data[key])
  // if(key === undefined) return res.json(`Merci de saisir une valeur pour la ${key} suivante`)
}