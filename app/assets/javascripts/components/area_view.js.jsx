var AreaView = React.createClass({
  getInitialState: function() {
    return {
      
    }
  }, 

  propTypes: function() {
    area: this.props.area
  },

  renderAreaParameter: function(parameter, index) {
    return (
      <div key={index}>
        <p className="parameter-name">{parameter.name}</p>
        {parameter.numbers.map(function(number, number_index){
          return this.renderParameterNumber(number, number_index) 
        }, this)}
      </div>
    )
  },

  renderParameterNumber: function(number, index){
    return (
      <div key={index}>
        <p className="sub-parameter">{number.name}</p>
        {number.lines.map(function(line, line_index){
          return this.renderNumberLines(line, line_index) 
        },this)}
      </div>
    )
  },

  renderNumberLines: function(line, index) {
    return (
      <li key={index} className="parameter-content">{line.name}</li>
    )
  },

  render: function() {
    return (
      <div className="content-container">
        <h4 className="area-name">{this.props.area.name}</h4>
        {this.props.area.parameters.map(function(parameter, index){
          return this.renderAreaParameter(parameter, index)
        }, this)}
      </div>
    )
  }
})
