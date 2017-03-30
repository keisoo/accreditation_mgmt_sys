var DocumentList = React.createClass({
  getInitialState: function() {
    return {
      loader: false,
      documents: this.props.documents,
      search: ""
    }
  },

  handleClickStar: function(e) {
    id = $(e.target).parent().data('id')
    $.post('/document/starred/' + id, { area: this.props.area }, function(res){
      this.setState({documents: res['documents']}) 
    }.bind(this))
  },

  handleDeleteItem: function(item) {
    index = this.state.documents.indexOf(item)
    items = React.addons.update(this.state.documents, { $splice: [[index, 1]] })
    this.replaceState({ documents: items })
  },

  handleSearch: function(e) {
    this.setState({ search: $(e.target).val() }, function(){
      $.get('/home/search', { query: this.state.search, trash: this.props.trash, area: this.props.area, personal: this.props.personal }, function(data){
        this.setState({ documents: data['documents'] }) 
      }.bind(this))
    })
  },

  renderAcceptedColumn: function(){
    if (this.props.sent) {
      return <th>Status</th>
    }
  },

  renderDocuments: function(){
    console.log(this.state.documents)
    if (this.state.documents != null){
      return (
        this.state.documents.map(function(document, i){
          return <DocumentRow key={i} document={document} handleClickStar={this.handleClickStar} handleDeleteItem={this.handleDeleteItem} current_user_area={this.props.current_user_area} sent={this.props.sent} isTrash={this.props.trash}/> 
        },this)
      )
    } else {
      return <tr><td colSpan={7}><p className="text-center">No documents found!</p></td></tr>
    }
  },

  render: function() {
    return(
      <div>
        <form className="align-center">
          <div className="form-group input-group search-bar">
            <input type="text" className="form-control" name="search" placeholder="Search a File..." value={this.state.search} onChange={this.handleSearch} />
          </div>
        </form>
        <div className="table-wrapper">
          <div className="mini-header">
            <h6>{this.props.area_name ? this.props.area_name : "All Files"}</h6>
          </div>
        
          <table className="table table-hover table-responsive">
            <thead>
              <tr>
                <th>File Name</th>
                <th>Size</th>
                <th>Type</th>
                <th>Date Modified</th>
                <th>Area</th>
                <th>Parameter</th>  
                <th>Uploader</th>
                {this.renderAcceptedColumn()}
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {this.renderDocuments()}
            </tbody>
          </table>
        </div>
      </div>
    )
  }
})
