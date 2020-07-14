import React, { Component } from 'react';

class RickMorty extends Component {
	constructor () {
		super();
		this.state = {
			characters: null,
			nextPage: null,
			isLoading: true
		}
	}

	// apiCall = async (endPoint) => {
	// 	let data = await fetch(endPoint).then(response => response.json());
	// 	return data;
	// }

	apiCall = (endPoint, callback) => {
		fetch(endPoint)
			.then(response => response.json())
			.then(data => callback(data))
			.catch(error => console.log(error))
	}

	componentDidMount () {
		let endPoint = 'https://rickandmortyapi.com/api/character/';
		this.apiCall(endPoint, (data) => {
			this.setState(prevState => ({
				characters: data.results,
				nextPage: data.info.next,
				isLoading: false
			}))
		});
	}

	loadMoreCharacters () {
		console.log('Vamos a cargar más personajes');
		//  Seteamos isLoadign en true
		this.setState(prevState => ({ isLoading: true }))

		// Volver a pedir por la API
		let newEndPoint = this.state.nextPage;
		this.apiCall(newEndPoint, (data) => {
			this.setState(prevState => ({
				characters: [...data.results, ...prevState.characters],
				nextPage: data.info.next,
				isLoading: false
			}))
		})
	}

	render () {
		const { characters, nextPage, isLoading } = this.state;
		console.log(`Siguiente endPoint: ${nextPage}`);
		return (
			<div className="container my-5">
				<div className="row">
					
					<div className="col-12">
						<h2 className="alert alert-info">Personajes de Rick & Morty</h2>
					</div>

					<div className="col-12 text-right">
						<button 
							className="btn btn-outline-success"
							onClick={ () => this.loadMoreCharacters() }
						>Cargar más</button>
					</div>

					{ isLoading && <div className="col-12 my-5"><div className="spinner-border"></div></div> }

					{
						characters && characters.map((oneCharacter, idx) => {
							return (
								<div className="col-4" key={idx}>
									<div className="card my-4">
										<img src={oneCharacter.image} className="card-img-top" alt="imagen" />
										<div className="card-body">
											<h5 className="card-title">{oneCharacter.name}</h5>
											<p className="card-text">
												<b>Gender:</b> {oneCharacter.gender} <br/>
												<b>Type:</b> {oneCharacter.type || 'No defined'} <br/>
											</p>
										</div>
									</div>
								</div>
							)
						})
					}
				</div>
			</div>
		)
	}
}

export default RickMorty;
