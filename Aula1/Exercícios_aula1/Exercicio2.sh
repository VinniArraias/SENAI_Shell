#!/bin/bash

#Equação do segundo grau

echo Entre com o valor de A
read vara

echo Entre com o valor de B
read varb

echo Entre com o valor de C
read varc


vardelta=`bc << EOF

v1=($varb * $varb)
v2=(-4 * $vara * $varc)

v1 + v2
EOF
`

#echo $vardelta

#x1
x1=`bc << EOF

v1=((-1 * $varb) + sqrt($vardelta))
v2=(2 * $vara)

v1 / v2
EOF
`

#echo x1 = $x1

#x2
x2=`bc << EOF

v1=((-1 * $varb) - sqrt($vardelta))
v2=(2 * $vara)

v1 / v2
EOF
`

#echo x2 = $x2

echo "Solução: {$x1; $x2}"


