import React from "react"
import PropTypes from "prop-types"

import Repo from "./Repo"
import UserProfile from "./UserProfile"

class ReposListContainer extends React.Component {
  static propTypes = {
    user: PropTypes.object.isRequired,
    repos: PropTypes.array.isRequired
  } 

  renderRepos() {
    const { repos, user } = this.props;

    return repos.map((repo, index) => (
      <Repo
        key={index}
        name={repo.name} 
        url={repo.url}
        description={repo.description}
      />
    ));
  }

  render() {
    const { user } = this.props;

    return (
      <div className="page-wrapper">
        <UserProfile 
          profileName={user.profile_name}
          avatarUrl={user.avatar_url}
        /> 

        <div className="repos-list-wrapper">
          {this.renderRepos()}
        </div>
      </div>
    );
  }
}

export default ReposListContainer
