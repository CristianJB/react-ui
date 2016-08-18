/**
 * Created by Avell on 15/08/2016.
 */
import React from 'react';
import {Table, TableBody, TableFooter, TableHeader, TableHeaderColumn, TableRow, TableRowColumn}
    from 'material-ui/Table';

import Tree, { TreeNode } from 'rc-tree';

export default class TableEquipes extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            stripedRows: false,
            showRowHover: false,
            selectable: true,
            multiSelectable: true,
            enableSelectAll: true,
            showCheckboxes: true,
        };
    }

render() {
        const {base} =  this.props
        return (

            <Tree
                className="myCls" showLine checkable defaultExpandAll
                defaultExpandedKeys={this.state.defaultExpandedKeys}
                onExpand={this.onExpand}
                defaultSelectedKeys={this.state.defaultSelectedKeys}
                defaultCheckedKeys={this.state.defaultCheckedKeys}
                onSelect={this.onSelect} onCheck={this.onCheck}
            >
                <TreeNode title="parent 1" key="0-0">
                    <TreeNode title="parent-2" key="0-0-0">
                        <TreeNode title="leaf" key="0-0-0-0" />
                        <TreeNode title="leaf" key="0-0-0-1" />
                    </TreeNode>
                    <TreeNode title="parent 1-1" key="0-0-1">
                        <TreeNode title="parent 1-1-0" key="0-0-1-0" />
                        <TreeNode title="parent 1-1-1" key="0-0-1-1" />
                    </TreeNode>
                </TreeNode>
            </Tree>

        );
    }
}

{/*<Table*/}
{/*selectable={true}*/}
{/*multiSelectable={true}*/}
{/*allRowsSelected={false}*/}
{/*style={{width: '250px'}}*/}
{/*>*/}
{/*<TableHeader*/}
{/*displaySelectAll={true}*/}
{/*adjustForCheckbox={this.state.showCheckboxes}*/}
{/*enableSelectAll={true}*/}
{/*>*/}
{/*<TableRow>*/}
{/*<TableHeaderColumn tooltip="ID da Equipe">ID da Equipe</TableHeaderColumn>*/}
{/*</TableRow>*/}
{/*</TableHeader>*/}
{/*<TableBody*/}
{/*displayRowCheckbox={this.state.showCheckboxes}*/}
{/*showRowHover={this.state.showRowHover}*/}
{/*stripedRows={this.state.stripedRows}*/}
{/*width={1}*/}
{/*>*/}
{/*{base.map( (row, index) => (*/}
{/*<TableRow key={index} selected={row.selected}>*/}
{/*<TableRowColumn>*/}
{/*Equipe {row}*/}
{/*</TableRowColumn>*/}
{/*</TableRow>*/}
{/*))}*/}
{/*</TableBody>*/}
{/*</Table>*/}