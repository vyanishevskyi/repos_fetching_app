import React from "react"
import PropTypes from "prop-types"

export default class UserProfile extends React.PureComponent {
  static propTypes = {
    profileName: PropTypes.string.isRequired,
    avatarUrl: PropTypes.string.isRequired
  }

  render() {
    const { avatarUrl, profileName } = this.props;

    return ( 
      <div className="user-info-block">
        <img src={avatarUrl} className="user-avatar" />
        <div className="user-name">{profileName}</div>
      </div>
    )
  }
}
