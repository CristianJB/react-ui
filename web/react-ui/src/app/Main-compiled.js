'use strict';

Object.defineProperty(exports, "__esModule", {
    value: true
});

var _getPrototypeOf = require('babel-runtime/core-js/object/get-prototype-of');

var _getPrototypeOf2 = _interopRequireDefault(_getPrototypeOf);

var _classCallCheck2 = require('babel-runtime/helpers/classCallCheck');

var _classCallCheck3 = _interopRequireDefault(_classCallCheck2);

var _createClass2 = require('babel-runtime/helpers/createClass');

var _createClass3 = _interopRequireDefault(_createClass2);

var _possibleConstructorReturn2 = require('babel-runtime/helpers/possibleConstructorReturn');

var _possibleConstructorReturn3 = _interopRequireDefault(_possibleConstructorReturn2);

var _inherits2 = require('babel-runtime/helpers/inherits');

var _inherits3 = _interopRequireDefault(_inherits2);

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

var _Tabs = require('material-ui/Tabs');

var _colors = require('material-ui/styles/colors');

var _getMuiTheme = require('material-ui/styles/getMuiTheme');

var _getMuiTheme2 = _interopRequireDefault(_getMuiTheme);

var _MuiThemeProvider = require('material-ui/styles/MuiThemeProvider');

var _MuiThemeProvider2 = _interopRequireDefault(_MuiThemeProvider);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

//import FlatButton from 'material-ui/FlatButton';


var styles = {
    container: {
        //textAlign: 'top',
        paddingTop: 200
    },
    headline: {
        fontSize: 24,
        paddingTop: 16,
        marginBottom: 12,
        fontWeight: 400
    }
};
// From https://github.com/oliviertassinari/react-swipeable-views
//import SwipeableViews from 'react-swipeable-views';

/**
 * In this file, we create a React component
 * which incorporates components providedby material-ui.
 */


var muiTheme = (0, _getMuiTheme2.default)({
    palette: {
        accent1Color: _colors.deepOrange500
    }
});

var Main = function (_Component) {
    (0, _inherits3.default)(Main, _Component);

    function Main(props, context) {
        (0, _classCallCheck3.default)(this, Main);

        var _this = (0, _possibleConstructorReturn3.default)(this, (0, _getPrototypeOf2.default)(Main).call(this, props, context));

        _this.state = {
            slideIndex: 0
        };
        return _this;
    }

    // /*
    //     handleChange = (value) => {
    //         this.setState({
    //             slideIndex: value,
    //         });
    //     };
    // */

    //onChange={this.handleChange}


    (0, _createClass3.default)(Main, [{
        key: 'render',
        value: function render() {

            return _react2.default.createElement(
                _MuiThemeProvider2.default,
                { muiTheme: muiTheme },
                _react2.default.createElement(
                    _Tabs.Tabs,
                    {
                        value: this.state.slideIndex
                    },
                    _react2.default.createElement(
                        _Tabs.Tab,
                        { label: 'CURTO PRAZO', value: 0 },
                        _react2.default.createElement(
                            'div',
                            null,
                            _react2.default.createElement(
                                'h2',
                                { style: styles.headline },
                                'Tab One'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                'This is an example tab.'
                            )
                        )
                    ),
                    _react2.default.createElement(
                        _Tabs.Tab,
                        { label: 'MÉDIO PRAZO', value: 1 },
                        _react2.default.createElement(
                            'div',
                            null,
                            _react2.default.createElement(
                                'h2',
                                { style: styles.headline },
                                'Tab Two'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                'This is an example tab.'
                            )
                        )
                    ),
                    _react2.default.createElement(
                        _Tabs.Tab,
                        { label: 'LONGO PRAZO', value: 2 },
                        _react2.default.createElement(
                            'div',
                            null,
                            _react2.default.createElement(
                                'h2',
                                { style: styles.headline },
                                'Tab Three'
                            ),
                            _react2.default.createElement(
                                'p',
                                null,
                                'This is an example tab.'
                            )
                        )
                    )
                )
            );
        }
    }]);
    return Main;
}(_react.Component);

exports.default = Main;

//# sourceMappingURL=Main-compiled.js.map