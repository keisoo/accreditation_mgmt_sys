var AreaGrid = React.createClass({
  getInitialState: function() {
    return {

    }
  },

  renderAreaParameter: function(parameter, index) {
    return(
      <div key={index}>
        <div>
          <p>{parameter.name}</p>
          {parameter.numbers.map(function(number, number_index){
            return this.renderParameterNumber(number, number_index) 
          }, this)}
        </div>
      </div>
    )
  },

  renderParameterNumber: function(number, index){
    return(
      <div key={index}>
        <div>
          <p>{number.name}</p>
          {number.lines.map(function(line, line_index){
            return this.renderNumberLines(line, line_index) 
          }, this)}
        </div>
      </div>
    )
  },

  renderNumberLines: function(line, index) {
    fontColor = {}
    if (line.hasFiles) {
      fontColor = {color: "green"} 
    }
    if(line.name != null){
      return(
        <div key={index}>
          <p style={fontColor}>{(index+1) + ": " + line.name}</p>
        </div>
      )
    }
  },

  render: function() {
    return (
      <div className="indicator-container">
        <div>
          <h4>INDICATORS</h4>
          <h6>{this.props.area.name}</h6>
        </div>
        {this.props.area.parameters.map(function(parameter, index){
          return this.renderAreaParameter(parameter, index) 
        }, this)}
      </div>
    )
  }
})
