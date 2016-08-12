import React from 'react';
import Paper from 'material-ui/Paper';
import DropDownMenu from 'material-ui/DropDownMenu';
import MenuItem from 'material-ui/MenuItem';

const style = {
    display: 'inline-block',
};

export default class MenuDropDown extends React.Component {

    constructor(props) {
        super(props);
        this.state = {value: 0};
    }

    static defaultProps = {
        items: ['Nenhuma']
    };

    handleChange = (event, index, value) => this.setState({value});

    render(){
        return (
            <DropDownMenu value={this.state.value} onChange={this.handleChange}>
                {this.props.items.map(function(item,i)
                {
                    return(
                        <MenuItem key={i} value={i} primaryText={item}/>
                    );
                })}
            </DropDownMenu>
        );
    }
};
