import React, {PropTypes, Component} from 'react';

import {GoogleMapLoader, GoogleMap, Marker} from "react-google-maps";

//import shallowCompare from 'react-addons-shallow-compare';

export default class MainMap extends Component {

    static defaultProps = {
        center: new google.maps.LatLng(-13.4944263,-71.598872),
        zoom: 4
    };

    constructor(props) {
        super(props);
    }


    // shouldComponentUpdate(nextProps, nextState) {
    //      return shallowCompare(this, nextProps, nextState);
    // }

    render() {
        let centerLatLng = this.props.center;
        let zoomLevel = this.props.zoom;

        return (

            <GoogleMapLoader
                containerElement={
                    <div
                        style={{
                            height: "100vh",
                            width: "100vw"
                        }}
                    />
                }
                googleMapElement={
                    <GoogleMap
                        ref={(map) => console.log(map)}
                        defaultCenter = {centerLatLng}
                        defaultZoom = {zoomLevel}
                    >
                    </GoogleMap>
                }
            />
        );
    }
}

