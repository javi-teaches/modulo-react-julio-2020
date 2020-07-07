import React from 'react';

const TableRow = (props) => {
	let { description, price, categories, colors, stock } = props.productData;
	return (
		<tr>
			<td>{ props.productData.name }</td>
			<td>{ description }</td>
			<td>$ { price }</td>
			<td>
				<ul>
					{
						categories.map(function (category) {
							return <li key={category.id}>{ category.name } / { category.id }</li>
						})
					}
				</ul>
			</td>
			<td>
				<ul>
					{
						colors.map(function (color, idx) {
							return <li key={idx} style={{ color: color }}>{color}</li>
						})
					}
				</ul>
			</td>
			<td>{ stock }</td>
		</tr>
	)
}

export default TableRow;