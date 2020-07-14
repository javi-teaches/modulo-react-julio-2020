import React, { Component } from 'react';

class Counter extends Component {
	constructor () {
		super(); // Necesario para inicializar el estado del component
		// Configurando el estado inicial
		this.state = {
			value: 0,
			user: 'Peter',
			message: null
		}

		// Binding del método decrementHandler
		this.decrementHandler = this.decrementHandler.bind(this);
	}

	/* 
		Life Cycle
		- cuando el componente se ha renderizado -> componentDidMount()
		- cuando el componente se actualiza -> componentDidUpdate()
		- cuando el componente se vaya a sacar de pantalla -> componentWillUnmount()
	*/

	componentDidMount () {
		console.log('El componente se acaba de renderizar');
		// Acá se lanzan los llamados a las API's
	}
	
	componentDidUpdate () {
		console.log('El componente se actualizó');
	}
	
	componentWillUnmount () {
		console.log('El componente se va a desmontar');
	}

	// Event Handlers Functions
	decrementHandler () {
		let { value } = this.state;
		if(value > 0) {
			this.setState(prevState => ({
				value: prevState.value - 1,
				user: 'Jane'
			}))
		} else {
			this.setState(prevState => ({ message: '¡No podés ir abajo de CERO!'}) )
		}
	}

	incrementHandler () {
		let { value } = this.state;

		if (value > 0) {
			this.setState(prevState => ({ message: null}) )
		}

		this.setState(function (prevState) {
			return {
				value: prevState.value + 1
			}
		})
	}

	render () {
		const { value, user, message } = this.state;
		return (
			<React.Fragment>
				<h2>Counter</h2>
				<h3>Hi, I'm { user }</h3>
				<div className="alert alert-dark">
					{ value }
				</div>

				{ message && <div className="alert alert-danger"> { message } </div> }

				<button 
					className="btn btn-info mx-2"
					onClick={ this.decrementHandler }
				>Decrementar</button>

				<button 
					className="btn btn-info mx-2"
					onClick={ () => this.incrementHandler() }
				>Incrementar</button>
			</React.Fragment>
		)
	}
}

export default Counter;