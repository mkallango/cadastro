@Cliente = React.createClass:
	render: ->
			React.DOM.tr null,
				React.DOM.th null, @props.cliente.name
				React.DOM.th null, @props.cliente.address
        React.DOM.th null,
          for crianca in @state.cliente
            crianca.name + ", "
