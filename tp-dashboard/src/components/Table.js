import React from 'react';

// Components
import TableRow from './TableRow';

// Data
import products from '../data/products.json';

function Table () {
	return (
		<div className="card shadow mb-4">
			<div className="card-body">
				<div className="table-responsive">
					<table className="table table-bordered" id="dataTable" width="100%" cellSpacing="0">
						<thead>
							<tr>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Categories</th>
								<th>Colors</th>
								<th>Stock</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Categories</th>
								<th>Colors</th>
								<th>Stock</th>
							</tr>
						</tfoot>
						<tbody>
							{
								products.map(function (product) {
									return <TableRow key={product.id} productData={product} />
								})
							}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	)
}

export default Table;