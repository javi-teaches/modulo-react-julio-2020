import React from 'react';

function Card (props) {
	let { cardInfo } = props;
	return (
		<div className="col-md-4 mb-4">
			<div className={'card shadow h-100 py-2 ' + cardInfo.borderColor}>
				<div className="card-body">
					<div className="row no-gutters align-items-center">
						<div className="col mr-2">
							<div className="text-xs font-weight-bold text-primary text-uppercase mb-1">
								{cardInfo.title}
							</div>
							<div className="h5 mb-0 font-weight-bold text-gray-800">
								{cardInfo.content}
							</div>
						</div>
						<div className="col-auto">
							<i className={`fas fa-2x text-gray-300 ${cardInfo.icon}`}></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	)
}

export default Card;