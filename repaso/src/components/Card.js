import React from 'react';
import PropTypes from 'prop-types';

function Card (props) {
	console.log(props.number);
	
	let { data } = props;
	data.img = data.img !== '' ? data.img : 'no-image.jpg';

	return (
		<div className="card my-4">
			<img src={`/images/${data.img}`} className="card-img-top" alt="imagen" />
			<div className="card-body">
				<h5 className="card-title">{data.name}</h5>
				<p className="card-text">{data.description}</p>
				<a href={data.url} className="btn btn-primary">Ver más</a>
			</div>
		</div>
	)
}

Card.propTypes = {
	data: PropTypes.object.isRequired,
	number: PropTypes.number
}

Card.defaultProps = {
	data: {
		img: 'no-image.jpg',
		name: 'Gil mandá el nombre',
		description: 'Sin descripción',
		url: 'Sin URL'
	}
}

export default Card;