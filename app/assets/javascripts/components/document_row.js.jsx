var DocumentRow = React.createClass({
  handleDelete: function(e) {
    e.preventDefault()
    if(confirm('Delete this file ?')){
      $.ajax({
        url: '/documents/' + this.props.document.id,
        method: "DELETE",
        success: function() {
          this.props.handleDeleteItem(this.props.document)
        }.bind(this)
      })
    }
  },

  handlePermanentDelete: function(e) {
    e.preventDefault()
    if (confirm('Permanently delete this file?')) {
      $.ajax({
        url: '/document/destroy/' + this.props.document.id,
        method: "POST",
        success: function() {
          this.props.handleDeleteItem(this.props.document)
        }.bind(this)
      })
    }
  },

  handleRestore: function(e) {
    e.preventDefault()
    $.ajax({
      url: '/document/restore/' + this.props.document.id,
      method: "POST",
      success: function() {
        this.props.handleDeleteItem(this.props.document)
      }.bind(this)
    })
  },

  renderAcceptedColumn: function(){
    console.log(this.props.document)
    if (this.props.sent) {
      if (this.props.document.accepted == true) {
        return <td><label className="label label-success">Accepted</label></td>
      } else {
        return <td><label className="label label-danger">Not Yet Accepted</label></td>
      }
    }
  },

  renderActionButtons: function() {
    if (this.props.isTrash == true) {
      if (this.props.current_user_area == 'admin') {
        return(
          <td>
            <a className="btn btn-warning btn-xs" onClick={this.handleRestore}>Restore</a>
            <a className="btn btn-danger btn-xs" onClick={this.handlePermanentDelete}>Delete</a>
          </td>
        )
      } else {
        return(
          <td>No actions available</td>
        )
      }
    } else {
      if (this.props.document.personal_file){
        return(
          <td>
            <a className="btn btn-primary btn-xs" href={this.props.document.download_link} download>Download</a>
            <a className="btn btn-danger btn-xs" onClick={this.handleDelete}>Delete</a>
          </td>
        )
      } else {

        if (this.props.current_user_area == 'admin' || this.props.document.area == this.props.current_user_area) {
          return(
            <td>
              <a className="btn btn-primary btn-xs" href={this.props.document.download_link} download>Download</a>
              <a className="btn btn-danger btn-xs" onClick={this.handleDelete}>Delete</a>
            </td>
          )
        } else {
          return(
            <td>
              <a className="btn btn-primary btn-xs" href={this.props.document.download_link} download>Download</a>
            </td>
          )
        }
      }
    }
  },

  render: function() {
    var document_class = "document_starred document_" + this.props.document.id
    return(
      <tr>
        <td>{this.props.document.identifier}</td>
        <td>{this.props.document.size}</td>
        <td>{this.props.document.file_extension}</td>
        <td>{this.props.document.created_at}</td>
        <td>{this.props.document.area}</td>
        <td>{this.props.document.parameter}</td>       
        <td>{this.props.document.user}</td>
        {this.renderAcceptedColumn()}
        {this.renderActionButtons()}
        {console.log(this.props.current_user_area)}
        {console.log(this.props.document.area)}
      </tr>
    )
  }
})
