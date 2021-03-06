??#
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
: *
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
dtype0
?
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:@*
dtype0
?
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_12/kernel
~
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_12/bias
n
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes	
:?*
dtype0
?
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_13/kernel

$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_13/bias
n
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes	
:?*
dtype0
?
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_14/kernel

$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_14/bias
n
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes	
:?*
dtype0
?
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_15/kernel
~
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:@*
dtype0
?
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *!
shared_nameconv2d_16/kernel
~
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*'
_output_shapes
:? *
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
: *
dtype0
?
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:*
dtype0
j
ConstConst*&
_output_shapes
: *
dtype0*%
valueB *  ??
l
Const_1Const*&
_output_shapes
: *
dtype0*%
valueB *    
l
Const_2Const*&
_output_shapes
:@*
dtype0*%
valueB@*  ??
l
Const_3Const*&
_output_shapes
:@*
dtype0*%
valueB@*    
n
Const_4Const*'
_output_shapes
:?*
dtype0*&
valueB?*  ??
n
Const_5Const*'
_output_shapes
:?*
dtype0*&
valueB?*    
n
Const_6Const*'
_output_shapes
:?*
dtype0*&
valueB?*  ??
n
Const_7Const*'
_output_shapes
:?*
dtype0*&
valueB?*    
n
Const_8Const*'
_output_shapes
:?*
dtype0*&
valueB?*  ??
n
Const_9Const*'
_output_shapes
:?*
dtype0*&
valueB?*    
m
Const_10Const*&
_output_shapes
:@*
dtype0*%
valueB@*  ??
m
Const_11Const*&
_output_shapes
:@*
dtype0*%
valueB@*    
m
Const_12Const*&
_output_shapes
: *
dtype0*%
valueB *  ??
m
Const_13Const*&
_output_shapes
: *
dtype0*%
valueB *    

NoOpNoOp
?i
Const_14Const"/device:CPU:0*
_output_shapes
: *
dtype0*?h
value?hB?h B?h
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-1
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer_with_weights-2
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*layer-41
+layer-42
,layer-43
-layer-44
.layer-45
/layer_with_weights-3
/layer-46
0layer-47
1layer-48
2layer-49
3layer-50
4layer-51
5layer-52
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer-58
<layer-59
=layer-60
>layer-61
?layer_with_weights-4
?layer-62
@layer-63
Alayer-64
Blayer-65
Clayer-66
Dlayer-67
Elayer-68
Flayer-69
Glayer-70
Hlayer-71
Ilayer-72
Jlayer-73
Klayer-74
Llayer-75
Mlayer-76
Nlayer-77
Olayer-78
Player_with_weights-5
Player-79
Qlayer-80
Rlayer-81
Slayer-82
Tlayer-83
Ulayer-84
Vlayer-85
Wlayer-86
Xlayer-87
Ylayer-88
Zlayer-89
[layer-90
\layer-91
]layer-92
^layer-93
_layer-94
`layer-95
alayer_with_weights-6
alayer-96
blayer-97
clayer-98
dlayer-99
e	layer-100
f	layer-101
g	layer-102
h	layer-103
i	layer-104
j	layer-105
k	layer-106
l	layer-107
m	layer-108
n	layer-109
o	layer-110
p	layer-111
q	layer-112
rlayer_with_weights-7
r	layer-113
strainable_variables
t	variables
uregularization_losses
v	keras_api
w
signatures
 
h

xkernel
ybias
ztrainable_variables
{	variables
|regularization_losses
}	keras_api
T
~trainable_variables
	variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
n
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
n
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
n
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
x0
y1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?
x0
y1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
 
?
 ?layer_regularization_losses
strainable_variables
?non_trainable_variables
?layer_metrics
?layers
t	variables
uregularization_losses
?metrics
 
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

x0
y1

x0
y1
 
?
 ?layer_regularization_losses
ztrainable_variables
?non_trainable_variables
?layer_metrics
?layers
{	variables
|regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
~trainable_variables
?non_trainable_variables
?layer_metrics
?layers
	variables
?regularization_losses
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
\Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
\Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
\Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
\Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
\Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58
<59
=60
>61
?62
@63
A64
B65
C66
D67
E68
F69
G70
H71
I72
J73
K74
L75
M76
N77
O78
P79
Q80
R81
S82
T83
U84
V85
W86
X87
Y88
Z89
[90
\91
]92
^93
_94
`95
a96
b97
c98
d99
e100
f101
g102
h103
i104
j105
k106
l107
m108
n109
o110
p111
q112
r113
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_3Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_10/kernelconv2d_10/biasConstConst_1conv2d_11/kernelconv2d_11/biasConst_2Const_3conv2d_12/kernelconv2d_12/biasConst_4Const_5conv2d_13/kernelconv2d_13/biasConst_6Const_7conv2d_14/kernelconv2d_14/biasConst_8Const_9conv2d_15/kernelconv2d_15/biasConst_10Const_11conv2d_16/kernelconv2d_16/biasConst_12Const_13conv2d_17/kernelconv2d_17/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_13019609
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOpConst_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_save_13020569
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference__traced_restore_13020627??
?
H
,__inference_dropout_2_layer_call_fn_13020429

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_130185122
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
G__inference_conv2d_15_layer_call_and_return_conditional_losses_13020364

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_16_layer_call_fn_13020413

inputs"
unknown:? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_130185012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?G
?

$__inference__traced_restore_13020627
file_prefix;
!assignvariableop_conv2d_10_kernel: /
!assignvariableop_1_conv2d_10_bias: =
#assignvariableop_2_conv2d_11_kernel: @/
!assignvariableop_3_conv2d_11_bias:@>
#assignvariableop_4_conv2d_12_kernel:@?0
!assignvariableop_5_conv2d_12_bias:	??
#assignvariableop_6_conv2d_13_kernel:??0
!assignvariableop_7_conv2d_13_bias:	??
#assignvariableop_8_conv2d_14_kernel:??0
!assignvariableop_9_conv2d_14_bias:	??
$assignvariableop_10_conv2d_15_kernel:?@0
"assignvariableop_11_conv2d_15_bias:@?
$assignvariableop_12_conv2d_16_kernel:? 0
"assignvariableop_13_conv2d_16_bias: >
$assignvariableop_14_conv2d_17_kernel:@0
"assignvariableop_15_conv2d_17_bias:
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_12_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_13_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_15_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_15_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_16_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_16_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_17_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_17_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
d
E__inference_dropout_layer_call_and_return_conditional_losses_13018739

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,????????????????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,????????????????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_layer_call_fn_13020337
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_130184362
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:?????????  ?:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????  ?
"
_user_specified_name
inputs/1
?,
?
!__inference__traced_save_13020569
file_prefix/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop
savev2_const_14

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableopsavev2_const_14"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:??:?:??:?:?@:@:? : :@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.	*
(
_output_shapes
:??:!


_output_shapes	
:?:-)
'
_output_shapes
:?@: 

_output_shapes
:@:-)
'
_output_shapes
:? : 

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: 
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_13018410

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13018195

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_10_layer_call_and_return_conditional_losses_13018237

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
E__inference_model_2_layer_call_and_return_conditional_losses_13019060

inputs,
conv2d_10_13018886:  
conv2d_10_13018888: 
tf_math_multiply_18_mul_y
unknown,
conv2d_11_13018909: @ 
conv2d_11_13018911:@
tf_math_multiply_21_mul_y
	unknown_0-
conv2d_12_13018932:@?!
conv2d_12_13018934:	?
tf_math_multiply_24_mul_y
	unknown_1.
conv2d_13_13018955:??!
conv2d_13_13018957:	?
tf_math_multiply_27_mul_y
	unknown_2.
conv2d_14_13018979:??!
conv2d_14_13018981:	?
tf_math_multiply_30_mul_y
	unknown_3-
conv2d_15_13019004:?@ 
conv2d_15_13019006:@
tf_math_multiply_33_mul_y
	unknown_4-
conv2d_16_13019029:?  
conv2d_16_13019031: 
tf_math_multiply_36_mul_y
	unknown_5,
conv2d_17_13019054:@ 
conv2d_17_13019056:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_13018886conv2d_10_13018888*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_10_layer_call_and_return_conditional_losses_130182372#
!conv2d_10/StatefulPartitionedCall?
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_130182482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indices?
tf.math.reduce_mean_12/MeanMean&leaky_re_lu_8/PartitionedCall:output:06tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_12/Mean?
tf.stop_gradient_6/StopGradientStopGradient$tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2!
tf.stop_gradient_6/StopGradient?
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 20
.tf.math.squared_difference_6/SquaredDifference?
-tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_13/Mean/reduction_indices?
tf.math.reduce_mean_13/MeanMean2tf.math.squared_difference_6/SquaredDifference:z:06tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_13/Mean{
tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_12/y?
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2?
tf.math.rsqrt_6/RsqrtRsqrt!tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_6/Rsqrt?
tf.math.multiply_18/MulMultf.math.rsqrt_6/Rsqrt:y:0tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_18/Mul?
tf.math.multiply_20/MulMul$tf.math.reduce_mean_12/Mean:output:0tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_20/Mul?
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_13/AddV2?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_13018909conv2d_11_13018911*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_11_layer_call_and_return_conditional_losses_130182772#
!conv2d_11/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_130182882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indices?
tf.math.reduce_mean_14/MeanMean&leaky_re_lu_9/PartitionedCall:output:06tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_14/Mean?
tf.stop_gradient_7/StopGradientStopGradient$tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2!
tf.stop_gradient_7/StopGradient?
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference&leaky_re_lu_9/PartitionedCall:output:0(tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@20
.tf.math.squared_difference_7/SquaredDifference?
-tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_15/Mean/reduction_indices?
tf.math.reduce_mean_15/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:06tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_15/Mean{
tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_14/y?
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2?
tf.math.rsqrt_7/RsqrtRsqrt!tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_7/Rsqrt?
tf.math.multiply_21/MulMultf.math.rsqrt_7/Rsqrt:y:0tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_21/Mul?
tf.math.multiply_23/MulMul$tf.math.reduce_mean_14/Mean:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_23/Mul?
tf.math.subtract_7/SubSub	unknown_0tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_7/Sub?
tf.math.multiply_22/MulMul&leaky_re_lu_9/PartitionedCall:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_22/Mul?
tf.__operators__.add_15/AddV2AddV2tf.math.multiply_22/Mul:z:0tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_15/AddV2?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_13018932conv2d_12_13018934*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_12_layer_call_and_return_conditional_losses_130183172#
!conv2d_12/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_130183282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indices?
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_8/StopGradient?
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?20
.tf.math.squared_difference_8/SquaredDifference?
-tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_17/Mean/reduction_indices?
tf.math.reduce_mean_17/MeanMean2tf.math.squared_difference_8/SquaredDifference:z:06tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_16/y?
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_16/AddV2?
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_26/Mul?
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_25/Mul?
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_17/AddV2?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_13018955conv2d_13_13018957*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_130183572#
!conv2d_13/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_130183682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indices?
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_9/StopGradient?
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:??????????20
.tf.math.squared_difference_9/SquaredDifference?
-tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_19/Mean/reduction_indices?
tf.math.reduce_mean_19/MeanMean2tf.math.squared_difference_9/SquaredDifference:z:06tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_18/y?
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_18/AddV2?
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_29/Mul?
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_28/Mul?
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_19/AddV2?
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_130181572
up_sampling2d/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_13018979conv2d_14_13018981*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_130183992#
!conv2d_14/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_130187392!
dropout/StatefulPartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indices?
tf.math.reduce_mean_20/MeanMean(dropout/StatefulPartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference(dropout/StatefulPartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_10/SquaredDifference?
-tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_21/Mean/reduction_indices?
tf.math.reduce_mean_21/MeanMean3tf.math.squared_difference_10/SquaredDifference:z:06tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_20/y?
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_20/AddV2?
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_32/Mul?
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_10/Sub?
tf.math.multiply_31/MulMul(dropout/StatefulPartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_130184362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_130181762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_13019004conv2d_15_13019006*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_130184502#
!conv2d_15/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_130186992#
!dropout_1/StatefulPartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indices?
tf.math.reduce_mean_22/MeanMean*dropout_1/StatefulPartitionedCall:output:06tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_22/Mean?
 tf.stop_gradient_11/StopGradientStopGradient$tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_11/StopGradient?
/tf.math.squared_difference_11/SquaredDifferenceSquaredDifference*dropout_1/StatefulPartitionedCall:output:0)tf.stop_gradient_11/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_11/SquaredDifference?
-tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_23/Mean/reduction_indices?
tf.math.reduce_mean_23/MeanMean3tf.math.squared_difference_11/SquaredDifference:z:06tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_23/Mean{
tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_22/y?
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2?
tf.math.rsqrt_11/RsqrtRsqrt!tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_11/Rsqrt?
tf.math.multiply_33/MulMultf.math.rsqrt_11/Rsqrt:y:0tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_33/Mul?
tf.math.multiply_35/MulMul$tf.math.reduce_mean_22/Mean:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_35/Mul?
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub?
tf.math.multiply_34/MulMul*dropout_1/StatefulPartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mul?
tf.__operators__.add_23/AddV2AddV2tf.math.multiply_34/Mul:z:0tf.math.subtract_11/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_23/AddV2?
concatenate_1/PartitionedCallPartitionedCall!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_130184872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_130181952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_13019029conv2d_16_13019031*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_130185012#
!conv2d_16/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_130186592#
!dropout_2/StatefulPartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indices?
tf.math.reduce_mean_24/MeanMean*dropout_2/StatefulPartitionedCall:output:06tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_24/Mean?
 tf.stop_gradient_12/StopGradientStopGradient$tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_12/StopGradient?
/tf.math.squared_difference_12/SquaredDifferenceSquaredDifference*dropout_2/StatefulPartitionedCall:output:0)tf.stop_gradient_12/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_12/SquaredDifference?
-tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_25/Mean/reduction_indices?
tf.math.reduce_mean_25/MeanMean3tf.math.squared_difference_12/SquaredDifference:z:06tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_25/Mean{
tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_24/y?
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2?
tf.math.rsqrt_12/RsqrtRsqrt!tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_12/Rsqrt?
tf.math.multiply_36/MulMultf.math.rsqrt_12/Rsqrt:y:0tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_36/Mul?
tf.math.multiply_38/MulMul$tf.math.reduce_mean_24/Mean:output:0tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_38/Mul?
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMul*dropout_2/StatefulPartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_25/AddV2?
concatenate_2/PartitionedCallPartitionedCall!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_130185382
concatenate_2/PartitionedCall?
up_sampling2d_3/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_130182142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_13019054conv2d_17_13019056*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_130185522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?
c
*__inference_dropout_layer_call_fn_13020314

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_130187392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_1_layer_call_and_return_conditional_losses_13020391

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
G__inference_conv2d_14_layer_call_and_return_conditional_losses_13018399

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_12_layer_call_and_return_conditional_losses_13020245

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13020226

inputs
identity\
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????@@@2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
G__inference_conv2d_16_layer_call_and_return_conditional_losses_13020424

inputs9
conv2d_readvariableop_resource:? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
u
I__inference_concatenate_layer_call_and_return_conditional_losses_13020344
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:?????????  ?:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????  ?
"
_user_specified_name
inputs/1
?
\
0__inference_concatenate_1_layer_call_fn_13020397
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_130184872
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????@@@:k g
A
_output_shapes/
-:+???????????????????????????@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@@
"
_user_specified_name
inputs/1
?
e
G__inference_dropout_2_layer_call_and_return_conditional_losses_13020439

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_8_layer_call_fn_13020192

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_130182482
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
,__inference_conv2d_13_layer_call_fn_13020264

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_130183572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
?
,__inference_conv2d_10_layer_call_fn_13020177

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_10_layer_call_and_return_conditional_losses_130182372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_2_layer_call_fn_13020434

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_130186592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_9_layer_call_fn_13020221

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_130182882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
G__inference_conv2d_16_layer_call_and_return_conditional_losses_13018501

inputs9
conv2d_readvariableop_resource:? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
s
I__inference_concatenate_layer_call_and_return_conditional_losses_13018436

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:?????????  ?:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
??
?

E__inference_model_2_layer_call_and_return_conditional_losses_13018559

inputs,
conv2d_10_13018238:  
conv2d_10_13018240: 
tf_math_multiply_18_mul_y
unknown,
conv2d_11_13018278: @ 
conv2d_11_13018280:@
tf_math_multiply_21_mul_y
	unknown_0-
conv2d_12_13018318:@?!
conv2d_12_13018320:	?
tf_math_multiply_24_mul_y
	unknown_1.
conv2d_13_13018358:??!
conv2d_13_13018360:	?
tf_math_multiply_27_mul_y
	unknown_2.
conv2d_14_13018400:??!
conv2d_14_13018402:	?
tf_math_multiply_30_mul_y
	unknown_3-
conv2d_15_13018451:?@ 
conv2d_15_13018453:@
tf_math_multiply_33_mul_y
	unknown_4-
conv2d_16_13018502:?  
conv2d_16_13018504: 
tf_math_multiply_36_mul_y
	unknown_5,
conv2d_17_13018553:@ 
conv2d_17_13018555:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_13018238conv2d_10_13018240*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_10_layer_call_and_return_conditional_losses_130182372#
!conv2d_10/StatefulPartitionedCall?
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_130182482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indices?
tf.math.reduce_mean_12/MeanMean&leaky_re_lu_8/PartitionedCall:output:06tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_12/Mean?
tf.stop_gradient_6/StopGradientStopGradient$tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2!
tf.stop_gradient_6/StopGradient?
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 20
.tf.math.squared_difference_6/SquaredDifference?
-tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_13/Mean/reduction_indices?
tf.math.reduce_mean_13/MeanMean2tf.math.squared_difference_6/SquaredDifference:z:06tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_13/Mean{
tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_12/y?
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2?
tf.math.rsqrt_6/RsqrtRsqrt!tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_6/Rsqrt?
tf.math.multiply_18/MulMultf.math.rsqrt_6/Rsqrt:y:0tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_18/Mul?
tf.math.multiply_20/MulMul$tf.math.reduce_mean_12/Mean:output:0tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_20/Mul?
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_13/AddV2?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_13018278conv2d_11_13018280*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_11_layer_call_and_return_conditional_losses_130182772#
!conv2d_11/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_130182882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indices?
tf.math.reduce_mean_14/MeanMean&leaky_re_lu_9/PartitionedCall:output:06tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_14/Mean?
tf.stop_gradient_7/StopGradientStopGradient$tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2!
tf.stop_gradient_7/StopGradient?
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference&leaky_re_lu_9/PartitionedCall:output:0(tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@20
.tf.math.squared_difference_7/SquaredDifference?
-tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_15/Mean/reduction_indices?
tf.math.reduce_mean_15/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:06tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_15/Mean{
tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_14/y?
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2?
tf.math.rsqrt_7/RsqrtRsqrt!tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_7/Rsqrt?
tf.math.multiply_21/MulMultf.math.rsqrt_7/Rsqrt:y:0tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_21/Mul?
tf.math.multiply_23/MulMul$tf.math.reduce_mean_14/Mean:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_23/Mul?
tf.math.subtract_7/SubSub	unknown_0tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_7/Sub?
tf.math.multiply_22/MulMul&leaky_re_lu_9/PartitionedCall:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_22/Mul?
tf.__operators__.add_15/AddV2AddV2tf.math.multiply_22/Mul:z:0tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_15/AddV2?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_13018318conv2d_12_13018320*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_12_layer_call_and_return_conditional_losses_130183172#
!conv2d_12/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_130183282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indices?
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_8/StopGradient?
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?20
.tf.math.squared_difference_8/SquaredDifference?
-tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_17/Mean/reduction_indices?
tf.math.reduce_mean_17/MeanMean2tf.math.squared_difference_8/SquaredDifference:z:06tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_16/y?
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_16/AddV2?
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_26/Mul?
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_25/Mul?
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_17/AddV2?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_13018358conv2d_13_13018360*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_130183572#
!conv2d_13/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_130183682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indices?
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_9/StopGradient?
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:??????????20
.tf.math.squared_difference_9/SquaredDifference?
-tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_19/Mean/reduction_indices?
tf.math.reduce_mean_19/MeanMean2tf.math.squared_difference_9/SquaredDifference:z:06tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_18/y?
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_18/AddV2?
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_29/Mul?
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_28/Mul?
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_19/AddV2?
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_130181572
up_sampling2d/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_13018400conv2d_14_13018402*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_130183992#
!conv2d_14/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_130184102
dropout/PartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indices?
tf.math.reduce_mean_20/MeanMean dropout/PartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference dropout/PartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_10/SquaredDifference?
-tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_21/Mean/reduction_indices?
tf.math.reduce_mean_21/MeanMean3tf.math.squared_difference_10/SquaredDifference:z:06tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_20/y?
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_20/AddV2?
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_32/Mul?
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_10/Sub?
tf.math.multiply_31/MulMul dropout/PartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_130184362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_130181762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_13018451conv2d_15_13018453*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_130184502#
!conv2d_15/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_130184612
dropout_1/PartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indices?
tf.math.reduce_mean_22/MeanMean"dropout_1/PartitionedCall:output:06tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_22/Mean?
 tf.stop_gradient_11/StopGradientStopGradient$tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_11/StopGradient?
/tf.math.squared_difference_11/SquaredDifferenceSquaredDifference"dropout_1/PartitionedCall:output:0)tf.stop_gradient_11/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_11/SquaredDifference?
-tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_23/Mean/reduction_indices?
tf.math.reduce_mean_23/MeanMean3tf.math.squared_difference_11/SquaredDifference:z:06tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_23/Mean{
tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_22/y?
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2?
tf.math.rsqrt_11/RsqrtRsqrt!tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_11/Rsqrt?
tf.math.multiply_33/MulMultf.math.rsqrt_11/Rsqrt:y:0tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_33/Mul?
tf.math.multiply_35/MulMul$tf.math.reduce_mean_22/Mean:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_35/Mul?
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub?
tf.math.multiply_34/MulMul"dropout_1/PartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mul?
tf.__operators__.add_23/AddV2AddV2tf.math.multiply_34/Mul:z:0tf.math.subtract_11/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_23/AddV2?
concatenate_1/PartitionedCallPartitionedCall!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_130184872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_130181952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_13018502conv2d_16_13018504*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_130185012#
!conv2d_16/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_130185122
dropout_2/PartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indices?
tf.math.reduce_mean_24/MeanMean"dropout_2/PartitionedCall:output:06tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_24/Mean?
 tf.stop_gradient_12/StopGradientStopGradient$tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_12/StopGradient?
/tf.math.squared_difference_12/SquaredDifferenceSquaredDifference"dropout_2/PartitionedCall:output:0)tf.stop_gradient_12/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_12/SquaredDifference?
-tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_25/Mean/reduction_indices?
tf.math.reduce_mean_25/MeanMean3tf.math.squared_difference_12/SquaredDifference:z:06tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_25/Mean{
tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_24/y?
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2?
tf.math.rsqrt_12/RsqrtRsqrt!tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_12/Rsqrt?
tf.math.multiply_36/MulMultf.math.rsqrt_12/Rsqrt:y:0tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_36/Mul?
tf.math.multiply_38/MulMul$tf.math.reduce_mean_24/Mean:output:0tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_38/Mul?
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMul"dropout_2/PartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_25/AddV2?
concatenate_2/PartitionedCallPartitionedCall!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_130185382
concatenate_2/PartitionedCall?
up_sampling2d_3/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_130182142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_13018553conv2d_17_13018555*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_130185522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
??
?
#__inference__wrapped_model_13018144
input_3J
0model_2_conv2d_10_conv2d_readvariableop_resource: ?
1model_2_conv2d_10_biasadd_readvariableop_resource: %
!model_2_tf_math_multiply_18_mul_y
model_2_13017962J
0model_2_conv2d_11_conv2d_readvariableop_resource: @?
1model_2_conv2d_11_biasadd_readvariableop_resource:@%
!model_2_tf_math_multiply_21_mul_y
model_2_13017986K
0model_2_conv2d_12_conv2d_readvariableop_resource:@?@
1model_2_conv2d_12_biasadd_readvariableop_resource:	?%
!model_2_tf_math_multiply_24_mul_y
model_2_13018010L
0model_2_conv2d_13_conv2d_readvariableop_resource:??@
1model_2_conv2d_13_biasadd_readvariableop_resource:	?%
!model_2_tf_math_multiply_27_mul_y
model_2_13018034L
0model_2_conv2d_14_conv2d_readvariableop_resource:??@
1model_2_conv2d_14_biasadd_readvariableop_resource:	?%
!model_2_tf_math_multiply_30_mul_y
model_2_13018063K
0model_2_conv2d_15_conv2d_readvariableop_resource:?@?
1model_2_conv2d_15_biasadd_readvariableop_resource:@%
!model_2_tf_math_multiply_33_mul_y
model_2_13018094K
0model_2_conv2d_16_conv2d_readvariableop_resource:? ?
1model_2_conv2d_16_biasadd_readvariableop_resource: %
!model_2_tf_math_multiply_36_mul_y
model_2_13018125J
0model_2_conv2d_17_conv2d_readvariableop_resource:@?
1model_2_conv2d_17_biasadd_readvariableop_resource:
identity??(model_2/conv2d_10/BiasAdd/ReadVariableOp?'model_2/conv2d_10/Conv2D/ReadVariableOp?(model_2/conv2d_11/BiasAdd/ReadVariableOp?'model_2/conv2d_11/Conv2D/ReadVariableOp?(model_2/conv2d_12/BiasAdd/ReadVariableOp?'model_2/conv2d_12/Conv2D/ReadVariableOp?(model_2/conv2d_13/BiasAdd/ReadVariableOp?'model_2/conv2d_13/Conv2D/ReadVariableOp?(model_2/conv2d_14/BiasAdd/ReadVariableOp?'model_2/conv2d_14/Conv2D/ReadVariableOp?(model_2/conv2d_15/BiasAdd/ReadVariableOp?'model_2/conv2d_15/Conv2D/ReadVariableOp?(model_2/conv2d_16/BiasAdd/ReadVariableOp?'model_2/conv2d_16/Conv2D/ReadVariableOp?(model_2/conv2d_17/BiasAdd/ReadVariableOp?'model_2/conv2d_17/Conv2D/ReadVariableOp?
'model_2/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_2/conv2d_10/Conv2D/ReadVariableOp?
model_2/conv2d_10/Conv2DConv2Dinput_3/model_2/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
model_2/conv2d_10/Conv2D?
(model_2/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_2/conv2d_10/BiasAdd/ReadVariableOp?
model_2/conv2d_10/BiasAddBiasAdd!model_2/conv2d_10/Conv2D:output:00model_2/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
model_2/conv2d_10/BiasAdd?
model_2/leaky_re_lu_8/LeakyRelu	LeakyRelu"model_2/conv2d_10/BiasAdd:output:0*1
_output_shapes
:??????????? 2!
model_2/leaky_re_lu_8/LeakyRelu?
5model_2/tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_12/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_12/MeanMean-model_2/leaky_re_lu_8/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_12/Mean?
'model_2/tf.stop_gradient_6/StopGradientStopGradient,model_2/tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2)
'model_2/tf.stop_gradient_6/StopGradient?
6model_2/tf.math.squared_difference_6/SquaredDifferenceSquaredDifference-model_2/leaky_re_lu_8/LeakyRelu:activations:00model_2/tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 28
6model_2/tf.math.squared_difference_6/SquaredDifference?
5model_2/tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_13/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_13/MeanMean:model_2/tf.math.squared_difference_6/SquaredDifference:z:0>model_2/tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_13/Mean?
!model_2/tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_2/tf.__operators__.add_12/y?
%model_2/tf.__operators__.add_12/AddV2AddV2,model_2/tf.math.reduce_mean_13/Mean:output:0*model_2/tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_2/tf.__operators__.add_12/AddV2?
model_2/tf.math.rsqrt_6/RsqrtRsqrt)model_2/tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
model_2/tf.math.rsqrt_6/Rsqrt?
model_2/tf.math.multiply_18/MulMul!model_2/tf.math.rsqrt_6/Rsqrt:y:0!model_2_tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_18/Mul?
model_2/tf.math.multiply_20/MulMul,model_2/tf.math.reduce_mean_12/Mean:output:0#model_2/tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_20/Mul?
model_2/tf.math.subtract_6/SubSubmodel_2_13017962#model_2/tf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2 
model_2/tf.math.subtract_6/Sub?
model_2/tf.math.multiply_19/MulMul-model_2/leaky_re_lu_8/LeakyRelu:activations:0#model_2/tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:??????????? 2!
model_2/tf.math.multiply_19/Mul?
%model_2/tf.__operators__.add_13/AddV2AddV2#model_2/tf.math.multiply_19/Mul:z:0"model_2/tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:??????????? 2'
%model_2/tf.__operators__.add_13/AddV2?
'model_2/conv2d_11/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02)
'model_2/conv2d_11/Conv2D/ReadVariableOp?
model_2/conv2d_11/Conv2DConv2D)model_2/tf.__operators__.add_13/AddV2:z:0/model_2/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
model_2/conv2d_11/Conv2D?
(model_2/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_2/conv2d_11/BiasAdd/ReadVariableOp?
model_2/conv2d_11/BiasAddBiasAdd!model_2/conv2d_11/Conv2D:output:00model_2/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_2/conv2d_11/BiasAdd?
model_2/leaky_re_lu_9/LeakyRelu	LeakyRelu"model_2/conv2d_11/BiasAdd:output:0*/
_output_shapes
:?????????@@@2!
model_2/leaky_re_lu_9/LeakyRelu?
5model_2/tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_14/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_14/MeanMean-model_2/leaky_re_lu_9/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_14/Mean?
'model_2/tf.stop_gradient_7/StopGradientStopGradient,model_2/tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2)
'model_2/tf.stop_gradient_7/StopGradient?
6model_2/tf.math.squared_difference_7/SquaredDifferenceSquaredDifference-model_2/leaky_re_lu_9/LeakyRelu:activations:00model_2/tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@28
6model_2/tf.math.squared_difference_7/SquaredDifference?
5model_2/tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_15/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_15/MeanMean:model_2/tf.math.squared_difference_7/SquaredDifference:z:0>model_2/tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_15/Mean?
!model_2/tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_2/tf.__operators__.add_14/y?
%model_2/tf.__operators__.add_14/AddV2AddV2,model_2/tf.math.reduce_mean_15/Mean:output:0*model_2/tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_2/tf.__operators__.add_14/AddV2?
model_2/tf.math.rsqrt_7/RsqrtRsqrt)model_2/tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
model_2/tf.math.rsqrt_7/Rsqrt?
model_2/tf.math.multiply_21/MulMul!model_2/tf.math.rsqrt_7/Rsqrt:y:0!model_2_tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_21/Mul?
model_2/tf.math.multiply_23/MulMul,model_2/tf.math.reduce_mean_14/Mean:output:0#model_2/tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_23/Mul?
model_2/tf.math.subtract_7/SubSubmodel_2_13017986#model_2/tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2 
model_2/tf.math.subtract_7/Sub?
model_2/tf.math.multiply_22/MulMul-model_2/leaky_re_lu_9/LeakyRelu:activations:0#model_2/tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_2/tf.math.multiply_22/Mul?
%model_2/tf.__operators__.add_15/AddV2AddV2#model_2/tf.math.multiply_22/Mul:z:0"model_2/tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_2/tf.__operators__.add_15/AddV2?
'model_2/conv2d_12/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02)
'model_2/conv2d_12/Conv2D/ReadVariableOp?
model_2/conv2d_12/Conv2DConv2D)model_2/tf.__operators__.add_15/AddV2:z:0/model_2/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
model_2/conv2d_12/Conv2D?
(model_2/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_2/conv2d_12/BiasAdd/ReadVariableOp?
model_2/conv2d_12/BiasAddBiasAdd!model_2/conv2d_12/Conv2D:output:00model_2/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
model_2/conv2d_12/BiasAdd?
 model_2/leaky_re_lu_10/LeakyRelu	LeakyRelu"model_2/conv2d_12/BiasAdd:output:0*0
_output_shapes
:?????????  ?2"
 model_2/leaky_re_lu_10/LeakyRelu?
5model_2/tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_16/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_16/MeanMean.model_2/leaky_re_lu_10/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_16/Mean?
'model_2/tf.stop_gradient_8/StopGradientStopGradient,model_2/tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/tf.stop_gradient_8/StopGradient?
6model_2/tf.math.squared_difference_8/SquaredDifferenceSquaredDifference.model_2/leaky_re_lu_10/LeakyRelu:activations:00model_2/tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?28
6model_2/tf.math.squared_difference_8/SquaredDifference?
5model_2/tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_17/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_17/MeanMean:model_2/tf.math.squared_difference_8/SquaredDifference:z:0>model_2/tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_17/Mean?
!model_2/tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_2/tf.__operators__.add_16/y?
%model_2/tf.__operators__.add_16/AddV2AddV2,model_2/tf.math.reduce_mean_17/Mean:output:0*model_2/tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:??????????2'
%model_2/tf.__operators__.add_16/AddV2?
model_2/tf.math.rsqrt_8/RsqrtRsqrt)model_2/tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:??????????2
model_2/tf.math.rsqrt_8/Rsqrt?
model_2/tf.math.multiply_24/MulMul!model_2/tf.math.rsqrt_8/Rsqrt:y:0!model_2_tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.multiply_24/Mul?
model_2/tf.math.multiply_26/MulMul,model_2/tf.math.reduce_mean_16/Mean:output:0#model_2/tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.multiply_26/Mul?
model_2/tf.math.subtract_8/SubSubmodel_2_13018010#model_2/tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:??????????2 
model_2/tf.math.subtract_8/Sub?
model_2/tf.math.multiply_25/MulMul.model_2/leaky_re_lu_10/LeakyRelu:activations:0#model_2/tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2!
model_2/tf.math.multiply_25/Mul?
%model_2/tf.__operators__.add_17/AddV2AddV2#model_2/tf.math.multiply_25/Mul:z:0"model_2/tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2'
%model_2/tf.__operators__.add_17/AddV2?
'model_2/conv2d_13/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_2/conv2d_13/Conv2D/ReadVariableOp?
model_2/conv2d_13/Conv2DConv2D)model_2/tf.__operators__.add_17/AddV2:z:0/model_2/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_2/conv2d_13/Conv2D?
(model_2/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_2/conv2d_13/BiasAdd/ReadVariableOp?
model_2/conv2d_13/BiasAddBiasAdd!model_2/conv2d_13/Conv2D:output:00model_2/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_2/conv2d_13/BiasAdd?
 model_2/leaky_re_lu_11/LeakyRelu	LeakyRelu"model_2/conv2d_13/BiasAdd:output:0*0
_output_shapes
:??????????2"
 model_2/leaky_re_lu_11/LeakyRelu?
5model_2/tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_18/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_18/MeanMean.model_2/leaky_re_lu_11/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_18/Mean?
'model_2/tf.stop_gradient_9/StopGradientStopGradient,model_2/tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/tf.stop_gradient_9/StopGradient?
6model_2/tf.math.squared_difference_9/SquaredDifferenceSquaredDifference.model_2/leaky_re_lu_11/LeakyRelu:activations:00model_2/tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:??????????28
6model_2/tf.math.squared_difference_9/SquaredDifference?
5model_2/tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_19/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_19/MeanMean:model_2/tf.math.squared_difference_9/SquaredDifference:z:0>model_2/tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_19/Mean?
!model_2/tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_2/tf.__operators__.add_18/y?
%model_2/tf.__operators__.add_18/AddV2AddV2,model_2/tf.math.reduce_mean_19/Mean:output:0*model_2/tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:??????????2'
%model_2/tf.__operators__.add_18/AddV2?
model_2/tf.math.rsqrt_9/RsqrtRsqrt)model_2/tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:??????????2
model_2/tf.math.rsqrt_9/Rsqrt?
model_2/tf.math.multiply_27/MulMul!model_2/tf.math.rsqrt_9/Rsqrt:y:0!model_2_tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.multiply_27/Mul?
model_2/tf.math.multiply_29/MulMul,model_2/tf.math.reduce_mean_18/Mean:output:0#model_2/tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.multiply_29/Mul?
model_2/tf.math.subtract_9/SubSubmodel_2_13018034#model_2/tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:??????????2 
model_2/tf.math.subtract_9/Sub?
model_2/tf.math.multiply_28/MulMul.model_2/leaky_re_lu_11/LeakyRelu:activations:0#model_2/tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.multiply_28/Mul?
%model_2/tf.__operators__.add_19/AddV2AddV2#model_2/tf.math.multiply_28/Mul:z:0"model_2/tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:??????????2'
%model_2/tf.__operators__.add_19/AddV2?
model_2/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
model_2/up_sampling2d/Const?
model_2/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
model_2/up_sampling2d/Const_1?
model_2/up_sampling2d/mulMul$model_2/up_sampling2d/Const:output:0&model_2/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
model_2/up_sampling2d/mul?
2model_2/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor)model_2/tf.__operators__.add_19/AddV2:z:0model_2/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????  ?*
half_pixel_centers(24
2model_2/up_sampling2d/resize/ResizeNearestNeighbor?
'model_2/conv2d_14/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_2/conv2d_14/Conv2D/ReadVariableOp?
model_2/conv2d_14/Conv2DConv2DCmodel_2/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
model_2/conv2d_14/Conv2D?
(model_2/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_2/conv2d_14/BiasAdd/ReadVariableOp?
model_2/conv2d_14/BiasAddBiasAdd!model_2/conv2d_14/Conv2D:output:00model_2/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
model_2/conv2d_14/BiasAdd?
model_2/conv2d_14/ReluRelu"model_2/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
model_2/conv2d_14/Relu?
model_2/dropout/IdentityIdentity$model_2/conv2d_14/Relu:activations:0*
T0*0
_output_shapes
:?????????  ?2
model_2/dropout/Identity?
5model_2/tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_20/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_20/MeanMean!model_2/dropout/Identity:output:0>model_2/tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_20/Mean?
(model_2/tf.stop_gradient_10/StopGradientStopGradient,model_2/tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:??????????2*
(model_2/tf.stop_gradient_10/StopGradient?
7model_2/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference!model_2/dropout/Identity:output:01model_2/tf.stop_gradient_10/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?29
7model_2/tf.math.squared_difference_10/SquaredDifference?
5model_2/tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_21/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_21/MeanMean;model_2/tf.math.squared_difference_10/SquaredDifference:z:0>model_2/tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_21/Mean?
!model_2/tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_2/tf.__operators__.add_20/y?
%model_2/tf.__operators__.add_20/AddV2AddV2,model_2/tf.math.reduce_mean_21/Mean:output:0*model_2/tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:??????????2'
%model_2/tf.__operators__.add_20/AddV2?
model_2/tf.math.rsqrt_10/RsqrtRsqrt)model_2/tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:??????????2 
model_2/tf.math.rsqrt_10/Rsqrt?
model_2/tf.math.multiply_30/MulMul"model_2/tf.math.rsqrt_10/Rsqrt:y:0!model_2_tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.multiply_30/Mul?
model_2/tf.math.multiply_32/MulMul,model_2/tf.math.reduce_mean_20/Mean:output:0#model_2/tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.multiply_32/Mul?
model_2/tf.math.subtract_10/SubSubmodel_2_13018063#model_2/tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_2/tf.math.subtract_10/Sub?
model_2/tf.math.multiply_31/MulMul!model_2/dropout/Identity:output:0#model_2/tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2!
model_2/tf.math.multiply_31/Mul?
%model_2/tf.__operators__.add_21/AddV2AddV2#model_2/tf.math.multiply_31/Mul:z:0#model_2/tf.math.subtract_10/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2'
%model_2/tf.__operators__.add_21/AddV2?
model_2/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model_2/concatenate/concat/axis?
model_2/concatenate/concatConcatV2)model_2/tf.__operators__.add_21/AddV2:z:0)model_2/tf.__operators__.add_17/AddV2:z:0(model_2/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
model_2/concatenate/concat?
model_2/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
model_2/up_sampling2d_1/Const?
model_2/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
model_2/up_sampling2d_1/Const_1?
model_2/up_sampling2d_1/mulMul&model_2/up_sampling2d_1/Const:output:0(model_2/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
model_2/up_sampling2d_1/mul?
4model_2/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor#model_2/concatenate/concat:output:0model_2/up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????@@?*
half_pixel_centers(26
4model_2/up_sampling2d_1/resize/ResizeNearestNeighbor?
'model_2/conv2d_15/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02)
'model_2/conv2d_15/Conv2D/ReadVariableOp?
model_2/conv2d_15/Conv2DConv2DEmodel_2/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
model_2/conv2d_15/Conv2D?
(model_2/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_2/conv2d_15/BiasAdd/ReadVariableOp?
model_2/conv2d_15/BiasAddBiasAdd!model_2/conv2d_15/Conv2D:output:00model_2/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_2/conv2d_15/BiasAdd?
model_2/conv2d_15/ReluRelu"model_2/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
model_2/conv2d_15/Relu?
model_2/dropout_1/IdentityIdentity$model_2/conv2d_15/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@2
model_2/dropout_1/Identity?
5model_2/tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_22/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_22/MeanMean#model_2/dropout_1/Identity:output:0>model_2/tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_22/Mean?
(model_2/tf.stop_gradient_11/StopGradientStopGradient,model_2/tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2*
(model_2/tf.stop_gradient_11/StopGradient?
7model_2/tf.math.squared_difference_11/SquaredDifferenceSquaredDifference#model_2/dropout_1/Identity:output:01model_2/tf.stop_gradient_11/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@29
7model_2/tf.math.squared_difference_11/SquaredDifference?
5model_2/tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_23/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_23/MeanMean;model_2/tf.math.squared_difference_11/SquaredDifference:z:0>model_2/tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_23/Mean?
!model_2/tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_2/tf.__operators__.add_22/y?
%model_2/tf.__operators__.add_22/AddV2AddV2,model_2/tf.math.reduce_mean_23/Mean:output:0*model_2/tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_2/tf.__operators__.add_22/AddV2?
model_2/tf.math.rsqrt_11/RsqrtRsqrt)model_2/tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2 
model_2/tf.math.rsqrt_11/Rsqrt?
model_2/tf.math.multiply_33/MulMul"model_2/tf.math.rsqrt_11/Rsqrt:y:0!model_2_tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_33/Mul?
model_2/tf.math.multiply_35/MulMul,model_2/tf.math.reduce_mean_22/Mean:output:0#model_2/tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_35/Mul?
model_2/tf.math.subtract_11/SubSubmodel_2_13018094#model_2/tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.subtract_11/Sub?
model_2/tf.math.multiply_34/MulMul#model_2/dropout_1/Identity:output:0#model_2/tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_2/tf.math.multiply_34/Mul?
%model_2/tf.__operators__.add_23/AddV2AddV2#model_2/tf.math.multiply_34/Mul:z:0#model_2/tf.math.subtract_11/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_2/tf.__operators__.add_23/AddV2?
!model_2/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_2/concatenate_1/concat/axis?
model_2/concatenate_1/concatConcatV2)model_2/tf.__operators__.add_23/AddV2:z:0)model_2/tf.__operators__.add_15/AddV2:z:0*model_2/concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
model_2/concatenate_1/concat?
model_2/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
model_2/up_sampling2d_2/Const?
model_2/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
model_2/up_sampling2d_2/Const_1?
model_2/up_sampling2d_2/mulMul&model_2/up_sampling2d_2/Const:output:0(model_2/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
model_2/up_sampling2d_2/mul?
4model_2/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor%model_2/concatenate_1/concat:output:0model_2/up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(26
4model_2/up_sampling2d_2/resize/ResizeNearestNeighbor?
'model_2/conv2d_16/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02)
'model_2/conv2d_16/Conv2D/ReadVariableOp?
model_2/conv2d_16/Conv2DConv2DEmodel_2/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
model_2/conv2d_16/Conv2D?
(model_2/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_2/conv2d_16/BiasAdd/ReadVariableOp?
model_2/conv2d_16/BiasAddBiasAdd!model_2/conv2d_16/Conv2D:output:00model_2/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
model_2/conv2d_16/BiasAdd?
model_2/conv2d_16/ReluRelu"model_2/conv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
model_2/conv2d_16/Relu?
model_2/dropout_2/IdentityIdentity$model_2/conv2d_16/Relu:activations:0*
T0*1
_output_shapes
:??????????? 2
model_2/dropout_2/Identity?
5model_2/tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_24/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_24/MeanMean#model_2/dropout_2/Identity:output:0>model_2/tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_24/Mean?
(model_2/tf.stop_gradient_12/StopGradientStopGradient,model_2/tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2*
(model_2/tf.stop_gradient_12/StopGradient?
7model_2/tf.math.squared_difference_12/SquaredDifferenceSquaredDifference#model_2/dropout_2/Identity:output:01model_2/tf.stop_gradient_12/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 29
7model_2/tf.math.squared_difference_12/SquaredDifference?
5model_2/tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_25/Mean/reduction_indices?
#model_2/tf.math.reduce_mean_25/MeanMean;model_2/tf.math.squared_difference_12/SquaredDifference:z:0>model_2/tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_25/Mean?
!model_2/tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_2/tf.__operators__.add_24/y?
%model_2/tf.__operators__.add_24/AddV2AddV2,model_2/tf.math.reduce_mean_25/Mean:output:0*model_2/tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_2/tf.__operators__.add_24/AddV2?
model_2/tf.math.rsqrt_12/RsqrtRsqrt)model_2/tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2 
model_2/tf.math.rsqrt_12/Rsqrt?
model_2/tf.math.multiply_36/MulMul"model_2/tf.math.rsqrt_12/Rsqrt:y:0!model_2_tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_36/Mul?
model_2/tf.math.multiply_38/MulMul,model_2/tf.math.reduce_mean_24/Mean:output:0#model_2/tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_38/Mul?
model_2/tf.math.subtract_12/SubSubmodel_2_13018125#model_2/tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.subtract_12/Sub?
model_2/tf.math.multiply_37/MulMul#model_2/dropout_2/Identity:output:0#model_2/tf.math.multiply_36/Mul:z:0*
T0*1
_output_shapes
:??????????? 2!
model_2/tf.math.multiply_37/Mul?
%model_2/tf.__operators__.add_25/AddV2AddV2#model_2/tf.math.multiply_37/Mul:z:0#model_2/tf.math.subtract_12/Sub:z:0*
T0*1
_output_shapes
:??????????? 2'
%model_2/tf.__operators__.add_25/AddV2?
!model_2/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_2/concatenate_2/concat/axis?
model_2/concatenate_2/concatConcatV2)model_2/tf.__operators__.add_25/AddV2:z:0)model_2/tf.__operators__.add_13/AddV2:z:0*model_2/concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
model_2/concatenate_2/concat?
model_2/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"?   ?   2
model_2/up_sampling2d_3/Const?
model_2/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
model_2/up_sampling2d_3/Const_1?
model_2/up_sampling2d_3/mulMul&model_2/up_sampling2d_3/Const:output:0(model_2/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
model_2/up_sampling2d_3/mul?
4model_2/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor%model_2/concatenate_2/concat:output:0model_2/up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:???????????@*
half_pixel_centers(26
4model_2/up_sampling2d_3/resize/ResizeNearestNeighbor?
'model_2/conv2d_17/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'model_2/conv2d_17/Conv2D/ReadVariableOp?
model_2/conv2d_17/Conv2DConv2DEmodel_2/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
model_2/conv2d_17/Conv2D?
(model_2/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_2/conv2d_17/BiasAdd/ReadVariableOp?
model_2/conv2d_17/BiasAddBiasAdd!model_2/conv2d_17/Conv2D:output:00model_2/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
model_2/conv2d_17/BiasAdd?
model_2/conv2d_17/TanhTanh"model_2/conv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
model_2/conv2d_17/Tanh?
IdentityIdentitymodel_2/conv2d_17/Tanh:y:0)^model_2/conv2d_10/BiasAdd/ReadVariableOp(^model_2/conv2d_10/Conv2D/ReadVariableOp)^model_2/conv2d_11/BiasAdd/ReadVariableOp(^model_2/conv2d_11/Conv2D/ReadVariableOp)^model_2/conv2d_12/BiasAdd/ReadVariableOp(^model_2/conv2d_12/Conv2D/ReadVariableOp)^model_2/conv2d_13/BiasAdd/ReadVariableOp(^model_2/conv2d_13/Conv2D/ReadVariableOp)^model_2/conv2d_14/BiasAdd/ReadVariableOp(^model_2/conv2d_14/Conv2D/ReadVariableOp)^model_2/conv2d_15/BiasAdd/ReadVariableOp(^model_2/conv2d_15/Conv2D/ReadVariableOp)^model_2/conv2d_16/BiasAdd/ReadVariableOp(^model_2/conv2d_16/Conv2D/ReadVariableOp)^model_2/conv2d_17/BiasAdd/ReadVariableOp(^model_2/conv2d_17/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2T
(model_2/conv2d_10/BiasAdd/ReadVariableOp(model_2/conv2d_10/BiasAdd/ReadVariableOp2R
'model_2/conv2d_10/Conv2D/ReadVariableOp'model_2/conv2d_10/Conv2D/ReadVariableOp2T
(model_2/conv2d_11/BiasAdd/ReadVariableOp(model_2/conv2d_11/BiasAdd/ReadVariableOp2R
'model_2/conv2d_11/Conv2D/ReadVariableOp'model_2/conv2d_11/Conv2D/ReadVariableOp2T
(model_2/conv2d_12/BiasAdd/ReadVariableOp(model_2/conv2d_12/BiasAdd/ReadVariableOp2R
'model_2/conv2d_12/Conv2D/ReadVariableOp'model_2/conv2d_12/Conv2D/ReadVariableOp2T
(model_2/conv2d_13/BiasAdd/ReadVariableOp(model_2/conv2d_13/BiasAdd/ReadVariableOp2R
'model_2/conv2d_13/Conv2D/ReadVariableOp'model_2/conv2d_13/Conv2D/ReadVariableOp2T
(model_2/conv2d_14/BiasAdd/ReadVariableOp(model_2/conv2d_14/BiasAdd/ReadVariableOp2R
'model_2/conv2d_14/Conv2D/ReadVariableOp'model_2/conv2d_14/Conv2D/ReadVariableOp2T
(model_2/conv2d_15/BiasAdd/ReadVariableOp(model_2/conv2d_15/BiasAdd/ReadVariableOp2R
'model_2/conv2d_15/Conv2D/ReadVariableOp'model_2/conv2d_15/Conv2D/ReadVariableOp2T
(model_2/conv2d_16/BiasAdd/ReadVariableOp(model_2/conv2d_16/BiasAdd/ReadVariableOp2R
'model_2/conv2d_16/Conv2D/ReadVariableOp'model_2/conv2d_16/Conv2D/ReadVariableOp2T
(model_2/conv2d_17/BiasAdd/ReadVariableOp(model_2/conv2d_17/BiasAdd/ReadVariableOp2R
'model_2/conv2d_17/Conv2D/ReadVariableOp'model_2/conv2d_17/Conv2D/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?
?
,__inference_conv2d_11_layer_call_fn_13020206

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_11_layer_call_and_return_conditional_losses_130182772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13020255

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????  ?2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
?
,__inference_conv2d_17_layer_call_fn_13020473

inputs!
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_130185522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
*__inference_model_2_layer_call_fn_13018622
input_3!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@?
	unknown_8:	?
	unknown_9

unknown_10&

unknown_11:??

unknown_12:	?

unknown_13

unknown_14&

unknown_15:??

unknown_16:	?

unknown_17

unknown_18%

unknown_19:?@

unknown_20:@

unknown_21

unknown_22%

unknown_23:? 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_130185592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?
g
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_13018157

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
u
K__inference_concatenate_1_layer_call_and_return_conditional_losses_13018487

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????@@@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
M
1__inference_leaky_re_lu_11_layer_call_fn_13020279

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_130183682
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_2_layer_call_and_return_conditional_losses_13018659

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
G__inference_conv2d_14_layer_call_and_return_conditional_losses_13020304

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_2_layer_call_and_return_conditional_losses_13020451

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
H
,__inference_dropout_1_layer_call_fn_13020369

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_130184612
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
e
G__inference_dropout_2_layer_call_and_return_conditional_losses_13018512

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
G__inference_conv2d_15_layer_call_and_return_conditional_losses_13018450

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_13020319

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_15_layer_call_fn_13020353

inputs"
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_130184502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?

E__inference_model_2_layer_call_and_return_conditional_losses_13019365
input_3,
conv2d_10_13019191:  
conv2d_10_13019193: 
tf_math_multiply_18_mul_y
unknown,
conv2d_11_13019214: @ 
conv2d_11_13019216:@
tf_math_multiply_21_mul_y
	unknown_0-
conv2d_12_13019237:@?!
conv2d_12_13019239:	?
tf_math_multiply_24_mul_y
	unknown_1.
conv2d_13_13019260:??!
conv2d_13_13019262:	?
tf_math_multiply_27_mul_y
	unknown_2.
conv2d_14_13019284:??!
conv2d_14_13019286:	?
tf_math_multiply_30_mul_y
	unknown_3-
conv2d_15_13019309:?@ 
conv2d_15_13019311:@
tf_math_multiply_33_mul_y
	unknown_4-
conv2d_16_13019334:?  
conv2d_16_13019336: 
tf_math_multiply_36_mul_y
	unknown_5,
conv2d_17_13019359:@ 
conv2d_17_13019361:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_10_13019191conv2d_10_13019193*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_10_layer_call_and_return_conditional_losses_130182372#
!conv2d_10/StatefulPartitionedCall?
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_130182482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indices?
tf.math.reduce_mean_12/MeanMean&leaky_re_lu_8/PartitionedCall:output:06tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_12/Mean?
tf.stop_gradient_6/StopGradientStopGradient$tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2!
tf.stop_gradient_6/StopGradient?
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 20
.tf.math.squared_difference_6/SquaredDifference?
-tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_13/Mean/reduction_indices?
tf.math.reduce_mean_13/MeanMean2tf.math.squared_difference_6/SquaredDifference:z:06tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_13/Mean{
tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_12/y?
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2?
tf.math.rsqrt_6/RsqrtRsqrt!tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_6/Rsqrt?
tf.math.multiply_18/MulMultf.math.rsqrt_6/Rsqrt:y:0tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_18/Mul?
tf.math.multiply_20/MulMul$tf.math.reduce_mean_12/Mean:output:0tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_20/Mul?
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_13/AddV2?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_13019214conv2d_11_13019216*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_11_layer_call_and_return_conditional_losses_130182772#
!conv2d_11/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_130182882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indices?
tf.math.reduce_mean_14/MeanMean&leaky_re_lu_9/PartitionedCall:output:06tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_14/Mean?
tf.stop_gradient_7/StopGradientStopGradient$tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2!
tf.stop_gradient_7/StopGradient?
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference&leaky_re_lu_9/PartitionedCall:output:0(tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@20
.tf.math.squared_difference_7/SquaredDifference?
-tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_15/Mean/reduction_indices?
tf.math.reduce_mean_15/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:06tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_15/Mean{
tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_14/y?
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2?
tf.math.rsqrt_7/RsqrtRsqrt!tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_7/Rsqrt?
tf.math.multiply_21/MulMultf.math.rsqrt_7/Rsqrt:y:0tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_21/Mul?
tf.math.multiply_23/MulMul$tf.math.reduce_mean_14/Mean:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_23/Mul?
tf.math.subtract_7/SubSub	unknown_0tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_7/Sub?
tf.math.multiply_22/MulMul&leaky_re_lu_9/PartitionedCall:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_22/Mul?
tf.__operators__.add_15/AddV2AddV2tf.math.multiply_22/Mul:z:0tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_15/AddV2?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_13019237conv2d_12_13019239*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_12_layer_call_and_return_conditional_losses_130183172#
!conv2d_12/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_130183282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indices?
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_8/StopGradient?
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?20
.tf.math.squared_difference_8/SquaredDifference?
-tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_17/Mean/reduction_indices?
tf.math.reduce_mean_17/MeanMean2tf.math.squared_difference_8/SquaredDifference:z:06tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_16/y?
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_16/AddV2?
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_26/Mul?
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_25/Mul?
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_17/AddV2?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_13019260conv2d_13_13019262*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_130183572#
!conv2d_13/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_130183682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indices?
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_9/StopGradient?
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:??????????20
.tf.math.squared_difference_9/SquaredDifference?
-tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_19/Mean/reduction_indices?
tf.math.reduce_mean_19/MeanMean2tf.math.squared_difference_9/SquaredDifference:z:06tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_18/y?
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_18/AddV2?
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_29/Mul?
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_28/Mul?
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_19/AddV2?
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_130181572
up_sampling2d/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_13019284conv2d_14_13019286*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_130183992#
!conv2d_14/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_130184102
dropout/PartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indices?
tf.math.reduce_mean_20/MeanMean dropout/PartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference dropout/PartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_10/SquaredDifference?
-tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_21/Mean/reduction_indices?
tf.math.reduce_mean_21/MeanMean3tf.math.squared_difference_10/SquaredDifference:z:06tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_20/y?
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_20/AddV2?
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_32/Mul?
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_10/Sub?
tf.math.multiply_31/MulMul dropout/PartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_130184362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_130181762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_13019309conv2d_15_13019311*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_130184502#
!conv2d_15/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_130184612
dropout_1/PartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indices?
tf.math.reduce_mean_22/MeanMean"dropout_1/PartitionedCall:output:06tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_22/Mean?
 tf.stop_gradient_11/StopGradientStopGradient$tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_11/StopGradient?
/tf.math.squared_difference_11/SquaredDifferenceSquaredDifference"dropout_1/PartitionedCall:output:0)tf.stop_gradient_11/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_11/SquaredDifference?
-tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_23/Mean/reduction_indices?
tf.math.reduce_mean_23/MeanMean3tf.math.squared_difference_11/SquaredDifference:z:06tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_23/Mean{
tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_22/y?
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2?
tf.math.rsqrt_11/RsqrtRsqrt!tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_11/Rsqrt?
tf.math.multiply_33/MulMultf.math.rsqrt_11/Rsqrt:y:0tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_33/Mul?
tf.math.multiply_35/MulMul$tf.math.reduce_mean_22/Mean:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_35/Mul?
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub?
tf.math.multiply_34/MulMul"dropout_1/PartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mul?
tf.__operators__.add_23/AddV2AddV2tf.math.multiply_34/Mul:z:0tf.math.subtract_11/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_23/AddV2?
concatenate_1/PartitionedCallPartitionedCall!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_130184872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_130181952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_13019334conv2d_16_13019336*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_130185012#
!conv2d_16/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_130185122
dropout_2/PartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indices?
tf.math.reduce_mean_24/MeanMean"dropout_2/PartitionedCall:output:06tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_24/Mean?
 tf.stop_gradient_12/StopGradientStopGradient$tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_12/StopGradient?
/tf.math.squared_difference_12/SquaredDifferenceSquaredDifference"dropout_2/PartitionedCall:output:0)tf.stop_gradient_12/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_12/SquaredDifference?
-tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_25/Mean/reduction_indices?
tf.math.reduce_mean_25/MeanMean3tf.math.squared_difference_12/SquaredDifference:z:06tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_25/Mean{
tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_24/y?
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2?
tf.math.rsqrt_12/RsqrtRsqrt!tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_12/Rsqrt?
tf.math.multiply_36/MulMultf.math.rsqrt_12/Rsqrt:y:0tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_36/Mul?
tf.math.multiply_38/MulMul$tf.math.reduce_mean_24/Mean:output:0tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_38/Mul?
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMul"dropout_2/PartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_25/AddV2?
concatenate_2/PartitionedCallPartitionedCall!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_130185382
concatenate_2/PartitionedCall?
up_sampling2d_3/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_130182142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_13019359conv2d_17_13019361*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_130185522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?
?
*__inference_model_2_layer_call_fn_13019739

inputs!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@?
	unknown_8:	?
	unknown_9

unknown_10&

unknown_11:??

unknown_12:	?

unknown_13

unknown_14&

unknown_15:??

unknown_16:	?

unknown_17

unknown_18%

unknown_19:?@

unknown_20:@

unknown_21

unknown_22%

unknown_23:? 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_130190602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?
?
G__inference_conv2d_17_layer_call_and_return_conditional_losses_13020484

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_3_layer_call_fn_13018220

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_130182142
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_11_layer_call_and_return_conditional_losses_13018277

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
,__inference_conv2d_14_layer_call_fn_13020293

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_130183992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_13020379

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
i
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13018176

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_13020197

inputs
identity^
	LeakyRelu	LeakyReluinputs*1
_output_shapes
:??????????? 2
	LeakyReluu
IdentityIdentityLeakyRelu:activations:0*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
w
K__inference_concatenate_1_layer_call_and_return_conditional_losses_13020404
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????@@@:k g
A
_output_shapes/
-:+???????????????????????????@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@@
"
_user_specified_name
inputs/1
?
h
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13018328

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????  ?2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
?
*__inference_model_2_layer_call_fn_13019674

inputs!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@?
	unknown_8:	?
	unknown_9

unknown_10&

unknown_11:??

unknown_12:	?

unknown_13

unknown_14&

unknown_15:??

unknown_16:	?

unknown_17

unknown_18%

unknown_19:?@

unknown_20:@

unknown_21

unknown_22%

unknown_23:? 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_130185592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
ȭ
?
E__inference_model_2_layer_call_and_return_conditional_losses_13020168

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
tf_math_multiply_18_mul_y
unknownB
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
tf_math_multiply_21_mul_y
	unknown_0C
(conv2d_12_conv2d_readvariableop_resource:@?8
)conv2d_12_biasadd_readvariableop_resource:	?
tf_math_multiply_24_mul_y
	unknown_1D
(conv2d_13_conv2d_readvariableop_resource:??8
)conv2d_13_biasadd_readvariableop_resource:	?
tf_math_multiply_27_mul_y
	unknown_2D
(conv2d_14_conv2d_readvariableop_resource:??8
)conv2d_14_biasadd_readvariableop_resource:	?
tf_math_multiply_30_mul_y
	unknown_3C
(conv2d_15_conv2d_readvariableop_resource:?@7
)conv2d_15_biasadd_readvariableop_resource:@
tf_math_multiply_33_mul_y
	unknown_4C
(conv2d_16_conv2d_readvariableop_resource:? 7
)conv2d_16_biasadd_readvariableop_resource: 
tf_math_multiply_36_mul_y
	unknown_5B
(conv2d_17_conv2d_readvariableop_resource:@7
)conv2d_17_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_10/BiasAdd?
leaky_re_lu_8/LeakyRelu	LeakyReluconv2d_10/BiasAdd:output:0*1
_output_shapes
:??????????? 2
leaky_re_lu_8/LeakyRelu?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indices?
tf.math.reduce_mean_12/MeanMean%leaky_re_lu_8/LeakyRelu:activations:06tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_12/Mean?
tf.stop_gradient_6/StopGradientStopGradient$tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2!
tf.stop_gradient_6/StopGradient?
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference%leaky_re_lu_8/LeakyRelu:activations:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 20
.tf.math.squared_difference_6/SquaredDifference?
-tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_13/Mean/reduction_indices?
tf.math.reduce_mean_13/MeanMean2tf.math.squared_difference_6/SquaredDifference:z:06tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_13/Mean{
tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_12/y?
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2?
tf.math.rsqrt_6/RsqrtRsqrt!tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_6/Rsqrt?
tf.math.multiply_18/MulMultf.math.rsqrt_6/Rsqrt:y:0tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_18/Mul?
tf.math.multiply_20/MulMul$tf.math.reduce_mean_12/Mean:output:0tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_20/Mul?
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul%leaky_re_lu_8/LeakyRelu:activations:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_13/AddV2?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D!tf.__operators__.add_13/AddV2:z:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_11/BiasAdd?
leaky_re_lu_9/LeakyRelu	LeakyReluconv2d_11/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_9/LeakyRelu?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indices?
tf.math.reduce_mean_14/MeanMean%leaky_re_lu_9/LeakyRelu:activations:06tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_14/Mean?
tf.stop_gradient_7/StopGradientStopGradient$tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2!
tf.stop_gradient_7/StopGradient?
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference%leaky_re_lu_9/LeakyRelu:activations:0(tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@20
.tf.math.squared_difference_7/SquaredDifference?
-tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_15/Mean/reduction_indices?
tf.math.reduce_mean_15/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:06tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_15/Mean{
tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_14/y?
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2?
tf.math.rsqrt_7/RsqrtRsqrt!tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_7/Rsqrt?
tf.math.multiply_21/MulMultf.math.rsqrt_7/Rsqrt:y:0tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_21/Mul?
tf.math.multiply_23/MulMul$tf.math.reduce_mean_14/Mean:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_23/Mul?
tf.math.subtract_7/SubSub	unknown_0tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_7/Sub?
tf.math.multiply_22/MulMul%leaky_re_lu_9/LeakyRelu:activations:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_22/Mul?
tf.__operators__.add_15/AddV2AddV2tf.math.multiply_22/Mul:z:0tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_15/AddV2?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2D!tf.__operators__.add_15/AddV2:z:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_12/BiasAdd?
leaky_re_lu_10/LeakyRelu	LeakyReluconv2d_12/BiasAdd:output:0*0
_output_shapes
:?????????  ?2
leaky_re_lu_10/LeakyRelu?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indices?
tf.math.reduce_mean_16/MeanMean&leaky_re_lu_10/LeakyRelu:activations:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_8/StopGradient?
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference&leaky_re_lu_10/LeakyRelu:activations:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?20
.tf.math.squared_difference_8/SquaredDifference?
-tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_17/Mean/reduction_indices?
tf.math.reduce_mean_17/MeanMean2tf.math.squared_difference_8/SquaredDifference:z:06tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_16/y?
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_16/AddV2?
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_26/Mul?
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul&leaky_re_lu_10/LeakyRelu:activations:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_25/Mul?
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_17/AddV2?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2D!tf.__operators__.add_17/AddV2:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd?
leaky_re_lu_11/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:??????????2
leaky_re_lu_11/LeakyRelu?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indices?
tf.math.reduce_mean_18/MeanMean&leaky_re_lu_11/LeakyRelu:activations:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_9/StopGradient?
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference&leaky_re_lu_11/LeakyRelu:activations:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:??????????20
.tf.math.squared_difference_9/SquaredDifference?
-tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_19/Mean/reduction_indices?
tf.math.reduce_mean_19/MeanMean2tf.math.squared_difference_9/SquaredDifference:z:06tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_18/y?
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_18/AddV2?
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_29/Mul?
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul&leaky_re_lu_11/LeakyRelu:activations:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_28/Mul?
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_19/AddV2{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1?
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul?
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_19/AddV2:z:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????  ?*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_14/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMulconv2d_14/Relu:activations:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:?????????  ?2
dropout/dropout/Mulz
dropout/dropout/ShapeShapeconv2d_14/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????  ?*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????  ?2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????  ?2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????  ?2
dropout/dropout/Mul_1?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indices?
tf.math.reduce_mean_20/MeanMeandropout/dropout/Mul_1:z:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifferencedropout/dropout/Mul_1:z:0)tf.stop_gradient_10/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_10/SquaredDifference?
-tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_21/Mean/reduction_indices?
tf.math.reduce_mean_21/MeanMean3tf.math.squared_difference_10/SquaredDifference:z:06tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_20/y?
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_20/AddV2?
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_32/Mul?
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_10/Sub?
tf.math.multiply_31/MulMuldropout/dropout/Mul_1:z:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_21/AddV2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
concatenate/concat
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_1/Const?
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1?
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul?
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????@@?*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_15/Conv2D/ReadVariableOp?
conv2d_15/Conv2DConv2D=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_15/Conv2D?
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp?
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_15/BiasAdd~
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_15/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulconv2d_15/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@@2
dropout_1/dropout/Mul~
dropout_1/dropout/ShapeShapeconv2d_15/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@@2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@@2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@@2
dropout_1/dropout/Mul_1?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indices?
tf.math.reduce_mean_22/MeanMeandropout_1/dropout/Mul_1:z:06tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_22/Mean?
 tf.stop_gradient_11/StopGradientStopGradient$tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_11/StopGradient?
/tf.math.squared_difference_11/SquaredDifferenceSquaredDifferencedropout_1/dropout/Mul_1:z:0)tf.stop_gradient_11/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_11/SquaredDifference?
-tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_23/Mean/reduction_indices?
tf.math.reduce_mean_23/MeanMean3tf.math.squared_difference_11/SquaredDifference:z:06tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_23/Mean{
tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_22/y?
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2?
tf.math.rsqrt_11/RsqrtRsqrt!tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_11/Rsqrt?
tf.math.multiply_33/MulMultf.math.rsqrt_11/Rsqrt:y:0tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_33/Mul?
tf.math.multiply_35/MulMul$tf.math.reduce_mean_22/Mean:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_35/Mul?
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub?
tf.math.multiply_34/MulMuldropout_1/dropout/Mul_1:z:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_34/Mul?
tf.__operators__.add_23/AddV2AddV2tf.math.multiply_34/Mul:z:0tf.math.subtract_11/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_23/AddV2x
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
concatenate_1/concat
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_2/Const?
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1?
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul?
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2D=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_16/BiasAdd?
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_16/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMulconv2d_16/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*1
_output_shapes
:??????????? 2
dropout_2/dropout/Mul~
dropout_2/dropout/ShapeShapeconv2d_16/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*1
_output_shapes
:??????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:??????????? 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:??????????? 2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*1
_output_shapes
:??????????? 2
dropout_2/dropout/Mul_1?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indices?
tf.math.reduce_mean_24/MeanMeandropout_2/dropout/Mul_1:z:06tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_24/Mean?
 tf.stop_gradient_12/StopGradientStopGradient$tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_12/StopGradient?
/tf.math.squared_difference_12/SquaredDifferenceSquaredDifferencedropout_2/dropout/Mul_1:z:0)tf.stop_gradient_12/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_12/SquaredDifference?
-tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_25/Mean/reduction_indices?
tf.math.reduce_mean_25/MeanMean3tf.math.squared_difference_12/SquaredDifference:z:06tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_25/Mean{
tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_24/y?
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2?
tf.math.rsqrt_12/RsqrtRsqrt!tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_12/Rsqrt?
tf.math.multiply_36/MulMultf.math.rsqrt_12/Rsqrt:y:0tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_36/Mul?
tf.math.multiply_38/MulMul$tf.math.reduce_mean_24/Mean:output:0tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_38/Mul?
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMuldropout_2/dropout/Mul_1:z:0tf.math.multiply_36/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_25/AddV2x
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axis?
concatenate_2/concatConcatV2!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0"concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
concatenate_2/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"?   ?   2
up_sampling2d_3/Const?
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1?
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul?
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:???????????@*
half_pixel_centers(2.
,up_sampling2d_3/resize/ResizeNearestNeighbor?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2D=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_17/BiasAdd?
conv2d_17/TanhTanhconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_17/Tanh?
IdentityIdentityconv2d_17/Tanh:y:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?

?
G__inference_conv2d_10_layer_call_and_return_conditional_losses_13020187

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_up_sampling2d_layer_call_fn_13018163

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_130181572
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
w
K__inference_concatenate_2_layer_call_and_return_conditional_losses_13020464
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:+??????????????????????????? :??????????? :k g
A
_output_shapes/
-:+??????????????????????????? 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:??????????? 
"
_user_specified_name
inputs/1
?
F
*__inference_dropout_layer_call_fn_13020309

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_130184102
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_1_layer_call_fn_13018182

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_130181762
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
E__inference_model_2_layer_call_and_return_conditional_losses_13019943

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
tf_math_multiply_18_mul_y
unknownB
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
tf_math_multiply_21_mul_y
	unknown_0C
(conv2d_12_conv2d_readvariableop_resource:@?8
)conv2d_12_biasadd_readvariableop_resource:	?
tf_math_multiply_24_mul_y
	unknown_1D
(conv2d_13_conv2d_readvariableop_resource:??8
)conv2d_13_biasadd_readvariableop_resource:	?
tf_math_multiply_27_mul_y
	unknown_2D
(conv2d_14_conv2d_readvariableop_resource:??8
)conv2d_14_biasadd_readvariableop_resource:	?
tf_math_multiply_30_mul_y
	unknown_3C
(conv2d_15_conv2d_readvariableop_resource:?@7
)conv2d_15_biasadd_readvariableop_resource:@
tf_math_multiply_33_mul_y
	unknown_4C
(conv2d_16_conv2d_readvariableop_resource:? 7
)conv2d_16_biasadd_readvariableop_resource: 
tf_math_multiply_36_mul_y
	unknown_5B
(conv2d_17_conv2d_readvariableop_resource:@7
)conv2d_17_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_10/BiasAdd?
leaky_re_lu_8/LeakyRelu	LeakyReluconv2d_10/BiasAdd:output:0*1
_output_shapes
:??????????? 2
leaky_re_lu_8/LeakyRelu?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indices?
tf.math.reduce_mean_12/MeanMean%leaky_re_lu_8/LeakyRelu:activations:06tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_12/Mean?
tf.stop_gradient_6/StopGradientStopGradient$tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2!
tf.stop_gradient_6/StopGradient?
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference%leaky_re_lu_8/LeakyRelu:activations:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 20
.tf.math.squared_difference_6/SquaredDifference?
-tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_13/Mean/reduction_indices?
tf.math.reduce_mean_13/MeanMean2tf.math.squared_difference_6/SquaredDifference:z:06tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_13/Mean{
tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_12/y?
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2?
tf.math.rsqrt_6/RsqrtRsqrt!tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_6/Rsqrt?
tf.math.multiply_18/MulMultf.math.rsqrt_6/Rsqrt:y:0tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_18/Mul?
tf.math.multiply_20/MulMul$tf.math.reduce_mean_12/Mean:output:0tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_20/Mul?
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul%leaky_re_lu_8/LeakyRelu:activations:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_13/AddV2?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D!tf.__operators__.add_13/AddV2:z:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_11/BiasAdd?
leaky_re_lu_9/LeakyRelu	LeakyReluconv2d_11/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_9/LeakyRelu?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indices?
tf.math.reduce_mean_14/MeanMean%leaky_re_lu_9/LeakyRelu:activations:06tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_14/Mean?
tf.stop_gradient_7/StopGradientStopGradient$tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2!
tf.stop_gradient_7/StopGradient?
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference%leaky_re_lu_9/LeakyRelu:activations:0(tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@20
.tf.math.squared_difference_7/SquaredDifference?
-tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_15/Mean/reduction_indices?
tf.math.reduce_mean_15/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:06tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_15/Mean{
tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_14/y?
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2?
tf.math.rsqrt_7/RsqrtRsqrt!tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_7/Rsqrt?
tf.math.multiply_21/MulMultf.math.rsqrt_7/Rsqrt:y:0tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_21/Mul?
tf.math.multiply_23/MulMul$tf.math.reduce_mean_14/Mean:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_23/Mul?
tf.math.subtract_7/SubSub	unknown_0tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_7/Sub?
tf.math.multiply_22/MulMul%leaky_re_lu_9/LeakyRelu:activations:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_22/Mul?
tf.__operators__.add_15/AddV2AddV2tf.math.multiply_22/Mul:z:0tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_15/AddV2?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2D!tf.__operators__.add_15/AddV2:z:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_12/BiasAdd?
leaky_re_lu_10/LeakyRelu	LeakyReluconv2d_12/BiasAdd:output:0*0
_output_shapes
:?????????  ?2
leaky_re_lu_10/LeakyRelu?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indices?
tf.math.reduce_mean_16/MeanMean&leaky_re_lu_10/LeakyRelu:activations:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_8/StopGradient?
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference&leaky_re_lu_10/LeakyRelu:activations:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?20
.tf.math.squared_difference_8/SquaredDifference?
-tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_17/Mean/reduction_indices?
tf.math.reduce_mean_17/MeanMean2tf.math.squared_difference_8/SquaredDifference:z:06tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_16/y?
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_16/AddV2?
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_26/Mul?
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul&leaky_re_lu_10/LeakyRelu:activations:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_25/Mul?
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_17/AddV2?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2D!tf.__operators__.add_17/AddV2:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd?
leaky_re_lu_11/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:??????????2
leaky_re_lu_11/LeakyRelu?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indices?
tf.math.reduce_mean_18/MeanMean&leaky_re_lu_11/LeakyRelu:activations:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_9/StopGradient?
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference&leaky_re_lu_11/LeakyRelu:activations:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:??????????20
.tf.math.squared_difference_9/SquaredDifference?
-tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_19/Mean/reduction_indices?
tf.math.reduce_mean_19/MeanMean2tf.math.squared_difference_9/SquaredDifference:z:06tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_18/y?
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_18/AddV2?
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_29/Mul?
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul&leaky_re_lu_11/LeakyRelu:activations:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_28/Mul?
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_19/AddV2{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1?
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul?
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_19/AddV2:z:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????  ?*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_14/Relu?
dropout/IdentityIdentityconv2d_14/Relu:activations:0*
T0*0
_output_shapes
:?????????  ?2
dropout/Identity?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indices?
tf.math.reduce_mean_20/MeanMeandropout/Identity:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifferencedropout/Identity:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_10/SquaredDifference?
-tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_21/Mean/reduction_indices?
tf.math.reduce_mean_21/MeanMean3tf.math.squared_difference_10/SquaredDifference:z:06tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_20/y?
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_20/AddV2?
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_32/Mul?
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_10/Sub?
tf.math.multiply_31/MulMuldropout/Identity:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_21/AddV2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
concatenate/concat
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_1/Const?
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1?
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul?
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????@@?*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_15/Conv2D/ReadVariableOp?
conv2d_15/Conv2DConv2D=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_15/Conv2D?
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp?
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_15/BiasAdd~
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_15/Relu?
dropout_1/IdentityIdentityconv2d_15/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@2
dropout_1/Identity?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indices?
tf.math.reduce_mean_22/MeanMeandropout_1/Identity:output:06tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_22/Mean?
 tf.stop_gradient_11/StopGradientStopGradient$tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_11/StopGradient?
/tf.math.squared_difference_11/SquaredDifferenceSquaredDifferencedropout_1/Identity:output:0)tf.stop_gradient_11/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_11/SquaredDifference?
-tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_23/Mean/reduction_indices?
tf.math.reduce_mean_23/MeanMean3tf.math.squared_difference_11/SquaredDifference:z:06tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_23/Mean{
tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_22/y?
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2?
tf.math.rsqrt_11/RsqrtRsqrt!tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_11/Rsqrt?
tf.math.multiply_33/MulMultf.math.rsqrt_11/Rsqrt:y:0tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_33/Mul?
tf.math.multiply_35/MulMul$tf.math.reduce_mean_22/Mean:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_35/Mul?
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub?
tf.math.multiply_34/MulMuldropout_1/Identity:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_34/Mul?
tf.__operators__.add_23/AddV2AddV2tf.math.multiply_34/Mul:z:0tf.math.subtract_11/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_23/AddV2x
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
concatenate_1/concat
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_2/Const?
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1?
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul?
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2D=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_16/BiasAdd?
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_16/Relu?
dropout_2/IdentityIdentityconv2d_16/Relu:activations:0*
T0*1
_output_shapes
:??????????? 2
dropout_2/Identity?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indices?
tf.math.reduce_mean_24/MeanMeandropout_2/Identity:output:06tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_24/Mean?
 tf.stop_gradient_12/StopGradientStopGradient$tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_12/StopGradient?
/tf.math.squared_difference_12/SquaredDifferenceSquaredDifferencedropout_2/Identity:output:0)tf.stop_gradient_12/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_12/SquaredDifference?
-tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_25/Mean/reduction_indices?
tf.math.reduce_mean_25/MeanMean3tf.math.squared_difference_12/SquaredDifference:z:06tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_25/Mean{
tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_24/y?
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2?
tf.math.rsqrt_12/RsqrtRsqrt!tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_12/Rsqrt?
tf.math.multiply_36/MulMultf.math.rsqrt_12/Rsqrt:y:0tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_36/Mul?
tf.math.multiply_38/MulMul$tf.math.reduce_mean_24/Mean:output:0tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_38/Mul?
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMuldropout_2/Identity:output:0tf.math.multiply_36/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_25/AddV2x
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axis?
concatenate_2/concatConcatV2!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0"concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
concatenate_2/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"?   ?   2
up_sampling2d_3/Const?
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1?
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul?
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:???????????@*
half_pixel_centers(2.
,up_sampling2d_3/resize/ResizeNearestNeighbor?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2D=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_17/BiasAdd?
conv2d_17/TanhTanhconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_17/Tanh?
IdentityIdentityconv2d_17/Tanh:y:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?
?
*__inference_model_2_layer_call_fn_13019188
input_3!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@?
	unknown_8:	?
	unknown_9

unknown_10&

unknown_11:??

unknown_12:	?

unknown_13

unknown_14&

unknown_15:??

unknown_16:	?

unknown_17

unknown_18%

unknown_19:?@

unknown_20:@

unknown_21

unknown_22%

unknown_23:? 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_130190602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?

?
G__inference_conv2d_11_layer_call_and_return_conditional_losses_13020216

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
G__inference_conv2d_17_layer_call_and_return_conditional_losses_13018552

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
i
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_13018214

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_12_layer_call_fn_13020235

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_12_layer_call_and_return_conditional_losses_130183172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13020284

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_layer_call_and_return_conditional_losses_13020331

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,????????????????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,????????????????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_13019609
input_3!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@?
	unknown_8:	?
	unknown_9

unknown_10&

unknown_11:??

unknown_12:	?

unknown_13

unknown_14&

unknown_15:??

unknown_16:	?

unknown_17

unknown_18%

unknown_19:?@

unknown_20:@

unknown_21

unknown_22%

unknown_23:? 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__wrapped_model_130181442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?

?
G__inference_conv2d_13_layer_call_and_return_conditional_losses_13020274

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
u
K__inference_concatenate_2_layer_call_and_return_conditional_losses_13018538

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:+??????????????????????????? :??????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs:YU
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?

?
G__inference_conv2d_12_layer_call_and_return_conditional_losses_13018317

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
f
G__inference_dropout_1_layer_call_and_return_conditional_losses_13018699

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_13018248

inputs
identity^
	LeakyRelu	LeakyReluinputs*1
_output_shapes
:??????????? 2
	LeakyReluu
IdentityIdentityLeakyRelu:activations:0*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
??
?
E__inference_model_2_layer_call_and_return_conditional_losses_13019542
input_3,
conv2d_10_13019368:  
conv2d_10_13019370: 
tf_math_multiply_18_mul_y
unknown,
conv2d_11_13019391: @ 
conv2d_11_13019393:@
tf_math_multiply_21_mul_y
	unknown_0-
conv2d_12_13019414:@?!
conv2d_12_13019416:	?
tf_math_multiply_24_mul_y
	unknown_1.
conv2d_13_13019437:??!
conv2d_13_13019439:	?
tf_math_multiply_27_mul_y
	unknown_2.
conv2d_14_13019461:??!
conv2d_14_13019463:	?
tf_math_multiply_30_mul_y
	unknown_3-
conv2d_15_13019486:?@ 
conv2d_15_13019488:@
tf_math_multiply_33_mul_y
	unknown_4-
conv2d_16_13019511:?  
conv2d_16_13019513: 
tf_math_multiply_36_mul_y
	unknown_5,
conv2d_17_13019536:@ 
conv2d_17_13019538:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_10_13019368conv2d_10_13019370*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_10_layer_call_and_return_conditional_losses_130182372#
!conv2d_10/StatefulPartitionedCall?
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_130182482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indices?
tf.math.reduce_mean_12/MeanMean&leaky_re_lu_8/PartitionedCall:output:06tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_12/Mean?
tf.stop_gradient_6/StopGradientStopGradient$tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2!
tf.stop_gradient_6/StopGradient?
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 20
.tf.math.squared_difference_6/SquaredDifference?
-tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_13/Mean/reduction_indices?
tf.math.reduce_mean_13/MeanMean2tf.math.squared_difference_6/SquaredDifference:z:06tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_13/Mean{
tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_12/y?
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2?
tf.math.rsqrt_6/RsqrtRsqrt!tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_6/Rsqrt?
tf.math.multiply_18/MulMultf.math.rsqrt_6/Rsqrt:y:0tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_18/Mul?
tf.math.multiply_20/MulMul$tf.math.reduce_mean_12/Mean:output:0tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_20/Mul?
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_13/AddV2?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_13019391conv2d_11_13019393*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_11_layer_call_and_return_conditional_losses_130182772#
!conv2d_11/StatefulPartitionedCall?
leaky_re_lu_9/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_130182882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indices?
tf.math.reduce_mean_14/MeanMean&leaky_re_lu_9/PartitionedCall:output:06tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_14/Mean?
tf.stop_gradient_7/StopGradientStopGradient$tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2!
tf.stop_gradient_7/StopGradient?
.tf.math.squared_difference_7/SquaredDifferenceSquaredDifference&leaky_re_lu_9/PartitionedCall:output:0(tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@20
.tf.math.squared_difference_7/SquaredDifference?
-tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_15/Mean/reduction_indices?
tf.math.reduce_mean_15/MeanMean2tf.math.squared_difference_7/SquaredDifference:z:06tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_15/Mean{
tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_14/y?
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2?
tf.math.rsqrt_7/RsqrtRsqrt!tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_7/Rsqrt?
tf.math.multiply_21/MulMultf.math.rsqrt_7/Rsqrt:y:0tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_21/Mul?
tf.math.multiply_23/MulMul$tf.math.reduce_mean_14/Mean:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_23/Mul?
tf.math.subtract_7/SubSub	unknown_0tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_7/Sub?
tf.math.multiply_22/MulMul&leaky_re_lu_9/PartitionedCall:output:0tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_22/Mul?
tf.__operators__.add_15/AddV2AddV2tf.math.multiply_22/Mul:z:0tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_15/AddV2?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_13019414conv2d_12_13019416*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_12_layer_call_and_return_conditional_losses_130183172#
!conv2d_12/StatefulPartitionedCall?
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_130183282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indices?
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_8/StopGradient?
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?20
.tf.math.squared_difference_8/SquaredDifference?
-tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_17/Mean/reduction_indices?
tf.math.reduce_mean_17/MeanMean2tf.math.squared_difference_8/SquaredDifference:z:06tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_16/y?
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_16/AddV2?
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_26/Mul?
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_25/Mul?
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_17/AddV2?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_13019437conv2d_13_13019439*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_130183572#
!conv2d_13/StatefulPartitionedCall?
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_130183682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indices?
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:??????????2!
tf.stop_gradient_9/StopGradient?
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:??????????20
.tf.math.squared_difference_9/SquaredDifference?
-tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_19/Mean/reduction_indices?
tf.math.reduce_mean_19/MeanMean2tf.math.squared_difference_9/SquaredDifference:z:06tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_18/y?
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_18/AddV2?
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_29/Mul?
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_28/Mul?
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_19/AddV2?
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_130181572
up_sampling2d/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_13019461conv2d_14_13019463*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_130183992#
!conv2d_14/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_130187392!
dropout/StatefulPartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indices?
tf.math.reduce_mean_20/MeanMean(dropout/StatefulPartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference(dropout/StatefulPartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_10/SquaredDifference?
-tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_21/Mean/reduction_indices?
tf.math.reduce_mean_21/MeanMean3tf.math.squared_difference_10/SquaredDifference:z:06tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_20/y?
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_20/AddV2?
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_32/Mul?
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_10/Sub?
tf.math.multiply_31/MulMul(dropout/StatefulPartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_130184362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_130181762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_13019486conv2d_15_13019488*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_130184502#
!conv2d_15/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_130186992#
!dropout_1/StatefulPartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indices?
tf.math.reduce_mean_22/MeanMean*dropout_1/StatefulPartitionedCall:output:06tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_22/Mean?
 tf.stop_gradient_11/StopGradientStopGradient$tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_11/StopGradient?
/tf.math.squared_difference_11/SquaredDifferenceSquaredDifference*dropout_1/StatefulPartitionedCall:output:0)tf.stop_gradient_11/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_11/SquaredDifference?
-tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_23/Mean/reduction_indices?
tf.math.reduce_mean_23/MeanMean3tf.math.squared_difference_11/SquaredDifference:z:06tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_23/Mean{
tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_22/y?
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2?
tf.math.rsqrt_11/RsqrtRsqrt!tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_11/Rsqrt?
tf.math.multiply_33/MulMultf.math.rsqrt_11/Rsqrt:y:0tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_33/Mul?
tf.math.multiply_35/MulMul$tf.math.reduce_mean_22/Mean:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_35/Mul?
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub?
tf.math.multiply_34/MulMul*dropout_1/StatefulPartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mul?
tf.__operators__.add_23/AddV2AddV2tf.math.multiply_34/Mul:z:0tf.math.subtract_11/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_23/AddV2?
concatenate_1/PartitionedCallPartitionedCall!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_1_layer_call_and_return_conditional_losses_130184872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_130181952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_13019511conv2d_16_13019513*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_130185012#
!conv2d_16/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_2_layer_call_and_return_conditional_losses_130186592#
!dropout_2/StatefulPartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indices?
tf.math.reduce_mean_24/MeanMean*dropout_2/StatefulPartitionedCall:output:06tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_24/Mean?
 tf.stop_gradient_12/StopGradientStopGradient$tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_12/StopGradient?
/tf.math.squared_difference_12/SquaredDifferenceSquaredDifference*dropout_2/StatefulPartitionedCall:output:0)tf.stop_gradient_12/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_12/SquaredDifference?
-tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_25/Mean/reduction_indices?
tf.math.reduce_mean_25/MeanMean3tf.math.squared_difference_12/SquaredDifference:z:06tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_25/Mean{
tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_24/y?
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2?
tf.math.rsqrt_12/RsqrtRsqrt!tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_12/Rsqrt?
tf.math.multiply_36/MulMultf.math.rsqrt_12/Rsqrt:y:0tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_36/Mul?
tf.math.multiply_38/MulMul$tf.math.reduce_mean_24/Mean:output:0tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_38/Mul?
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMul*dropout_2/StatefulPartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_25/AddV2?
concatenate_2/PartitionedCallPartitionedCall!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_130185382
concatenate_2/PartitionedCall?
up_sampling2d_3/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_130182142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_13019536conv2d_17_13019538*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_130185522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
&
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:-)
'
_output_shapes
:?:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@:,(
&
_output_shapes
: :,(
&
_output_shapes
: 
?
g
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13018288

inputs
identity\
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????@@@2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
M
1__inference_leaky_re_lu_10_layer_call_fn_13020250

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_130183282
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  ?:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
\
0__inference_concatenate_2_layer_call_fn_13020457
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_130185382
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:+??????????????????????????? :??????????? :k g
A
_output_shapes/
-:+??????????????????????????? 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:??????????? 
"
_user_specified_name
inputs/1
?
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_13018461

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
G__inference_conv2d_13_layer_call_and_return_conditional_losses_13018357

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13018368

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_2_layer_call_fn_13018201

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_130181952
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_1_layer_call_fn_13020374

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_130186992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_3:
serving_default_input_3:0???????????G
	conv2d_17:
StatefulPartitionedCall:0???????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-1
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer_with_weights-2
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*layer-41
+layer-42
,layer-43
-layer-44
.layer-45
/layer_with_weights-3
/layer-46
0layer-47
1layer-48
2layer-49
3layer-50
4layer-51
5layer-52
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer-58
<layer-59
=layer-60
>layer-61
?layer_with_weights-4
?layer-62
@layer-63
Alayer-64
Blayer-65
Clayer-66
Dlayer-67
Elayer-68
Flayer-69
Glayer-70
Hlayer-71
Ilayer-72
Jlayer-73
Klayer-74
Llayer-75
Mlayer-76
Nlayer-77
Olayer-78
Player_with_weights-5
Player-79
Qlayer-80
Rlayer-81
Slayer-82
Tlayer-83
Ulayer-84
Vlayer-85
Wlayer-86
Xlayer-87
Ylayer-88
Zlayer-89
[layer-90
\layer-91
]layer-92
^layer-93
_layer-94
`layer-95
alayer_with_weights-6
alayer-96
blayer-97
clayer-98
dlayer-99
e	layer-100
f	layer-101
g	layer-102
h	layer-103
i	layer-104
j	layer-105
k	layer-106
l	layer-107
m	layer-108
n	layer-109
o	layer-110
p	layer-111
q	layer-112
rlayer_with_weights-7
r	layer-113
strainable_variables
t	variables
uregularization_losses
v	keras_api
w
signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network??{"name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_8", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_12", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_12", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_6", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_6", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_6", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_6", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.stop_gradient_6", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_13", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_13", "inbound_nodes": [["tf.math.squared_difference_6", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_12", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_12", "inbound_nodes": [["tf.math.reduce_mean_13", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_6", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_6", "inbound_nodes": [["tf.__operators__.add_12", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_18", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_18", "inbound_nodes": [["tf.math.rsqrt_6", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_20", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_20", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"y": ["tf.math.multiply_18", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_12", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_12", "inbound_nodes": [["tf.math.multiply_18", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_6", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_6", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_20", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_19", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_19", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.cast_12", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_13", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_13", "inbound_nodes": [["tf.math.subtract_6", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_13", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_13", "inbound_nodes": [["tf.math.multiply_19", 0, 0, {"y": ["tf.cast_13", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["tf.__operators__.add_13", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_9", "inbound_nodes": [[["conv2d_11", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_14", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_14", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_7", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_7", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_7", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.stop_gradient_7", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_15", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_15", "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_14", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_14", "inbound_nodes": [["tf.math.reduce_mean_15", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_7", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_7", "inbound_nodes": [["tf.__operators__.add_14", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_21", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_21", "inbound_nodes": [["tf.math.rsqrt_7", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_23", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_23", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"y": ["tf.math.multiply_21", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_14", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_14", "inbound_nodes": [["tf.math.multiply_21", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_7", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_23", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_22", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_22", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.cast_14", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_15", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_15", "inbound_nodes": [["tf.math.subtract_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_15", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_15", "inbound_nodes": [["tf.math.multiply_22", 0, 0, {"y": ["tf.cast_15", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["tf.__operators__.add_15", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_10", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_16", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_16", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_8", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_8", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_8", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_8", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.stop_gradient_8", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_17", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_17", "inbound_nodes": [["tf.math.squared_difference_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_16", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_16", "inbound_nodes": [["tf.math.reduce_mean_17", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_8", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_8", "inbound_nodes": [["tf.__operators__.add_16", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_24", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_24", "inbound_nodes": [["tf.math.rsqrt_8", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_26", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_26", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"y": ["tf.math.multiply_24", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_16", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_16", "inbound_nodes": [["tf.math.multiply_24", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_8", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_8", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_26", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_25", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_25", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.cast_16", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_17", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_17", "inbound_nodes": [["tf.math.subtract_8", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_17", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_17", "inbound_nodes": [["tf.math.multiply_25", 0, 0, {"y": ["tf.cast_17", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["tf.__operators__.add_17", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_11", "inbound_nodes": [[["conv2d_13", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_18", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_18", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_9", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_9", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_9", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_9", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.stop_gradient_9", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_19", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_19", "inbound_nodes": [["tf.math.squared_difference_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_18", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_18", "inbound_nodes": [["tf.math.reduce_mean_19", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_9", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_9", "inbound_nodes": [["tf.__operators__.add_18", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_27", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_27", "inbound_nodes": [["tf.math.rsqrt_9", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_29", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_29", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"y": ["tf.math.multiply_27", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_18", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_18", "inbound_nodes": [["tf.math.multiply_27", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_9", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_9", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_29", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_28", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_28", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.cast_18", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_19", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_19", "inbound_nodes": [["tf.math.subtract_9", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_19", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_19", "inbound_nodes": [["tf.math.multiply_28", 0, 0, {"y": ["tf.cast_19", 0, 0], "name": null}]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d", "inbound_nodes": [[["tf.__operators__.add_19", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["up_sampling2d", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_20", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_20", "inbound_nodes": [["dropout", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_10", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_10", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_10", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_10", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.stop_gradient_10", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_21", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_21", "inbound_nodes": [["tf.math.squared_difference_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_20", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_20", "inbound_nodes": [["tf.math.reduce_mean_21", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_10", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_10", "inbound_nodes": [["tf.__operators__.add_20", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_30", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_30", "inbound_nodes": [["tf.math.rsqrt_10", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_32", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_32", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"y": ["tf.math.multiply_30", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_20", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_20", "inbound_nodes": [["tf.math.multiply_30", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_10", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_10", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_32", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_31", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_31", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.cast_20", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_21", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_21", "inbound_nodes": [["tf.math.subtract_10", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_21", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_21", "inbound_nodes": [["tf.math.multiply_31", 0, 0, {"y": ["tf.cast_21", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["tf.__operators__.add_21", 0, 0, {}], ["tf.__operators__.add_17", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_22", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_22", "inbound_nodes": [["dropout_1", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_11", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_11", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_11", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_11", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.stop_gradient_11", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_23", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_23", "inbound_nodes": [["tf.math.squared_difference_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_22", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_22", "inbound_nodes": [["tf.math.reduce_mean_23", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_11", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_11", "inbound_nodes": [["tf.__operators__.add_22", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_33", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_33", "inbound_nodes": [["tf.math.rsqrt_11", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_35", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_35", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"y": ["tf.math.multiply_33", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_22", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_22", "inbound_nodes": [["tf.math.multiply_33", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_11", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_11", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_35", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_34", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_34", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.cast_22", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_23", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_23", "inbound_nodes": [["tf.math.subtract_11", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_23", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_23", "inbound_nodes": [["tf.math.multiply_34", 0, 0, {"y": ["tf.cast_23", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["tf.__operators__.add_23", 0, 0, {}], ["tf.__operators__.add_15", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["conv2d_16", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_24", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_24", "inbound_nodes": [["dropout_2", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_12", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_12", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_12", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_12", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.stop_gradient_12", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_25", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_25", "inbound_nodes": [["tf.math.squared_difference_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_24", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_24", "inbound_nodes": [["tf.math.reduce_mean_25", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_12", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_12", "inbound_nodes": [["tf.__operators__.add_24", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_36", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_36", "inbound_nodes": [["tf.math.rsqrt_12", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_38", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_38", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"y": ["tf.math.multiply_36", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_24", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_24", "inbound_nodes": [["tf.math.multiply_36", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_12", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_12", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_38", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_37", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_37", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.cast_24", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_25", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_25", "inbound_nodes": [["tf.math.subtract_12", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_25", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_25", "inbound_nodes": [["tf.math.multiply_37", 0, 0, {"y": ["tf.cast_25", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["tf.__operators__.add_25", 0, 0, {}], ["tf.__operators__.add_13", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_3", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["conv2d_17", 0, 0]]}, "shared_object_id": 130, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input_3"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_8", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_12", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_12", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_6", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_6", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"name": null}]], "shared_object_id": 6}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_6", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_6", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.stop_gradient_6", 0, 0], "name": null}]], "shared_object_id": 7}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_13", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_13", "inbound_nodes": [["tf.math.squared_difference_6", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_12", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_12", "inbound_nodes": [["tf.math.reduce_mean_13", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_6", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_6", "inbound_nodes": [["tf.__operators__.add_12", 0, 0, {}]], "shared_object_id": 10}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_18", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_18", "inbound_nodes": [["tf.math.rsqrt_6", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_20", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_20", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"y": ["tf.math.multiply_18", 0, 0], "name": null}]], "shared_object_id": 12}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_12", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_12", "inbound_nodes": [["tf.math.multiply_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_6", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_6", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_20", 0, 0], "name": null}]], "shared_object_id": 14}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_19", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_19", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.cast_12", 0, 0], "name": null}]], "shared_object_id": 15}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_13", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_13", "inbound_nodes": [["tf.math.subtract_6", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_13", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_13", "inbound_nodes": [["tf.math.multiply_19", 0, 0, {"y": ["tf.cast_13", 0, 0], "name": null}]], "shared_object_id": 17}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_9", "inbound_nodes": [[["conv2d_11", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_14", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_14", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_7", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_7", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"name": null}]], "shared_object_id": 23}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_7", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.stop_gradient_7", 0, 0], "name": null}]], "shared_object_id": 24}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_15", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_15", "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_14", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_14", "inbound_nodes": [["tf.math.reduce_mean_15", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_7", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_7", "inbound_nodes": [["tf.__operators__.add_14", 0, 0, {}]], "shared_object_id": 27}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_21", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_21", "inbound_nodes": [["tf.math.rsqrt_7", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_23", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_23", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"y": ["tf.math.multiply_21", 0, 0], "name": null}]], "shared_object_id": 29}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_14", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_14", "inbound_nodes": [["tf.math.multiply_21", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_7", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_23", 0, 0], "name": null}]], "shared_object_id": 31}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_22", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_22", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.cast_14", 0, 0], "name": null}]], "shared_object_id": 32}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_15", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_15", "inbound_nodes": [["tf.math.subtract_7", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_15", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_15", "inbound_nodes": [["tf.math.multiply_22", 0, 0, {"y": ["tf.cast_15", 0, 0], "name": null}]], "shared_object_id": 34}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_10", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]], "shared_object_id": 38}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_16", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_16", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_8", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_8", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"name": null}]], "shared_object_id": 40}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_8", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_8", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.stop_gradient_8", 0, 0], "name": null}]], "shared_object_id": 41}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_17", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_17", "inbound_nodes": [["tf.math.squared_difference_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_16", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_16", "inbound_nodes": [["tf.math.reduce_mean_17", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_8", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_8", "inbound_nodes": [["tf.__operators__.add_16", 0, 0, {}]], "shared_object_id": 44}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_24", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_24", "inbound_nodes": [["tf.math.rsqrt_8", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_26", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_26", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"y": ["tf.math.multiply_24", 0, 0], "name": null}]], "shared_object_id": 46}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_16", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_16", "inbound_nodes": [["tf.math.multiply_24", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_8", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_8", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_26", 0, 0], "name": null}]], "shared_object_id": 48}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_25", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_25", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.cast_16", 0, 0], "name": null}]], "shared_object_id": 49}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_17", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_17", "inbound_nodes": [["tf.math.subtract_8", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_17", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_17", "inbound_nodes": [["tf.math.multiply_25", 0, 0, {"y": ["tf.cast_17", 0, 0], "name": null}]], "shared_object_id": 51}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 54}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_11", "inbound_nodes": [[["conv2d_13", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_18", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_18", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_9", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_9", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"name": null}]], "shared_object_id": 57}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_9", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_9", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.stop_gradient_9", 0, 0], "name": null}]], "shared_object_id": 58}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_19", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_19", "inbound_nodes": [["tf.math.squared_difference_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_18", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_18", "inbound_nodes": [["tf.math.reduce_mean_19", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_9", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_9", "inbound_nodes": [["tf.__operators__.add_18", 0, 0, {}]], "shared_object_id": 61}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_27", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_27", "inbound_nodes": [["tf.math.rsqrt_9", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_29", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_29", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"y": ["tf.math.multiply_27", 0, 0], "name": null}]], "shared_object_id": 63}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_18", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_18", "inbound_nodes": [["tf.math.multiply_27", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_9", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_9", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_29", 0, 0], "name": null}]], "shared_object_id": 65}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_28", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_28", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.cast_18", 0, 0], "name": null}]], "shared_object_id": 66}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_19", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_19", "inbound_nodes": [["tf.math.subtract_9", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_19", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_19", "inbound_nodes": [["tf.math.multiply_28", 0, 0, {"y": ["tf.cast_19", 0, 0], "name": null}]], "shared_object_id": 68}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d", "inbound_nodes": [[["tf.__operators__.add_19", 0, 0, {}]]], "shared_object_id": 69}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["up_sampling2d", 0, 0, {}]]], "shared_object_id": 72}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 73}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_20", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_20", "inbound_nodes": [["dropout", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_10", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_10", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"name": null}]], "shared_object_id": 75}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_10", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_10", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.stop_gradient_10", 0, 0], "name": null}]], "shared_object_id": 76}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_21", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_21", "inbound_nodes": [["tf.math.squared_difference_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_20", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_20", "inbound_nodes": [["tf.math.reduce_mean_21", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_10", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_10", "inbound_nodes": [["tf.__operators__.add_20", 0, 0, {}]], "shared_object_id": 79}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_30", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_30", "inbound_nodes": [["tf.math.rsqrt_10", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_32", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_32", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"y": ["tf.math.multiply_30", 0, 0], "name": null}]], "shared_object_id": 81}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_20", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_20", "inbound_nodes": [["tf.math.multiply_30", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_10", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_10", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_32", 0, 0], "name": null}]], "shared_object_id": 83}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_31", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_31", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.cast_20", 0, 0], "name": null}]], "shared_object_id": 84}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_21", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_21", "inbound_nodes": [["tf.math.subtract_10", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_21", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_21", "inbound_nodes": [["tf.math.multiply_31", 0, 0, {"y": ["tf.cast_21", 0, 0], "name": null}]], "shared_object_id": 86}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["tf.__operators__.add_21", 0, 0, {}], ["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 87}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 88}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}]]], "shared_object_id": 91}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 92}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_22", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_22", "inbound_nodes": [["dropout_1", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_11", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_11", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"name": null}]], "shared_object_id": 94}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_11", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_11", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.stop_gradient_11", 0, 0], "name": null}]], "shared_object_id": 95}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_23", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_23", "inbound_nodes": [["tf.math.squared_difference_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_22", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_22", "inbound_nodes": [["tf.math.reduce_mean_23", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_11", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_11", "inbound_nodes": [["tf.__operators__.add_22", 0, 0, {}]], "shared_object_id": 98}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_33", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_33", "inbound_nodes": [["tf.math.rsqrt_11", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_35", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_35", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"y": ["tf.math.multiply_33", 0, 0], "name": null}]], "shared_object_id": 100}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_22", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_22", "inbound_nodes": [["tf.math.multiply_33", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_11", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_11", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_35", 0, 0], "name": null}]], "shared_object_id": 102}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_34", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_34", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.cast_22", 0, 0], "name": null}]], "shared_object_id": 103}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_23", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_23", "inbound_nodes": [["tf.math.subtract_11", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_23", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_23", "inbound_nodes": [["tf.math.multiply_34", 0, 0, {"y": ["tf.cast_23", 0, 0], "name": null}]], "shared_object_id": 105}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["tf.__operators__.add_23", 0, 0, {}], ["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 106}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 107}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]], "shared_object_id": 110}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["conv2d_16", 0, 0, {}]]], "shared_object_id": 111}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_24", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_24", "inbound_nodes": [["dropout_2", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_12", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_12", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"name": null}]], "shared_object_id": 113}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_12", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_12", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.stop_gradient_12", 0, 0], "name": null}]], "shared_object_id": 114}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_25", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_25", "inbound_nodes": [["tf.math.squared_difference_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_24", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_24", "inbound_nodes": [["tf.math.reduce_mean_25", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_12", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_12", "inbound_nodes": [["tf.__operators__.add_24", 0, 0, {}]], "shared_object_id": 117}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_36", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_36", "inbound_nodes": [["tf.math.rsqrt_12", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_38", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_38", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"y": ["tf.math.multiply_36", 0, 0], "name": null}]], "shared_object_id": 119}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_24", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_24", "inbound_nodes": [["tf.math.multiply_36", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_12", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_12", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_38", 0, 0], "name": null}]], "shared_object_id": 121}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_37", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_37", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.cast_24", 0, 0], "name": null}]], "shared_object_id": 122}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_25", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_25", "inbound_nodes": [["tf.math.subtract_12", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_25", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_25", "inbound_nodes": [["tf.math.multiply_37", 0, 0, {"y": ["tf.cast_25", 0, 0], "name": null}]], "shared_object_id": 124}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["tf.__operators__.add_25", 0, 0, {}], ["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 125}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_3", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 126}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]], "shared_object_id": 129}], "input_layers": [["input_3", 0, 0]], "output_layers": [["conv2d_17", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
?

xkernel
ybias
ztrainable_variables
{	variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 132}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
?
~trainable_variables
	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 4}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_12", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_6", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"name": null}]], "shared_object_id": 6}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_6", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.stop_gradient_6", 0, 0], "name": null}]], "shared_object_id": 7}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_13", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_6", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_12", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_13", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_6", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_12", 0, 0, {}]], "shared_object_id": 10}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_18", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_6", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_20", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"y": ["tf.math.multiply_18", 0, 0], "name": null}]], "shared_object_id": 12}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_12", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_6", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_20", 0, 0], "name": null}]], "shared_object_id": 14}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_19", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.cast_12", 0, 0], "name": null}]], "shared_object_id": 15}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_13", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_6", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_13", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_19", 0, 0, {"y": ["tf.cast_13", 0, 0], "name": null}]], "shared_object_id": 17}
?
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 133}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 32]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_11", 0, 0, {}]]], "shared_object_id": 21}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_14", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_7", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"name": null}]], "shared_object_id": 23}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.stop_gradient_7", 0, 0], "name": null}]], "shared_object_id": 24}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_15", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_14", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_15", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_7", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_14", 0, 0, {}]], "shared_object_id": 27}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_21", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_7", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_23", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"y": ["tf.math.multiply_21", 0, 0], "name": null}]], "shared_object_id": 29}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_14", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_21", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_23", 0, 0], "name": null}]], "shared_object_id": 31}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_22", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.cast_14", 0, 0], "name": null}]], "shared_object_id": 32}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_15", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_7", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_15", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_22", 0, 0, {"y": ["tf.cast_15", 0, 0], "name": null}]], "shared_object_id": 34}
?
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 134}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_12", 0, 0, {}]]], "shared_object_id": 38}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_16", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_8", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"name": null}]], "shared_object_id": 40}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_8", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.stop_gradient_8", 0, 0], "name": null}]], "shared_object_id": 41}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_17", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_16", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_17", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_8", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_16", 0, 0, {}]], "shared_object_id": 44}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_24", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_8", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_26", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"y": ["tf.math.multiply_24", 0, 0], "name": null}]], "shared_object_id": 46}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_16", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_24", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_8", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_26", 0, 0], "name": null}]], "shared_object_id": 48}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_25", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.cast_16", 0, 0], "name": null}]], "shared_object_id": 49}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_17", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_8", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_17", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_25", 0, 0, {"y": ["tf.cast_17", 0, 0], "name": null}]], "shared_object_id": 51}
?
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 135}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_13", 0, 0, {}]]], "shared_object_id": 55}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_18", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_9", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"name": null}]], "shared_object_id": 57}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_9", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.stop_gradient_9", 0, 0], "name": null}]], "shared_object_id": 58}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_19", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_18", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_19", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_9", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_18", 0, 0, {}]], "shared_object_id": 61}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_27", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_9", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_29", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"y": ["tf.math.multiply_27", 0, 0], "name": null}]], "shared_object_id": 63}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_18", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_27", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_9", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_29", 0, 0], "name": null}]], "shared_object_id": 65}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_28", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.cast_18", 0, 0], "name": null}]], "shared_object_id": 66}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_19", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_9", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_19", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_28", 0, 0, {"y": ["tf.cast_19", 0, 0], "name": null}]], "shared_object_id": 68}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["tf.__operators__.add_19", 0, 0, {}]]], "shared_object_id": 69, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 136}}
?
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d", 0, 0, {}]]], "shared_object_id": 72, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 137}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 256]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 73}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_20", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_10", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"name": null}]], "shared_object_id": 75}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_10", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.stop_gradient_10", 0, 0], "name": null}]], "shared_object_id": 76}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_21", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_20", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_21", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_10", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_20", 0, 0, {}]], "shared_object_id": 79}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_30", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_10", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_32", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"y": ["tf.math.multiply_30", 0, 0], "name": null}]], "shared_object_id": 81}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_20", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_30", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_10", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_32", 0, 0], "name": null}]], "shared_object_id": 83}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_31", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.cast_20", 0, 0], "name": null}]], "shared_object_id": 84}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_21", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_10", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_21", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_31", 0, 0, {"y": ["tf.cast_21", 0, 0], "name": null}]], "shared_object_id": 86}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_21", 0, 0, {}], ["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 87, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 128]}, {"class_name": "TensorShape", "items": [null, 32, 32, 128]}]}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 88, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 138}}
?
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}]]], "shared_object_id": 91, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 139}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 92}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_22", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_1", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_11", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"name": null}]], "shared_object_id": 94}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_11", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.stop_gradient_11", 0, 0], "name": null}]], "shared_object_id": 95}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_23", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_22", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_23", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_11", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_22", 0, 0, {}]], "shared_object_id": 98}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_33", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_11", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_35", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"y": ["tf.math.multiply_33", 0, 0], "name": null}]], "shared_object_id": 100}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_22", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_33", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_11", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_35", 0, 0], "name": null}]], "shared_object_id": 102}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_34", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.cast_22", 0, 0], "name": null}]], "shared_object_id": 103}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_23", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_11", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_23", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_34", 0, 0, {"y": ["tf.cast_23", 0, 0], "name": null}]], "shared_object_id": 105}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_23", 0, 0, {}], ["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 106, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 64, 64, 64]}, {"class_name": "TensorShape", "items": [null, 64, 64, 64]}]}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 107, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 140}}
?
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]], "shared_object_id": 110, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 141}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_16", 0, 0, {}]]], "shared_object_id": 111}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_24", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_2", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_12", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"name": null}]], "shared_object_id": 113}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_12", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.stop_gradient_12", 0, 0], "name": null}]], "shared_object_id": 114}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_25", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_24", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_25", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_12", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_24", 0, 0, {}]], "shared_object_id": 117}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_36", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_12", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_38", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"y": ["tf.math.multiply_36", 0, 0], "name": null}]], "shared_object_id": 119}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_24", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_36", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_12", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_38", 0, 0], "name": null}]], "shared_object_id": 121}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_37", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.cast_24", 0, 0], "name": null}]], "shared_object_id": 122}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_25", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_12", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_25", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_37", 0, 0, {"y": ["tf.cast_25", 0, 0], "name": null}]], "shared_object_id": 124}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_25", 0, 0, {}], ["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 125, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 128, 32]}, {"class_name": "TensorShape", "items": [null, 128, 128, 32]}]}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 126, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 142}}
?
?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]], "shared_object_id": 129, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 143}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 64]}}
?
x0
y1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15"
trackable_list_wrapper
?
x0
y1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
strainable_variables
?non_trainable_variables
?layer_metrics
?layers
t	variables
uregularization_losses
?metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_10/kernel
: 2conv2d_10/bias
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
ztrainable_variables
?non_trainable_variables
?layer_metrics
?layers
{	variables
|regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
~trainable_variables
?non_trainable_variables
?layer_metrics
?layers
	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
*:( @2conv2d_11/kernel
:@2conv2d_11/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
+:)@?2conv2d_12/kernel
:?2conv2d_12/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
,:*??2conv2d_13/kernel
:?2conv2d_13/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_14/kernel
:?2conv2d_14/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)?@2conv2d_15/kernel
:@2conv2d_15/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)? 2conv2d_16/kernel
: 2conv2d_16/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@2conv2d_17/kernel
:2conv2d_17/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58
<59
=60
>61
?62
@63
A64
B65
C66
D67
E68
F69
G70
H71
I72
J73
K74
L75
M76
N77
O78
P79
Q80
R81
S82
T83
U84
V85
W86
X87
Y88
Z89
[90
\91
]92
^93
_94
`95
a96
b97
c98
d99
e100
f101
g102
h103
i104
j105
k106
l107
m108
n109
o110
p111
q112
r113"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
#__inference__wrapped_model_13018144?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
input_3???????????
?2?
*__inference_model_2_layer_call_fn_13018622
*__inference_model_2_layer_call_fn_13019674
*__inference_model_2_layer_call_fn_13019739
*__inference_model_2_layer_call_fn_13019188?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_2_layer_call_and_return_conditional_losses_13019943
E__inference_model_2_layer_call_and_return_conditional_losses_13020168
E__inference_model_2_layer_call_and_return_conditional_losses_13019365
E__inference_model_2_layer_call_and_return_conditional_losses_13019542?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_conv2d_10_layer_call_fn_13020177?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_10_layer_call_and_return_conditional_losses_13020187?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_leaky_re_lu_8_layer_call_fn_13020192?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_13020197?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv2d_11_layer_call_fn_13020206?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_11_layer_call_and_return_conditional_losses_13020216?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_leaky_re_lu_9_layer_call_fn_13020221?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13020226?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv2d_12_layer_call_fn_13020235?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_12_layer_call_and_return_conditional_losses_13020245?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_leaky_re_lu_10_layer_call_fn_13020250?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13020255?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv2d_13_layer_call_fn_13020264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_13_layer_call_and_return_conditional_losses_13020274?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_leaky_re_lu_11_layer_call_fn_13020279?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13020284?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_up_sampling2d_layer_call_fn_13018163?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_13018157?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_conv2d_14_layer_call_fn_13020293?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_14_layer_call_and_return_conditional_losses_13020304?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_layer_call_fn_13020309
*__inference_dropout_layer_call_fn_13020314?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_layer_call_and_return_conditional_losses_13020319
E__inference_dropout_layer_call_and_return_conditional_losses_13020331?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_concatenate_layer_call_fn_13020337?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_layer_call_and_return_conditional_losses_13020344?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_up_sampling2d_1_layer_call_fn_13018182?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13018176?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_conv2d_15_layer_call_fn_13020353?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_15_layer_call_and_return_conditional_losses_13020364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_1_layer_call_fn_13020369
,__inference_dropout_1_layer_call_fn_13020374?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_1_layer_call_and_return_conditional_losses_13020379
G__inference_dropout_1_layer_call_and_return_conditional_losses_13020391?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_concatenate_1_layer_call_fn_13020397?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_concatenate_1_layer_call_and_return_conditional_losses_13020404?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_up_sampling2d_2_layer_call_fn_13018201?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13018195?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_conv2d_16_layer_call_fn_13020413?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_16_layer_call_and_return_conditional_losses_13020424?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_2_layer_call_fn_13020429
,__inference_dropout_2_layer_call_fn_13020434?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_2_layer_call_and_return_conditional_losses_13020439
G__inference_dropout_2_layer_call_and_return_conditional_losses_13020451?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_concatenate_2_layer_call_fn_13020457?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_concatenate_2_layer_call_and_return_conditional_losses_13020464?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_up_sampling2d_3_layer_call_fn_13018220?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_13018214?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_conv2d_17_layer_call_fn_13020473?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_17_layer_call_and_return_conditional_losses_13020484?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_13019609input_3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13?
#__inference__wrapped_model_13018144?:xy????????????????????????????:?7
0?-
+?(
input_3???????????
? "??<
:
	conv2d_17-?*
	conv2d_17????????????
K__inference_concatenate_1_layer_call_and_return_conditional_losses_13020404?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????@@@
? ".?+
$?!
0?????????@@?
? ?
0__inference_concatenate_1_layer_call_fn_13020397?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????@@@
? "!??????????@@??
K__inference_concatenate_2_layer_call_and_return_conditional_losses_13020464?~?{
t?q
o?l
<?9
inputs/0+??????????????????????????? 
,?)
inputs/1??????????? 
? "/?,
%?"
0???????????@
? ?
0__inference_concatenate_2_layer_call_fn_13020457?~?{
t?q
o?l
<?9
inputs/0+??????????????????????????? 
,?)
inputs/1??????????? 
? ""????????????@?
I__inference_concatenate_layer_call_and_return_conditional_losses_13020344?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1?????????  ?
? ".?+
$?!
0?????????  ?
? ?
.__inference_concatenate_layer_call_fn_13020337?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1?????????  ?
? "!??????????  ??
G__inference_conv2d_10_layer_call_and_return_conditional_losses_13020187pxy9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
,__inference_conv2d_10_layer_call_fn_13020177cxy9?6
/?,
*?'
inputs???????????
? ""???????????? ?
G__inference_conv2d_11_layer_call_and_return_conditional_losses_13020216p??9?6
/?,
*?'
inputs??????????? 
? "-?*
#? 
0?????????@@@
? ?
,__inference_conv2d_11_layer_call_fn_13020206c??9?6
/?,
*?'
inputs??????????? 
? " ??????????@@@?
G__inference_conv2d_12_layer_call_and_return_conditional_losses_13020245o??7?4
-?*
(?%
inputs?????????@@@
? ".?+
$?!
0?????????  ?
? ?
,__inference_conv2d_12_layer_call_fn_13020235b??7?4
-?*
(?%
inputs?????????@@@
? "!??????????  ??
G__inference_conv2d_13_layer_call_and_return_conditional_losses_13020274p??8?5
.?+
)?&
inputs?????????  ?
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_13_layer_call_fn_13020264c??8?5
.?+
)?&
inputs?????????  ?
? "!????????????
G__inference_conv2d_14_layer_call_and_return_conditional_losses_13020304???J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
,__inference_conv2d_14_layer_call_fn_13020293???J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
G__inference_conv2d_15_layer_call_and_return_conditional_losses_13020364???J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
,__inference_conv2d_15_layer_call_fn_13020353???J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
G__inference_conv2d_16_layer_call_and_return_conditional_losses_13020424???J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+??????????????????????????? 
? ?
,__inference_conv2d_16_layer_call_fn_13020413???J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+??????????????????????????? ?
G__inference_conv2d_17_layer_call_and_return_conditional_losses_13020484???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
,__inference_conv2d_17_layer_call_fn_13020473???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
G__inference_dropout_1_layer_call_and_return_conditional_losses_13020379?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
G__inference_dropout_1_layer_call_and_return_conditional_losses_13020391?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
,__inference_dropout_1_layer_call_fn_13020369?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
,__inference_dropout_1_layer_call_fn_13020374?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
G__inference_dropout_2_layer_call_and_return_conditional_losses_13020439?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
G__inference_dropout_2_layer_call_and_return_conditional_losses_13020451?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
,__inference_dropout_2_layer_call_fn_13020429?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
,__inference_dropout_2_layer_call_fn_13020434?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
E__inference_dropout_layer_call_and_return_conditional_losses_13020319?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
E__inference_dropout_layer_call_and_return_conditional_losses_13020331?N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
*__inference_dropout_layer_call_fn_13020309?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
*__inference_dropout_layer_call_fn_13020314?N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
L__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_13020255j8?5
.?+
)?&
inputs?????????  ?
? ".?+
$?!
0?????????  ?
? ?
1__inference_leaky_re_lu_10_layer_call_fn_13020250]8?5
.?+
)?&
inputs?????????  ?
? "!??????????  ??
L__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_13020284j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_leaky_re_lu_11_layer_call_fn_13020279]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_13020197l9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0??????????? 
? ?
0__inference_leaky_re_lu_8_layer_call_fn_13020192_9?6
/?,
*?'
inputs??????????? 
? ""???????????? ?
K__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_13020226h7?4
-?*
(?%
inputs?????????@@@
? "-?*
#? 
0?????????@@@
? ?
0__inference_leaky_re_lu_9_layer_call_fn_13020221[7?4
-?*
(?%
inputs?????????@@@
? " ??????????@@@?
E__inference_model_2_layer_call_and_return_conditional_losses_13019365?:xy????????????????????????????B??
8?5
+?(
input_3???????????
p 

 
? "??<
5?2
0+???????????????????????????
? ?
E__inference_model_2_layer_call_and_return_conditional_losses_13019542?:xy????????????????????????????B??
8?5
+?(
input_3???????????
p

 
? "??<
5?2
0+???????????????????????????
? ?
E__inference_model_2_layer_call_and_return_conditional_losses_13019943?:xy????????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
E__inference_model_2_layer_call_and_return_conditional_losses_13020168?:xy????????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
*__inference_model_2_layer_call_fn_13018622?:xy????????????????????????????B??
8?5
+?(
input_3???????????
p 

 
? "2?/+????????????????????????????
*__inference_model_2_layer_call_fn_13019188?:xy????????????????????????????B??
8?5
+?(
input_3???????????
p

 
? "2?/+????????????????????????????
*__inference_model_2_layer_call_fn_13019674?:xy????????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "2?/+????????????????????????????
*__inference_model_2_layer_call_fn_13019739?:xy????????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "2?/+????????????????????????????
&__inference_signature_wrapper_13019609?:xy????????????????????????????E?B
? 
;?8
6
input_3+?(
input_3???????????"??<
:
	conv2d_17-?*
	conv2d_17????????????
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_13018176?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_1_layer_call_fn_13018182?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_13018195?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_2_layer_call_fn_13018201?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_13018214?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_3_layer_call_fn_13018220?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_13018157?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_up_sampling2d_layer_call_fn_13018163?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????