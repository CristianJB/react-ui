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

var _reactRouter = require('react-router');

var _style = require('./style.css');

var _style2 = _interopRequireDefault(_style);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var LoginPage = function (_React$Component) {
  (0, _inherits3.default)(LoginPage, _React$Component);

  function LoginPage() {
    (0, _classCallCheck3.default)(this, LoginPage);
    return (0, _possibleConstructorReturn3.default)(this, (0, _getPrototypeOf2.default)(LoginPage).apply(this, arguments));
  }

  (0, _createClass3.default)(LoginPage, [{
    key: 'signUp',
    value: function signUp() {
      _reactRouter.browserHistory.push('/home');
    }
  }, {
    key: 'render',
    value: function render() {
      return _react2.default.createElement(
        'div',
        { className: _style2.default.content },
        _react2.default.createElement(
          'h1',
          { className: _style2.default.heading },
          'Login Page'
        ),
        _react2.default.createElement(
          'p',
          { className: _style2.default.lead },
          'Create an account to get started!'
        ),
        _react2.default.createElement(
          'button',
          { className: _style2.default.signUpButton, onClick: this.signUp },
          'Cadastrar'
        )
      );
    }
  }]);
  return LoginPage;
}(_react2.default.Component);

exports.default = LoginPage;

//# sourceMappingURL=page-compiled.js.map