var UploadModal = React.createClass({
  getInitialState: function(){
    return {
      parameters: [],
      numbers: [],
      lines: []
    }
  },

  handleAreaChange: function(e) {
    id = $(e.target).val()  
    this.setState({parameters: this.props.areas[id].parameters})
  },

  handleParameterChange: function(e){
    id = $(e.target).val()
    this.setState({numbers: this.state.parameters[id].numbers})
  },

  handleNumberChange: function(e) {
    id = $(e.target).val()
    this.setState({lines: this.state.numbers[id].lines})
  },

  render: function(){
    return (
      <form action="/documents" method="POST" encType="multipart/form-data">
        <div className="modal fade" tabIndex="-1" role="dialog" id="uploadModal">
          <div className="modal-dialog" role="document">
            <div className="modal-content">
              <div className="modal-header">
                <button type="button" className="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 className="modal-title">Upload a Document</h4>
              </div>
              <div className="modal-body">
                <select className="form-control" onChange={this.handleAreaChange}>
                  <option value="">Select an area</option>
                  {this.props.areas.map(function(area, i){
                    return <option key={i} value={i}>{area.name}</option> 
                  }, this)}
                </select>
                <select className="form-control" onChange={this.handleParameterChange}>
                  <option value="">Select a parameter</option>
                  {this.state.parameters.map(function(parameter, i){
                    return <option key={i} value={i}>{parameter.name}</option> 
                  }, this)}
                </select>
                <select className="form-control" onChange={this.handleNumberChange}>
                  <option value="">Select a Number</option>
                  {this.state.numbers.map(function(number, i){
                    return <option key={i} value={i}>{number.name}</option> 
                  }, this)}
                </select>
                <select name="line" className="form-control">
                  <option value="">Select a line</option>
                  {this.state.lines.map(function(line, i){
                    return <option key={i} value={line.id}>{line.name}</option> 
                  }, this)}
                </select>
                <input type="file" name="file" />
              </div>
              <div className="modal-footer">
                <input type="hidden" value={this.props.form_token} name="authenticity_token" accept="application/octet-stream" />
                <button type="button" className="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" className="btn btn-primary">Upload</button>
              </div>
            </div>
          </div>
        </div>
      </form>
    )
  }
})
