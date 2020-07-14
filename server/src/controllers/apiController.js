const DB = require('../database/models');

const { Product } = DB;

module.exports = {
	getAllProducts: (req, res) => {
		// let page = req.query.page;
		// console.log(page);
		Product.findAll({
			limit: 10,
			// offset: 10
		})
			.then(products => {
				let data = {
					metadata: {
						status: 200,
						quantity: products.length,
						next: 'http://' + req.hostname + ':3000' + req.baseUrl + '?page=2'
					},
					info: products
				}
				return res.status(200).json(data);
			});
	}
};
