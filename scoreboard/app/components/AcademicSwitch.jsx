import React, { Component } from 'react';
import { Link } from 'react-router';

export default class AcademicSwitch extends Component {
  static propTypes = {
    location: React.PropTypes.object.isRequired
  }

  render() {
    return (
      <div className="space--both-2">
        <Link to={ `${this.props.location.pathname}` }
              query={{ academiconly: false }}
              className="link"
              activeClassName="link--active">
          All
        </Link>
        /
        <Link to={ `${this.props.location.pathname}` }
              query={{ academiconly: true }}
              className="link"
              activeClassName="link--active">
          Academic
        </Link>
      </div>
    );
  }
}
