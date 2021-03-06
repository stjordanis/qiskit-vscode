/**
 * @license
 *
 * Copyright (c) 2018, IBM.
 *
 * This source code is licensed under the Apache License, Version 2.0 found in
 * the LICENSE.txt file in the root directory of this source tree.
 */

lexer grammar QasmLexer;


Comment: '//' ~[\r\n]* -> skip;
WhiteSpace: [ \t\n\r] -> skip;

Real: [0-9]+'.'[0-9]+;
Int: [0-9]+;
QasmDescriptor: 'OPENQASM 2.0;' | 'IBMQASM 2.0;';
Include: 'include';
Qelib: 'QELIB.INC';
Qreg: 'qreg';
Creg: 'creg';
Clean: 'clean';
U: 'U';
Cx: 'CX';
Sin: 'sin';
Cos: 'cos';
Tan: 'tan';
Exp: 'exp';
Ln: 'ln';
Sqrt: 'sqrt';
Measure: 'measure';
Barrier: 'barrier';
Reset: 'reset';
Opaque: 'opaque';
If: 'if';
Equals: '==';
Assign: '->';
Semi: ';';
Comma: ',';
LeftCurlyBrace: '{';
RightCurlyBrace: '}';
LeftBrace: '[';
RightBrace: ']';
LeftParen: '(';
RightParen: ')';
Pow: '^';
Mult: '*';
Div: '/';
Sum: '+';
Subs: '-';
Pi: 'pi';
Gate: 'gate';
Library: [a-z][a-zA-Z0-9]*'.inc'; 
Id: [a-z][a-zA-Z0-9]*;