import React from 'react'

function Card (props) {
	return (
		<div className="card my-4">
			<img src={`/images/${props.characterData.img}`} className="card-img-top" alt="imagen" />
			<div className="card-body">
				<h5 className="card-title">{props.characterData.name}</h5>
				<p className="card-text">{props.characterData.description}</p>
				<a href="/" className="btn btn-primary">Go somewhere</a>
			</div>
		</div>
	)
}

export default Card;