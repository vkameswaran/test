const { readFileSync } = require("fs");
const { join } = require("path");

const Parser = require('tree-sitter');
const JavaScript = require('tree-sitter-javascript');
const Python = require('tree-sitter-python');

const parser = new Parser();
parser.setLanguage(Python);

const code = readFileSync(join(__dirname, "sample_files/test2.py"), "utf8");
const tree = parser.parse(code);

const separable_block_types = [
    "class_declaration", "method_definition", "function_definition", "class_definition"
]

function summarize_code_chunk(node, nodeProcessedText) {
    // TODO: Make this a GPT call
    return `\n(This is a summary of ${node.startPosition.row + 1}:${node.endPosition.row + 1}: ${nodeProcessedText})`;
}

function summarize(node) {

    if (!node.children) {
        return [true, node.text];
    }

    const children = [];
    let isStillRawCode = true;
    for (const child of node.children) {
        const [rawCode, childSummary] = summarize(child);
        children.push(childSummary);
        isStillRawCode = isStillRawCode && rawCode;
    }

    let nodeProcessedText = "";
    if (isStillRawCode) {
        nodeProcessedText = node.text;
    } else {
        nodeProcessedText = children[0];
        for (let i = 1; i < node.children.length; i++) {
            const shouldAddNewLine = node.children[i - 1].startPosition.row !== node.children[i].startPosition.row;
            nodeProcessedText += shouldAddNewLine ? "\n" : " ";
            nodeProcessedText += children[i];
        }
    }

    if (separable_block_types.includes(node.type)) {
        const result = summarize_code_chunk(node, nodeProcessedText);
        return [false, result];
    } else {
        return [isStillRawCode, nodeProcessedText];
    }

}

const [rawCode, summary] = summarize(tree.rootNode);
console.log(rawCode);
console.log(summary);

// console.log(tree.rootNode.children)

// traverse(tree.rootNode, 0);
// console.log(Object.keys(tree.rootNode[0]))
