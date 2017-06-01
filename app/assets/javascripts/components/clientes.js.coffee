# app/assets/javascripts/components/clientes.js.coffee

@Clientes = React.createClass
	getInitialState: ->
		clientes: @props.data
	getDefaultProps: ->
		clientes: []
	render: ->
		for cliente in @state.clientes
			React.DOM.tr null,
				React.DOM.th null, @props.cliente.name
				React.DOM.th null, @props.cliente.address