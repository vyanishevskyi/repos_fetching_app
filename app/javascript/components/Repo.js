import React from "react"
import PropTypes from "prop-types"

export default class Repo extends React.PureComponent {
  static propTypes = {
    name: PropTypes.string.isRequired,
    url: PropTypes.string.isRequired,
    description: PropTypes.string
  }

  render() {
    const { name, url, description } = this.props;

    return (
      <div className="repo-item-box">    
        <div className="repo-name">
          <a href={url}>{name}</a>
        </div>
        <div className="repo-description">{description}</div>
      </div>
    ) 
  }
}
