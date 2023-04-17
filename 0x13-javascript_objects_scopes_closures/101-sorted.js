#!/usr/bin/node
const dict = require('./101-data.js').dict;

const listk = Object.keys(dict);
const newdict = {};
for (let con = 0; con < listk.length; con++) {
	const nkey = dict[listk[con]];
	if (newdict[nkey]) {
		newdict[nkey].push(listk[con]);
		} else {
			newdict[nkey] = [listk[con]];
		}
}
console.log(newdict);
