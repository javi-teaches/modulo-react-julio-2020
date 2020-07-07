import React from 'react';

// Components
import Card from './Card';

const Product = (props) => {
	let { productData, children } = props;
	return (
		<React.Fragment>
			{ children }
			<Card data={productData} number={235} />
		</React.Fragment>
	)
};

export default Product;