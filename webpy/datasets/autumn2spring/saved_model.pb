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
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
: *
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
: *
dtype0
?
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:@*
dtype0
?
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_20/kernel
~
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_20/bias
n
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes	
:?*
dtype0
?
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_21/kernel

$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_21/bias
n
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes	
:?*
dtype0
?
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_22/kernel

$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_22/bias
n
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes	
:?*
dtype0
?
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_23/kernel
~
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:@*
dtype0
?
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *!
shared_nameconv2d_24/kernel
~
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*'
_output_shapes
:? *
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
: *
dtype0
?
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
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
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w
signatures
 
h

xkernel
ybias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
T
~	variables
trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
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
?layer_metrics
?layers
?metrics
s	variables
?non_trainable_variables
ttrainable_variables
uregularization_losses
 
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

x0
y1

x0
y1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
z	variables
?non_trainable_variables
{trainable_variables
|regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
~	variables
?non_trainable_variables
trainable_variables
?regularization_losses
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
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
\Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
\Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
\Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
 
?
serving_default_input_4Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4conv2d_18/kernelconv2d_18/biasConstConst_1conv2d_19/kernelconv2d_19/biasConst_2Const_3conv2d_20/kernelconv2d_20/biasConst_4Const_5conv2d_21/kernelconv2d_21/biasConst_6Const_7conv2d_22/kernelconv2d_22/biasConst_8Const_9conv2d_23/kernelconv2d_23/biasConst_10Const_11conv2d_24/kernelconv2d_24/biasConst_12Const_13conv2d_25/kernelconv2d_25/bias**
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
GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_8737176
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOpConst_14*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_8738136
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasconv2d_25/kernelconv2d_25/bias*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_8738194??
?
e
F__inference_dropout_4_layer_call_and_return_conditional_losses_8737958

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
?
G
+__inference_dropout_5_layer_call_fn_8737996

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_87360792
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
e
F__inference_dropout_4_layer_call_and_return_conditional_losses_8736266

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
?G
?

#__inference__traced_restore_8738194
file_prefix;
!assignvariableop_conv2d_18_kernel: /
!assignvariableop_1_conv2d_18_bias: =
#assignvariableop_2_conv2d_19_kernel: @/
!assignvariableop_3_conv2d_19_bias:@>
#assignvariableop_4_conv2d_20_kernel:@?0
!assignvariableop_5_conv2d_20_bias:	??
#assignvariableop_6_conv2d_21_kernel:??0
!assignvariableop_7_conv2d_21_bias:	??
#assignvariableop_8_conv2d_22_kernel:??0
!assignvariableop_9_conv2d_22_bias:	??
$assignvariableop_10_conv2d_23_kernel:?@0
"assignvariableop_11_conv2d_23_bias:@?
$assignvariableop_12_conv2d_24_kernel:? 0
"assignvariableop_13_conv2d_24_bias: >
$assignvariableop_14_conv2d_25_kernel:@0
"assignvariableop_15_conv2d_25_bias:
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_19_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_20_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_20_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_21_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_21_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_22_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_22_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_23_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_23_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_24_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_24_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_25_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_25_biasIdentity_15:output:0"/device:CPU:0*
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
?
[
/__inference_concatenate_5_layer_call_fn_8738024
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_87361052
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
?
?
+__inference_conv2d_24_layer_call_fn_8737980

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_87360682
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
?
d
+__inference_dropout_3_layer_call_fn_8737881

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_87363062
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
?
?
+__inference_conv2d_25_layer_call_fn_8738040

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_87361192
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
?

?
F__inference_conv2d_21_layer_call_and_return_conditional_losses_8735924

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
d
F__inference_dropout_5_layer_call_and_return_conditional_losses_8738006

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
e
F__inference_dropout_5_layer_call_and_return_conditional_losses_8736226

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
?
?
)__inference_model_3_layer_call_fn_8737306

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
GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_87366272
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
?
F__inference_conv2d_25_layer_call_and_return_conditional_losses_8738051

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

?
F__inference_conv2d_18_layer_call_and_return_conditional_losses_8735804

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
?
?
F__inference_conv2d_22_layer_call_and_return_conditional_losses_8735966

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
?
t
J__inference_concatenate_3_layer_call_and_return_conditional_losses_8736003

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
?
?
+__inference_conv2d_20_layer_call_fn_8737802

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_87358842
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
?
?
+__inference_conv2d_19_layer_call_fn_8737773

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_87358442
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
?
?
)__inference_model_3_layer_call_fn_8736189
input_4!
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
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_87361262
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
_user_specified_name	input_4:,(
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
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_8735895

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
?
?
%__inference_signature_wrapper_8737176
input_4!
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
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_87357112
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
_user_specified_name	input_4:,(
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
ڮ
?
D__inference_model_3_layer_call_and_return_conditional_losses_8737735

inputsB
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: 
tf_math_multiply_39_mul_y
unknownB
(conv2d_19_conv2d_readvariableop_resource: @7
)conv2d_19_biasadd_readvariableop_resource:@
tf_math_multiply_42_mul_y
	unknown_0C
(conv2d_20_conv2d_readvariableop_resource:@?8
)conv2d_20_biasadd_readvariableop_resource:	?
tf_math_multiply_45_mul_y
	unknown_1D
(conv2d_21_conv2d_readvariableop_resource:??8
)conv2d_21_biasadd_readvariableop_resource:	?
tf_math_multiply_48_mul_y
	unknown_2D
(conv2d_22_conv2d_readvariableop_resource:??8
)conv2d_22_biasadd_readvariableop_resource:	?
tf_math_multiply_51_mul_y
	unknown_3C
(conv2d_23_conv2d_readvariableop_resource:?@7
)conv2d_23_biasadd_readvariableop_resource:@
tf_math_multiply_54_mul_y
	unknown_4C
(conv2d_24_conv2d_readvariableop_resource:? 7
)conv2d_24_biasadd_readvariableop_resource: 
tf_math_multiply_57_mul_y
	unknown_5B
(conv2d_25_conv2d_readvariableop_resource:@7
)conv2d_25_biasadd_readvariableop_resource:
identity?? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_18/BiasAdd?
leaky_re_lu_12/LeakyRelu	LeakyReluconv2d_18/BiasAdd:output:0*1
_output_shapes
:??????????? 2
leaky_re_lu_12/LeakyRelu?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indices?
tf.math.reduce_mean_26/MeanMean&leaky_re_lu_12/LeakyRelu:activations:06tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_26/Mean?
 tf.stop_gradient_13/StopGradientStopGradient$tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_13/StopGradient?
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference&leaky_re_lu_12/LeakyRelu:activations:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_13/SquaredDifference?
-tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_27/Mean/reduction_indices?
tf.math.reduce_mean_27/MeanMean3tf.math.squared_difference_13/SquaredDifference:z:06tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_27/Mean{
tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_26/y?
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2?
tf.math.rsqrt_13/RsqrtRsqrt!tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_13/Rsqrt?
tf.math.multiply_39/MulMultf.math.rsqrt_13/Rsqrt:y:0tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_39/Mul?
tf.math.multiply_41/MulMul$tf.math.reduce_mean_26/Mean:output:0tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_41/Mul?
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul&leaky_re_lu_12/LeakyRelu:activations:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_27/AddV2?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_19/Conv2D/ReadVariableOp?
conv2d_19/Conv2DConv2D!tf.__operators__.add_27/AddV2:z:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_19/Conv2D?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_19/BiasAdd?
leaky_re_lu_13/LeakyRelu	LeakyReluconv2d_19/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_13/LeakyRelu?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indices?
tf.math.reduce_mean_28/MeanMean&leaky_re_lu_13/LeakyRelu:activations:06tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_28/Mean?
 tf.stop_gradient_14/StopGradientStopGradient$tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_14/StopGradient?
/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference&leaky_re_lu_13/LeakyRelu:activations:0)tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_14/SquaredDifference?
-tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_29/Mean/reduction_indices?
tf.math.reduce_mean_29/MeanMean3tf.math.squared_difference_14/SquaredDifference:z:06tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_29/Mean{
tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_28/y?
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2?
tf.math.rsqrt_14/RsqrtRsqrt!tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_14/Rsqrt?
tf.math.multiply_42/MulMultf.math.rsqrt_14/Rsqrt:y:0tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_42/Mul?
tf.math.multiply_44/MulMul$tf.math.reduce_mean_28/Mean:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_44/Mul?
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul&leaky_re_lu_13/LeakyRelu:activations:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul?
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2D!tf.__operators__.add_29/AddV2:z:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_20/BiasAdd?
leaky_re_lu_14/LeakyRelu	LeakyReluconv2d_20/BiasAdd:output:0*0
_output_shapes
:?????????  ?2
leaky_re_lu_14/LeakyRelu?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indices?
tf.math.reduce_mean_30/MeanMean&leaky_re_lu_14/LeakyRelu:activations:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_15/StopGradient?
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference&leaky_re_lu_14/LeakyRelu:activations:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_15/SquaredDifference?
-tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_31/Mean/reduction_indices?
tf.math.reduce_mean_31/MeanMean3tf.math.squared_difference_15/SquaredDifference:z:06tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_30/y?
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_30/AddV2?
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_47/Mul?
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul&leaky_re_lu_14/LeakyRelu:activations:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_31/AddV2?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D!tf.__operators__.add_31/AddV2:z:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_21/BiasAdd?
leaky_re_lu_15/LeakyRelu	LeakyReluconv2d_21/BiasAdd:output:0*0
_output_shapes
:??????????2
leaky_re_lu_15/LeakyRelu?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indices?
tf.math.reduce_mean_32/MeanMean&leaky_re_lu_15/LeakyRelu:activations:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_16/StopGradient?
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference&leaky_re_lu_15/LeakyRelu:activations:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:??????????21
/tf.math.squared_difference_16/SquaredDifference?
-tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_33/Mean/reduction_indices?
tf.math.reduce_mean_33/MeanMean3tf.math.squared_difference_16/SquaredDifference:z:06tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_32/y?
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_32/AddV2?
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_50/Mul?
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul&leaky_re_lu_15/LeakyRelu:activations:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_33/AddV2
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const?
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const_1?
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_4/mul?
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_33/AddV2:z:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????  ?*
half_pixel_centers(2.
,up_sampling2d_4/resize/ResizeNearestNeighbor?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2D=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_22/BiasAdd
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_22/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/dropout/Const?
dropout_3/dropout/MulMulconv2d_22/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:?????????  ?2
dropout_3/dropout/Mul~
dropout_3/dropout/ShapeShapeconv2d_22/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????  ?*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????  ?2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????  ?2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????  ?2
dropout_3/dropout/Mul_1?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indices?
tf.math.reduce_mean_34/MeanMeandropout_3/dropout/Mul_1:z:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifferencedropout_3/dropout/Mul_1:z:0)tf.stop_gradient_17/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_17/SquaredDifference?
-tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_35/Mean/reduction_indices?
tf.math.reduce_mean_35/MeanMean3tf.math.squared_difference_17/SquaredDifference:z:06tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_34/y?
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_34/AddV2?
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_53/Mul?
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMuldropout_3/dropout/Mul_1:z:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_35/AddV2x
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
concatenate_3/concat
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_5/Const?
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/Const_1?
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_5/mul?
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:?????????@@?*
half_pixel_centers(2.
,up_sampling2d_5/resize/ResizeNearestNeighbor?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_23/Conv2D/ReadVariableOp?
conv2d_23/Conv2DConv2D=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_23/Conv2D?
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp?
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_23/BiasAdd~
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_23/Reluw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/dropout/Const?
dropout_4/dropout/MulMulconv2d_23/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@@2
dropout_4/dropout/Mul~
dropout_4/dropout/ShapeShapeconv2d_23/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@@*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform?
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_4/dropout/GreaterEqual/y?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@@2 
dropout_4/dropout/GreaterEqual?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@@2
dropout_4/dropout/Cast?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@@2
dropout_4/dropout/Mul_1?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indices?
tf.math.reduce_mean_36/MeanMeandropout_4/dropout/Mul_1:z:06tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_36/Mean?
 tf.stop_gradient_18/StopGradientStopGradient$tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_18/StopGradient?
/tf.math.squared_difference_18/SquaredDifferenceSquaredDifferencedropout_4/dropout/Mul_1:z:0)tf.stop_gradient_18/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_18/SquaredDifference?
-tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_37/Mean/reduction_indices?
tf.math.reduce_mean_37/MeanMean3tf.math.squared_difference_18/SquaredDifference:z:06tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_37/Mean{
tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_36/y?
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2?
tf.math.rsqrt_18/RsqrtRsqrt!tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_18/Rsqrt?
tf.math.multiply_54/MulMultf.math.rsqrt_18/Rsqrt:y:0tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_54/Mul?
tf.math.multiply_56/MulMul$tf.math.reduce_mean_36/Mean:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_56/Mul?
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub?
tf.math.multiply_55/MulMuldropout_4/dropout/Mul_1:z:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_55/Mul?
tf.__operators__.add_37/AddV2AddV2tf.math.multiply_55/Mul:z:0tf.math.subtract_18/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_37/AddV2x
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_4/concat/axis?
concatenate_4/concatConcatV2!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0"concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
concatenate_4/concat
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_6/Const?
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_6/Const_1?
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_6/mul?
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_4/concat:output:0up_sampling2d_6/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(2.
,up_sampling2d_6/resize/ResizeNearestNeighbor?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2D=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_24/Conv2D?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_24/BiasAdd?
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_24/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/dropout/Const?
dropout_5/dropout/MulMulconv2d_24/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*1
_output_shapes
:??????????? 2
dropout_5/dropout/Mul~
dropout_5/dropout/ShapeShapeconv2d_24/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*1
_output_shapes
:??????????? *
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:??????????? 2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:??????????? 2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*1
_output_shapes
:??????????? 2
dropout_5/dropout/Mul_1?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indices?
tf.math.reduce_mean_38/MeanMeandropout_5/dropout/Mul_1:z:06tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_38/Mean?
 tf.stop_gradient_19/StopGradientStopGradient$tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_19/StopGradient?
/tf.math.squared_difference_19/SquaredDifferenceSquaredDifferencedropout_5/dropout/Mul_1:z:0)tf.stop_gradient_19/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_19/SquaredDifference?
-tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_39/Mean/reduction_indices?
tf.math.reduce_mean_39/MeanMean3tf.math.squared_difference_19/SquaredDifference:z:06tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_39/Mean{
tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_38/y?
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2?
tf.math.rsqrt_19/RsqrtRsqrt!tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_19/Rsqrt?
tf.math.multiply_57/MulMultf.math.rsqrt_19/Rsqrt:y:0tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_57/Mul?
tf.math.multiply_59/MulMul$tf.math.reduce_mean_38/Mean:output:0tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_59/Mul?
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMuldropout_5/dropout/Mul_1:z:0tf.math.multiply_57/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_39/AddV2x
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_5/concat/axis?
concatenate_5/concatConcatV2!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0"concatenate_5/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
concatenate_5/concat
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"?   ?   2
up_sampling2d_7/Const?
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const_1?
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_7/mul?
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_5/concat:output:0up_sampling2d_7/mul:z:0*
T0*1
_output_shapes
:???????????@*
half_pixel_centers(2.
,up_sampling2d_7/resize/ResizeNearestNeighbor?
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_25/Conv2D/ReadVariableOp?
conv2d_25/Conv2DConv2D=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_25/Conv2D?
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp?
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_25/BiasAdd?
conv2d_25/TanhTanhconv2d_25/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_25/Tanh?
IdentityIdentityconv2d_25/Tanh:y:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp:Y U
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
F__inference_conv2d_20_layer_call_and_return_conditional_losses_8735884

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

?
F__inference_conv2d_21_layer_call_and_return_conditional_losses_8737841

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
?

?
F__inference_conv2d_20_layer_call_and_return_conditional_losses_8737812

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
?
?
+__inference_conv2d_21_layer_call_fn_8737831

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_87359242
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
?
?
F__inference_conv2d_23_layer_call_and_return_conditional_losses_8736017

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
d
F__inference_dropout_4_layer_call_and_return_conditional_losses_8736028

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

?
F__inference_conv2d_19_layer_call_and_return_conditional_losses_8737783

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
??
?

D__inference_model_3_layer_call_and_return_conditional_losses_8736932
input_4+
conv2d_18_8736758: 
conv2d_18_8736760: 
tf_math_multiply_39_mul_y
unknown+
conv2d_19_8736781: @
conv2d_19_8736783:@
tf_math_multiply_42_mul_y
	unknown_0,
conv2d_20_8736804:@? 
conv2d_20_8736806:	?
tf_math_multiply_45_mul_y
	unknown_1-
conv2d_21_8736827:?? 
conv2d_21_8736829:	?
tf_math_multiply_48_mul_y
	unknown_2-
conv2d_22_8736851:?? 
conv2d_22_8736853:	?
tf_math_multiply_51_mul_y
	unknown_3,
conv2d_23_8736876:?@
conv2d_23_8736878:@
tf_math_multiply_54_mul_y
	unknown_4,
conv2d_24_8736901:? 
conv2d_24_8736903: 
tf_math_multiply_57_mul_y
	unknown_5+
conv2d_25_8736926:@
conv2d_25_8736928:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_18_8736758conv2d_18_8736760*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_87358042#
!conv2d_18/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_87358152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indices?
tf.math.reduce_mean_26/MeanMean'leaky_re_lu_12/PartitionedCall:output:06tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_26/Mean?
 tf.stop_gradient_13/StopGradientStopGradient$tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_13/StopGradient?
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_13/SquaredDifference?
-tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_27/Mean/reduction_indices?
tf.math.reduce_mean_27/MeanMean3tf.math.squared_difference_13/SquaredDifference:z:06tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_27/Mean{
tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_26/y?
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2?
tf.math.rsqrt_13/RsqrtRsqrt!tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_13/Rsqrt?
tf.math.multiply_39/MulMultf.math.rsqrt_13/Rsqrt:y:0tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_39/Mul?
tf.math.multiply_41/MulMul$tf.math.reduce_mean_26/Mean:output:0tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_41/Mul?
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_27/AddV2?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_8736781conv2d_19_8736783*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_87358442#
!conv2d_19/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_87358552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indices?
tf.math.reduce_mean_28/MeanMean'leaky_re_lu_13/PartitionedCall:output:06tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_28/Mean?
 tf.stop_gradient_14/StopGradientStopGradient$tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_14/StopGradient?
/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference'leaky_re_lu_13/PartitionedCall:output:0)tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_14/SquaredDifference?
-tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_29/Mean/reduction_indices?
tf.math.reduce_mean_29/MeanMean3tf.math.squared_difference_14/SquaredDifference:z:06tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_29/Mean{
tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_28/y?
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2?
tf.math.rsqrt_14/RsqrtRsqrt!tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_14/Rsqrt?
tf.math.multiply_42/MulMultf.math.rsqrt_14/Rsqrt:y:0tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_42/Mul?
tf.math.multiply_44/MulMul$tf.math.reduce_mean_28/Mean:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_44/Mul?
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul?
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_8736804conv2d_20_8736806*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_87358842#
!conv2d_20/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_87358952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indices?
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_15/StopGradient?
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_15/SquaredDifference?
-tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_31/Mean/reduction_indices?
tf.math.reduce_mean_31/MeanMean3tf.math.squared_difference_15/SquaredDifference:z:06tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_30/y?
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_30/AddV2?
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_47/Mul?
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_31/AddV2?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_8736827conv2d_21_8736829*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_87359242#
!conv2d_21/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_87359352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indices?
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_16/StopGradient?
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:??????????21
/tf.math.squared_difference_16/SquaredDifference?
-tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_33/Mean/reduction_indices?
tf.math.reduce_mean_33/MeanMean3tf.math.squared_difference_16/SquaredDifference:z:06tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_32/y?
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_32/AddV2?
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_50/Mul?
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_33/AddV2?
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_87357242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_8736851conv2d_22_8736853*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_22_layer_call_and_return_conditional_losses_87359662#
!conv2d_22/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_87359772
dropout_3/PartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indices?
tf.math.reduce_mean_34/MeanMean"dropout_3/PartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference"dropout_3/PartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_17/SquaredDifference?
-tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_35/Mean/reduction_indices?
tf.math.reduce_mean_35/MeanMean3tf.math.squared_difference_17/SquaredDifference:z:06tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_34/y?
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_34/AddV2?
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_53/Mul?
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMul"dropout_3/PartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_87360032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_87357432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_8736876conv2d_23_8736878*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_23_layer_call_and_return_conditional_losses_87360172#
!conv2d_23/StatefulPartitionedCall?
dropout_4/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_87360282
dropout_4/PartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indices?
tf.math.reduce_mean_36/MeanMean"dropout_4/PartitionedCall:output:06tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_36/Mean?
 tf.stop_gradient_18/StopGradientStopGradient$tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_18/StopGradient?
/tf.math.squared_difference_18/SquaredDifferenceSquaredDifference"dropout_4/PartitionedCall:output:0)tf.stop_gradient_18/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_18/SquaredDifference?
-tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_37/Mean/reduction_indices?
tf.math.reduce_mean_37/MeanMean3tf.math.squared_difference_18/SquaredDifference:z:06tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_37/Mean{
tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_36/y?
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2?
tf.math.rsqrt_18/RsqrtRsqrt!tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_18/Rsqrt?
tf.math.multiply_54/MulMultf.math.rsqrt_18/Rsqrt:y:0tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_54/Mul?
tf.math.multiply_56/MulMul$tf.math.reduce_mean_36/Mean:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_56/Mul?
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub?
tf.math.multiply_55/MulMul"dropout_4/PartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mul?
tf.__operators__.add_37/AddV2AddV2tf.math.multiply_55/Mul:z:0tf.math.subtract_18/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_37/AddV2?
concatenate_4/PartitionedCallPartitionedCall!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_87360542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_87357622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_8736901conv2d_24_8736903*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_87360682#
!conv2d_24/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_87360792
dropout_5/PartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indices?
tf.math.reduce_mean_38/MeanMean"dropout_5/PartitionedCall:output:06tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_38/Mean?
 tf.stop_gradient_19/StopGradientStopGradient$tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_19/StopGradient?
/tf.math.squared_difference_19/SquaredDifferenceSquaredDifference"dropout_5/PartitionedCall:output:0)tf.stop_gradient_19/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_19/SquaredDifference?
-tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_39/Mean/reduction_indices?
tf.math.reduce_mean_39/MeanMean3tf.math.squared_difference_19/SquaredDifference:z:06tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_39/Mean{
tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_38/y?
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2?
tf.math.rsqrt_19/RsqrtRsqrt!tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_19/Rsqrt?
tf.math.multiply_57/MulMultf.math.rsqrt_19/Rsqrt:y:0tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_57/Mul?
tf.math.multiply_59/MulMul$tf.math.reduce_mean_38/Mean:output:0tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_59/Mul?
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMul"dropout_5/PartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_39/AddV2?
concatenate_5/PartitionedCallPartitionedCall!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_87361052
concatenate_5/PartitionedCall?
up_sampling2d_7/PartitionedCallPartitionedCall&concatenate_5/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_87357812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_8736926conv2d_25_8736928*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_87361192#
!conv2d_25/StatefulPartitionedCall?
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4:,(
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
[
/__inference_concatenate_4_layer_call_fn_8737964
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_87360542
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
?
L
0__inference_leaky_re_lu_15_layer_call_fn_8737846

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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_87359352
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
?
?
+__inference_conv2d_22_layer_call_fn_8737860

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_22_layer_call_and_return_conditional_losses_87359662
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
g
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_8737851

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
M
1__inference_up_sampling2d_6_layer_call_fn_8735768

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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_87357622
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
v
J__inference_concatenate_4_layer_call_and_return_conditional_losses_8737971
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
?
M
1__inference_up_sampling2d_5_layer_call_fn_8735749

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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_87357432
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
M
1__inference_up_sampling2d_7_layer_call_fn_8735787

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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_87357812
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
?
d
F__inference_dropout_4_layer_call_and_return_conditional_losses_8737946

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
?
v
J__inference_concatenate_5_layer_call_and_return_conditional_losses_8738031
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
G
+__inference_dropout_4_layer_call_fn_8737936

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_87360282
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
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_8735977

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
?
g
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_8735855

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
L
0__inference_leaky_re_lu_14_layer_call_fn_8737817

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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_87358952
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
?
?
F__inference_conv2d_23_layer_call_and_return_conditional_losses_8737931

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
??
?
"__inference__wrapped_model_8735711
input_4J
0model_3_conv2d_18_conv2d_readvariableop_resource: ?
1model_3_conv2d_18_biasadd_readvariableop_resource: %
!model_3_tf_math_multiply_39_mul_y
model_3_8735529J
0model_3_conv2d_19_conv2d_readvariableop_resource: @?
1model_3_conv2d_19_biasadd_readvariableop_resource:@%
!model_3_tf_math_multiply_42_mul_y
model_3_8735553K
0model_3_conv2d_20_conv2d_readvariableop_resource:@?@
1model_3_conv2d_20_biasadd_readvariableop_resource:	?%
!model_3_tf_math_multiply_45_mul_y
model_3_8735577L
0model_3_conv2d_21_conv2d_readvariableop_resource:??@
1model_3_conv2d_21_biasadd_readvariableop_resource:	?%
!model_3_tf_math_multiply_48_mul_y
model_3_8735601L
0model_3_conv2d_22_conv2d_readvariableop_resource:??@
1model_3_conv2d_22_biasadd_readvariableop_resource:	?%
!model_3_tf_math_multiply_51_mul_y
model_3_8735630K
0model_3_conv2d_23_conv2d_readvariableop_resource:?@?
1model_3_conv2d_23_biasadd_readvariableop_resource:@%
!model_3_tf_math_multiply_54_mul_y
model_3_8735661K
0model_3_conv2d_24_conv2d_readvariableop_resource:? ?
1model_3_conv2d_24_biasadd_readvariableop_resource: %
!model_3_tf_math_multiply_57_mul_y
model_3_8735692J
0model_3_conv2d_25_conv2d_readvariableop_resource:@?
1model_3_conv2d_25_biasadd_readvariableop_resource:
identity??(model_3/conv2d_18/BiasAdd/ReadVariableOp?'model_3/conv2d_18/Conv2D/ReadVariableOp?(model_3/conv2d_19/BiasAdd/ReadVariableOp?'model_3/conv2d_19/Conv2D/ReadVariableOp?(model_3/conv2d_20/BiasAdd/ReadVariableOp?'model_3/conv2d_20/Conv2D/ReadVariableOp?(model_3/conv2d_21/BiasAdd/ReadVariableOp?'model_3/conv2d_21/Conv2D/ReadVariableOp?(model_3/conv2d_22/BiasAdd/ReadVariableOp?'model_3/conv2d_22/Conv2D/ReadVariableOp?(model_3/conv2d_23/BiasAdd/ReadVariableOp?'model_3/conv2d_23/Conv2D/ReadVariableOp?(model_3/conv2d_24/BiasAdd/ReadVariableOp?'model_3/conv2d_24/Conv2D/ReadVariableOp?(model_3/conv2d_25/BiasAdd/ReadVariableOp?'model_3/conv2d_25/Conv2D/ReadVariableOp?
'model_3/conv2d_18/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_3/conv2d_18/Conv2D/ReadVariableOp?
model_3/conv2d_18/Conv2DConv2Dinput_4/model_3/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
model_3/conv2d_18/Conv2D?
(model_3/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_3/conv2d_18/BiasAdd/ReadVariableOp?
model_3/conv2d_18/BiasAddBiasAdd!model_3/conv2d_18/Conv2D:output:00model_3/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
model_3/conv2d_18/BiasAdd?
 model_3/leaky_re_lu_12/LeakyRelu	LeakyRelu"model_3/conv2d_18/BiasAdd:output:0*1
_output_shapes
:??????????? 2"
 model_3/leaky_re_lu_12/LeakyRelu?
5model_3/tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_26/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_26/MeanMean.model_3/leaky_re_lu_12/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_26/Mean?
(model_3/tf.stop_gradient_13/StopGradientStopGradient,model_3/tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2*
(model_3/tf.stop_gradient_13/StopGradient?
7model_3/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_12/LeakyRelu:activations:01model_3/tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 29
7model_3/tf.math.squared_difference_13/SquaredDifference?
5model_3/tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_27/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_27/MeanMean;model_3/tf.math.squared_difference_13/SquaredDifference:z:0>model_3/tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_27/Mean?
!model_3/tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_3/tf.__operators__.add_26/y?
%model_3/tf.__operators__.add_26/AddV2AddV2,model_3/tf.math.reduce_mean_27/Mean:output:0*model_3/tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_3/tf.__operators__.add_26/AddV2?
model_3/tf.math.rsqrt_13/RsqrtRsqrt)model_3/tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2 
model_3/tf.math.rsqrt_13/Rsqrt?
model_3/tf.math.multiply_39/MulMul"model_3/tf.math.rsqrt_13/Rsqrt:y:0!model_3_tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_39/Mul?
model_3/tf.math.multiply_41/MulMul,model_3/tf.math.reduce_mean_26/Mean:output:0#model_3/tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_41/Mul?
model_3/tf.math.subtract_13/SubSubmodel_3_8735529#model_3/tf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.subtract_13/Sub?
model_3/tf.math.multiply_40/MulMul.model_3/leaky_re_lu_12/LeakyRelu:activations:0#model_3/tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:??????????? 2!
model_3/tf.math.multiply_40/Mul?
%model_3/tf.__operators__.add_27/AddV2AddV2#model_3/tf.math.multiply_40/Mul:z:0#model_3/tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:??????????? 2'
%model_3/tf.__operators__.add_27/AddV2?
'model_3/conv2d_19/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02)
'model_3/conv2d_19/Conv2D/ReadVariableOp?
model_3/conv2d_19/Conv2DConv2D)model_3/tf.__operators__.add_27/AddV2:z:0/model_3/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
model_3/conv2d_19/Conv2D?
(model_3/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_3/conv2d_19/BiasAdd/ReadVariableOp?
model_3/conv2d_19/BiasAddBiasAdd!model_3/conv2d_19/Conv2D:output:00model_3/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_3/conv2d_19/BiasAdd?
 model_3/leaky_re_lu_13/LeakyRelu	LeakyRelu"model_3/conv2d_19/BiasAdd:output:0*/
_output_shapes
:?????????@@@2"
 model_3/leaky_re_lu_13/LeakyRelu?
5model_3/tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_28/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_28/MeanMean.model_3/leaky_re_lu_13/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_28/Mean?
(model_3/tf.stop_gradient_14/StopGradientStopGradient,model_3/tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2*
(model_3/tf.stop_gradient_14/StopGradient?
7model_3/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_13/LeakyRelu:activations:01model_3/tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@29
7model_3/tf.math.squared_difference_14/SquaredDifference?
5model_3/tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_29/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_29/MeanMean;model_3/tf.math.squared_difference_14/SquaredDifference:z:0>model_3/tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_29/Mean?
!model_3/tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_3/tf.__operators__.add_28/y?
%model_3/tf.__operators__.add_28/AddV2AddV2,model_3/tf.math.reduce_mean_29/Mean:output:0*model_3/tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_3/tf.__operators__.add_28/AddV2?
model_3/tf.math.rsqrt_14/RsqrtRsqrt)model_3/tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2 
model_3/tf.math.rsqrt_14/Rsqrt?
model_3/tf.math.multiply_42/MulMul"model_3/tf.math.rsqrt_14/Rsqrt:y:0!model_3_tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_42/Mul?
model_3/tf.math.multiply_44/MulMul,model_3/tf.math.reduce_mean_28/Mean:output:0#model_3/tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_44/Mul?
model_3/tf.math.subtract_14/SubSubmodel_3_8735553#model_3/tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.subtract_14/Sub?
model_3/tf.math.multiply_43/MulMul.model_3/leaky_re_lu_13/LeakyRelu:activations:0#model_3/tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_3/tf.math.multiply_43/Mul?
%model_3/tf.__operators__.add_29/AddV2AddV2#model_3/tf.math.multiply_43/Mul:z:0#model_3/tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_3/tf.__operators__.add_29/AddV2?
'model_3/conv2d_20/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02)
'model_3/conv2d_20/Conv2D/ReadVariableOp?
model_3/conv2d_20/Conv2DConv2D)model_3/tf.__operators__.add_29/AddV2:z:0/model_3/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
model_3/conv2d_20/Conv2D?
(model_3/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_3/conv2d_20/BiasAdd/ReadVariableOp?
model_3/conv2d_20/BiasAddBiasAdd!model_3/conv2d_20/Conv2D:output:00model_3/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
model_3/conv2d_20/BiasAdd?
 model_3/leaky_re_lu_14/LeakyRelu	LeakyRelu"model_3/conv2d_20/BiasAdd:output:0*0
_output_shapes
:?????????  ?2"
 model_3/leaky_re_lu_14/LeakyRelu?
5model_3/tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_30/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_30/MeanMean.model_3/leaky_re_lu_14/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_30/Mean?
(model_3/tf.stop_gradient_15/StopGradientStopGradient,model_3/tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:??????????2*
(model_3/tf.stop_gradient_15/StopGradient?
7model_3/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_14/LeakyRelu:activations:01model_3/tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?29
7model_3/tf.math.squared_difference_15/SquaredDifference?
5model_3/tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_31/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_31/MeanMean;model_3/tf.math.squared_difference_15/SquaredDifference:z:0>model_3/tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_31/Mean?
!model_3/tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_3/tf.__operators__.add_30/y?
%model_3/tf.__operators__.add_30/AddV2AddV2,model_3/tf.math.reduce_mean_31/Mean:output:0*model_3/tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:??????????2'
%model_3/tf.__operators__.add_30/AddV2?
model_3/tf.math.rsqrt_15/RsqrtRsqrt)model_3/tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:??????????2 
model_3/tf.math.rsqrt_15/Rsqrt?
model_3/tf.math.multiply_45/MulMul"model_3/tf.math.rsqrt_15/Rsqrt:y:0!model_3_tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.multiply_45/Mul?
model_3/tf.math.multiply_47/MulMul,model_3/tf.math.reduce_mean_30/Mean:output:0#model_3/tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.multiply_47/Mul?
model_3/tf.math.subtract_15/SubSubmodel_3_8735577#model_3/tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.subtract_15/Sub?
model_3/tf.math.multiply_46/MulMul.model_3/leaky_re_lu_14/LeakyRelu:activations:0#model_3/tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2!
model_3/tf.math.multiply_46/Mul?
%model_3/tf.__operators__.add_31/AddV2AddV2#model_3/tf.math.multiply_46/Mul:z:0#model_3/tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2'
%model_3/tf.__operators__.add_31/AddV2?
'model_3/conv2d_21/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_3/conv2d_21/Conv2D/ReadVariableOp?
model_3/conv2d_21/Conv2DConv2D)model_3/tf.__operators__.add_31/AddV2:z:0/model_3/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_3/conv2d_21/Conv2D?
(model_3/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_3/conv2d_21/BiasAdd/ReadVariableOp?
model_3/conv2d_21/BiasAddBiasAdd!model_3/conv2d_21/Conv2D:output:00model_3/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_3/conv2d_21/BiasAdd?
 model_3/leaky_re_lu_15/LeakyRelu	LeakyRelu"model_3/conv2d_21/BiasAdd:output:0*0
_output_shapes
:??????????2"
 model_3/leaky_re_lu_15/LeakyRelu?
5model_3/tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_32/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_32/MeanMean.model_3/leaky_re_lu_15/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_32/Mean?
(model_3/tf.stop_gradient_16/StopGradientStopGradient,model_3/tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:??????????2*
(model_3/tf.stop_gradient_16/StopGradient?
7model_3/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_15/LeakyRelu:activations:01model_3/tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:??????????29
7model_3/tf.math.squared_difference_16/SquaredDifference?
5model_3/tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_33/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_33/MeanMean;model_3/tf.math.squared_difference_16/SquaredDifference:z:0>model_3/tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_33/Mean?
!model_3/tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_3/tf.__operators__.add_32/y?
%model_3/tf.__operators__.add_32/AddV2AddV2,model_3/tf.math.reduce_mean_33/Mean:output:0*model_3/tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:??????????2'
%model_3/tf.__operators__.add_32/AddV2?
model_3/tf.math.rsqrt_16/RsqrtRsqrt)model_3/tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:??????????2 
model_3/tf.math.rsqrt_16/Rsqrt?
model_3/tf.math.multiply_48/MulMul"model_3/tf.math.rsqrt_16/Rsqrt:y:0!model_3_tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.multiply_48/Mul?
model_3/tf.math.multiply_50/MulMul,model_3/tf.math.reduce_mean_32/Mean:output:0#model_3/tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.multiply_50/Mul?
model_3/tf.math.subtract_16/SubSubmodel_3_8735601#model_3/tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.subtract_16/Sub?
model_3/tf.math.multiply_49/MulMul.model_3/leaky_re_lu_15/LeakyRelu:activations:0#model_3/tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.multiply_49/Mul?
%model_3/tf.__operators__.add_33/AddV2AddV2#model_3/tf.math.multiply_49/Mul:z:0#model_3/tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:??????????2'
%model_3/tf.__operators__.add_33/AddV2?
model_3/up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
model_3/up_sampling2d_4/Const?
model_3/up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
model_3/up_sampling2d_4/Const_1?
model_3/up_sampling2d_4/mulMul&model_3/up_sampling2d_4/Const:output:0(model_3/up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
model_3/up_sampling2d_4/mul?
4model_3/up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor)model_3/tf.__operators__.add_33/AddV2:z:0model_3/up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????  ?*
half_pixel_centers(26
4model_3/up_sampling2d_4/resize/ResizeNearestNeighbor?
'model_3/conv2d_22/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_3/conv2d_22/Conv2D/ReadVariableOp?
model_3/conv2d_22/Conv2DConv2DEmodel_3/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
model_3/conv2d_22/Conv2D?
(model_3/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_3/conv2d_22/BiasAdd/ReadVariableOp?
model_3/conv2d_22/BiasAddBiasAdd!model_3/conv2d_22/Conv2D:output:00model_3/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
model_3/conv2d_22/BiasAdd?
model_3/conv2d_22/ReluRelu"model_3/conv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
model_3/conv2d_22/Relu?
model_3/dropout_3/IdentityIdentity$model_3/conv2d_22/Relu:activations:0*
T0*0
_output_shapes
:?????????  ?2
model_3/dropout_3/Identity?
5model_3/tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_34/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_34/MeanMean#model_3/dropout_3/Identity:output:0>model_3/tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_34/Mean?
(model_3/tf.stop_gradient_17/StopGradientStopGradient,model_3/tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:??????????2*
(model_3/tf.stop_gradient_17/StopGradient?
7model_3/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference#model_3/dropout_3/Identity:output:01model_3/tf.stop_gradient_17/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?29
7model_3/tf.math.squared_difference_17/SquaredDifference?
5model_3/tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_35/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_35/MeanMean;model_3/tf.math.squared_difference_17/SquaredDifference:z:0>model_3/tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_35/Mean?
!model_3/tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_3/tf.__operators__.add_34/y?
%model_3/tf.__operators__.add_34/AddV2AddV2,model_3/tf.math.reduce_mean_35/Mean:output:0*model_3/tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:??????????2'
%model_3/tf.__operators__.add_34/AddV2?
model_3/tf.math.rsqrt_17/RsqrtRsqrt)model_3/tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:??????????2 
model_3/tf.math.rsqrt_17/Rsqrt?
model_3/tf.math.multiply_51/MulMul"model_3/tf.math.rsqrt_17/Rsqrt:y:0!model_3_tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.multiply_51/Mul?
model_3/tf.math.multiply_53/MulMul,model_3/tf.math.reduce_mean_34/Mean:output:0#model_3/tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.multiply_53/Mul?
model_3/tf.math.subtract_17/SubSubmodel_3_8735630#model_3/tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:??????????2!
model_3/tf.math.subtract_17/Sub?
model_3/tf.math.multiply_52/MulMul#model_3/dropout_3/Identity:output:0#model_3/tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2!
model_3/tf.math.multiply_52/Mul?
%model_3/tf.__operators__.add_35/AddV2AddV2#model_3/tf.math.multiply_52/Mul:z:0#model_3/tf.math.subtract_17/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2'
%model_3/tf.__operators__.add_35/AddV2?
!model_3/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3/concatenate_3/concat/axis?
model_3/concatenate_3/concatConcatV2)model_3/tf.__operators__.add_35/AddV2:z:0)model_3/tf.__operators__.add_31/AddV2:z:0*model_3/concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
model_3/concatenate_3/concat?
model_3/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
model_3/up_sampling2d_5/Const?
model_3/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
model_3/up_sampling2d_5/Const_1?
model_3/up_sampling2d_5/mulMul&model_3/up_sampling2d_5/Const:output:0(model_3/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
model_3/up_sampling2d_5/mul?
4model_3/up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighbor%model_3/concatenate_3/concat:output:0model_3/up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:?????????@@?*
half_pixel_centers(26
4model_3/up_sampling2d_5/resize/ResizeNearestNeighbor?
'model_3/conv2d_23/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02)
'model_3/conv2d_23/Conv2D/ReadVariableOp?
model_3/conv2d_23/Conv2DConv2DEmodel_3/up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
model_3/conv2d_23/Conv2D?
(model_3/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_3/conv2d_23/BiasAdd/ReadVariableOp?
model_3/conv2d_23/BiasAddBiasAdd!model_3/conv2d_23/Conv2D:output:00model_3/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_3/conv2d_23/BiasAdd?
model_3/conv2d_23/ReluRelu"model_3/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
model_3/conv2d_23/Relu?
model_3/dropout_4/IdentityIdentity$model_3/conv2d_23/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@2
model_3/dropout_4/Identity?
5model_3/tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_36/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_36/MeanMean#model_3/dropout_4/Identity:output:0>model_3/tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_36/Mean?
(model_3/tf.stop_gradient_18/StopGradientStopGradient,model_3/tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2*
(model_3/tf.stop_gradient_18/StopGradient?
7model_3/tf.math.squared_difference_18/SquaredDifferenceSquaredDifference#model_3/dropout_4/Identity:output:01model_3/tf.stop_gradient_18/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@29
7model_3/tf.math.squared_difference_18/SquaredDifference?
5model_3/tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_37/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_37/MeanMean;model_3/tf.math.squared_difference_18/SquaredDifference:z:0>model_3/tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_37/Mean?
!model_3/tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_3/tf.__operators__.add_36/y?
%model_3/tf.__operators__.add_36/AddV2AddV2,model_3/tf.math.reduce_mean_37/Mean:output:0*model_3/tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_3/tf.__operators__.add_36/AddV2?
model_3/tf.math.rsqrt_18/RsqrtRsqrt)model_3/tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2 
model_3/tf.math.rsqrt_18/Rsqrt?
model_3/tf.math.multiply_54/MulMul"model_3/tf.math.rsqrt_18/Rsqrt:y:0!model_3_tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_54/Mul?
model_3/tf.math.multiply_56/MulMul,model_3/tf.math.reduce_mean_36/Mean:output:0#model_3/tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_56/Mul?
model_3/tf.math.subtract_18/SubSubmodel_3_8735661#model_3/tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.subtract_18/Sub?
model_3/tf.math.multiply_55/MulMul#model_3/dropout_4/Identity:output:0#model_3/tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_3/tf.math.multiply_55/Mul?
%model_3/tf.__operators__.add_37/AddV2AddV2#model_3/tf.math.multiply_55/Mul:z:0#model_3/tf.math.subtract_18/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_3/tf.__operators__.add_37/AddV2?
!model_3/concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3/concatenate_4/concat/axis?
model_3/concatenate_4/concatConcatV2)model_3/tf.__operators__.add_37/AddV2:z:0)model_3/tf.__operators__.add_29/AddV2:z:0*model_3/concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
model_3/concatenate_4/concat?
model_3/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
model_3/up_sampling2d_6/Const?
model_3/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
model_3/up_sampling2d_6/Const_1?
model_3/up_sampling2d_6/mulMul&model_3/up_sampling2d_6/Const:output:0(model_3/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
model_3/up_sampling2d_6/mul?
4model_3/up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighbor%model_3/concatenate_4/concat:output:0model_3/up_sampling2d_6/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(26
4model_3/up_sampling2d_6/resize/ResizeNearestNeighbor?
'model_3/conv2d_24/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02)
'model_3/conv2d_24/Conv2D/ReadVariableOp?
model_3/conv2d_24/Conv2DConv2DEmodel_3/up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
model_3/conv2d_24/Conv2D?
(model_3/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_3/conv2d_24/BiasAdd/ReadVariableOp?
model_3/conv2d_24/BiasAddBiasAdd!model_3/conv2d_24/Conv2D:output:00model_3/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
model_3/conv2d_24/BiasAdd?
model_3/conv2d_24/ReluRelu"model_3/conv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
model_3/conv2d_24/Relu?
model_3/dropout_5/IdentityIdentity$model_3/conv2d_24/Relu:activations:0*
T0*1
_output_shapes
:??????????? 2
model_3/dropout_5/Identity?
5model_3/tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_38/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_38/MeanMean#model_3/dropout_5/Identity:output:0>model_3/tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_38/Mean?
(model_3/tf.stop_gradient_19/StopGradientStopGradient,model_3/tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2*
(model_3/tf.stop_gradient_19/StopGradient?
7model_3/tf.math.squared_difference_19/SquaredDifferenceSquaredDifference#model_3/dropout_5/Identity:output:01model_3/tf.stop_gradient_19/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 29
7model_3/tf.math.squared_difference_19/SquaredDifference?
5model_3/tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_39/Mean/reduction_indices?
#model_3/tf.math.reduce_mean_39/MeanMean;model_3/tf.math.squared_difference_19/SquaredDifference:z:0>model_3/tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_39/Mean?
!model_3/tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!model_3/tf.__operators__.add_38/y?
%model_3/tf.__operators__.add_38/AddV2AddV2,model_3/tf.math.reduce_mean_39/Mean:output:0*model_3/tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_3/tf.__operators__.add_38/AddV2?
model_3/tf.math.rsqrt_19/RsqrtRsqrt)model_3/tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2 
model_3/tf.math.rsqrt_19/Rsqrt?
model_3/tf.math.multiply_57/MulMul"model_3/tf.math.rsqrt_19/Rsqrt:y:0!model_3_tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_57/Mul?
model_3/tf.math.multiply_59/MulMul,model_3/tf.math.reduce_mean_38/Mean:output:0#model_3/tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_59/Mul?
model_3/tf.math.subtract_19/SubSubmodel_3_8735692#model_3/tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.subtract_19/Sub?
model_3/tf.math.multiply_58/MulMul#model_3/dropout_5/Identity:output:0#model_3/tf.math.multiply_57/Mul:z:0*
T0*1
_output_shapes
:??????????? 2!
model_3/tf.math.multiply_58/Mul?
%model_3/tf.__operators__.add_39/AddV2AddV2#model_3/tf.math.multiply_58/Mul:z:0#model_3/tf.math.subtract_19/Sub:z:0*
T0*1
_output_shapes
:??????????? 2'
%model_3/tf.__operators__.add_39/AddV2?
!model_3/concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3/concatenate_5/concat/axis?
model_3/concatenate_5/concatConcatV2)model_3/tf.__operators__.add_39/AddV2:z:0)model_3/tf.__operators__.add_27/AddV2:z:0*model_3/concatenate_5/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
model_3/concatenate_5/concat?
model_3/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"?   ?   2
model_3/up_sampling2d_7/Const?
model_3/up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
model_3/up_sampling2d_7/Const_1?
model_3/up_sampling2d_7/mulMul&model_3/up_sampling2d_7/Const:output:0(model_3/up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
model_3/up_sampling2d_7/mul?
4model_3/up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighbor%model_3/concatenate_5/concat:output:0model_3/up_sampling2d_7/mul:z:0*
T0*1
_output_shapes
:???????????@*
half_pixel_centers(26
4model_3/up_sampling2d_7/resize/ResizeNearestNeighbor?
'model_3/conv2d_25/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'model_3/conv2d_25/Conv2D/ReadVariableOp?
model_3/conv2d_25/Conv2DConv2DEmodel_3/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
model_3/conv2d_25/Conv2D?
(model_3/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_3/conv2d_25/BiasAdd/ReadVariableOp?
model_3/conv2d_25/BiasAddBiasAdd!model_3/conv2d_25/Conv2D:output:00model_3/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
model_3/conv2d_25/BiasAdd?
model_3/conv2d_25/TanhTanh"model_3/conv2d_25/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
model_3/conv2d_25/Tanh?
IdentityIdentitymodel_3/conv2d_25/Tanh:y:0)^model_3/conv2d_18/BiasAdd/ReadVariableOp(^model_3/conv2d_18/Conv2D/ReadVariableOp)^model_3/conv2d_19/BiasAdd/ReadVariableOp(^model_3/conv2d_19/Conv2D/ReadVariableOp)^model_3/conv2d_20/BiasAdd/ReadVariableOp(^model_3/conv2d_20/Conv2D/ReadVariableOp)^model_3/conv2d_21/BiasAdd/ReadVariableOp(^model_3/conv2d_21/Conv2D/ReadVariableOp)^model_3/conv2d_22/BiasAdd/ReadVariableOp(^model_3/conv2d_22/Conv2D/ReadVariableOp)^model_3/conv2d_23/BiasAdd/ReadVariableOp(^model_3/conv2d_23/Conv2D/ReadVariableOp)^model_3/conv2d_24/BiasAdd/ReadVariableOp(^model_3/conv2d_24/Conv2D/ReadVariableOp)^model_3/conv2d_25/BiasAdd/ReadVariableOp(^model_3/conv2d_25/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2T
(model_3/conv2d_18/BiasAdd/ReadVariableOp(model_3/conv2d_18/BiasAdd/ReadVariableOp2R
'model_3/conv2d_18/Conv2D/ReadVariableOp'model_3/conv2d_18/Conv2D/ReadVariableOp2T
(model_3/conv2d_19/BiasAdd/ReadVariableOp(model_3/conv2d_19/BiasAdd/ReadVariableOp2R
'model_3/conv2d_19/Conv2D/ReadVariableOp'model_3/conv2d_19/Conv2D/ReadVariableOp2T
(model_3/conv2d_20/BiasAdd/ReadVariableOp(model_3/conv2d_20/BiasAdd/ReadVariableOp2R
'model_3/conv2d_20/Conv2D/ReadVariableOp'model_3/conv2d_20/Conv2D/ReadVariableOp2T
(model_3/conv2d_21/BiasAdd/ReadVariableOp(model_3/conv2d_21/BiasAdd/ReadVariableOp2R
'model_3/conv2d_21/Conv2D/ReadVariableOp'model_3/conv2d_21/Conv2D/ReadVariableOp2T
(model_3/conv2d_22/BiasAdd/ReadVariableOp(model_3/conv2d_22/BiasAdd/ReadVariableOp2R
'model_3/conv2d_22/Conv2D/ReadVariableOp'model_3/conv2d_22/Conv2D/ReadVariableOp2T
(model_3/conv2d_23/BiasAdd/ReadVariableOp(model_3/conv2d_23/BiasAdd/ReadVariableOp2R
'model_3/conv2d_23/Conv2D/ReadVariableOp'model_3/conv2d_23/Conv2D/ReadVariableOp2T
(model_3/conv2d_24/BiasAdd/ReadVariableOp(model_3/conv2d_24/BiasAdd/ReadVariableOp2R
'model_3/conv2d_24/Conv2D/ReadVariableOp'model_3/conv2d_24/Conv2D/ReadVariableOp2T
(model_3/conv2d_25/BiasAdd/ReadVariableOp(model_3/conv2d_25/BiasAdd/ReadVariableOp2R
'model_3/conv2d_25/Conv2D/ReadVariableOp'model_3/conv2d_25/Conv2D/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4:,(
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
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_8737822

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
?
d
+__inference_dropout_5_layer_call_fn_8738001

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_87362262
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
??
?
D__inference_model_3_layer_call_and_return_conditional_losses_8737109
input_4+
conv2d_18_8736935: 
conv2d_18_8736937: 
tf_math_multiply_39_mul_y
unknown+
conv2d_19_8736958: @
conv2d_19_8736960:@
tf_math_multiply_42_mul_y
	unknown_0,
conv2d_20_8736981:@? 
conv2d_20_8736983:	?
tf_math_multiply_45_mul_y
	unknown_1-
conv2d_21_8737004:?? 
conv2d_21_8737006:	?
tf_math_multiply_48_mul_y
	unknown_2-
conv2d_22_8737028:?? 
conv2d_22_8737030:	?
tf_math_multiply_51_mul_y
	unknown_3,
conv2d_23_8737053:?@
conv2d_23_8737055:@
tf_math_multiply_54_mul_y
	unknown_4,
conv2d_24_8737078:? 
conv2d_24_8737080: 
tf_math_multiply_57_mul_y
	unknown_5+
conv2d_25_8737103:@
conv2d_25_8737105:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_18_8736935conv2d_18_8736937*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_87358042#
!conv2d_18/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_87358152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indices?
tf.math.reduce_mean_26/MeanMean'leaky_re_lu_12/PartitionedCall:output:06tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_26/Mean?
 tf.stop_gradient_13/StopGradientStopGradient$tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_13/StopGradient?
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_13/SquaredDifference?
-tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_27/Mean/reduction_indices?
tf.math.reduce_mean_27/MeanMean3tf.math.squared_difference_13/SquaredDifference:z:06tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_27/Mean{
tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_26/y?
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2?
tf.math.rsqrt_13/RsqrtRsqrt!tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_13/Rsqrt?
tf.math.multiply_39/MulMultf.math.rsqrt_13/Rsqrt:y:0tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_39/Mul?
tf.math.multiply_41/MulMul$tf.math.reduce_mean_26/Mean:output:0tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_41/Mul?
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_27/AddV2?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_8736958conv2d_19_8736960*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_87358442#
!conv2d_19/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_87358552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indices?
tf.math.reduce_mean_28/MeanMean'leaky_re_lu_13/PartitionedCall:output:06tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_28/Mean?
 tf.stop_gradient_14/StopGradientStopGradient$tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_14/StopGradient?
/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference'leaky_re_lu_13/PartitionedCall:output:0)tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_14/SquaredDifference?
-tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_29/Mean/reduction_indices?
tf.math.reduce_mean_29/MeanMean3tf.math.squared_difference_14/SquaredDifference:z:06tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_29/Mean{
tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_28/y?
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2?
tf.math.rsqrt_14/RsqrtRsqrt!tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_14/Rsqrt?
tf.math.multiply_42/MulMultf.math.rsqrt_14/Rsqrt:y:0tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_42/Mul?
tf.math.multiply_44/MulMul$tf.math.reduce_mean_28/Mean:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_44/Mul?
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul?
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_8736981conv2d_20_8736983*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_87358842#
!conv2d_20/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_87358952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indices?
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_15/StopGradient?
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_15/SquaredDifference?
-tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_31/Mean/reduction_indices?
tf.math.reduce_mean_31/MeanMean3tf.math.squared_difference_15/SquaredDifference:z:06tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_30/y?
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_30/AddV2?
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_47/Mul?
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_31/AddV2?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_8737004conv2d_21_8737006*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_87359242#
!conv2d_21/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_87359352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indices?
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_16/StopGradient?
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:??????????21
/tf.math.squared_difference_16/SquaredDifference?
-tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_33/Mean/reduction_indices?
tf.math.reduce_mean_33/MeanMean3tf.math.squared_difference_16/SquaredDifference:z:06tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_32/y?
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_32/AddV2?
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_50/Mul?
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_33/AddV2?
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_87357242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_8737028conv2d_22_8737030*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_22_layer_call_and_return_conditional_losses_87359662#
!conv2d_22/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_87363062#
!dropout_3/StatefulPartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indices?
tf.math.reduce_mean_34/MeanMean*dropout_3/StatefulPartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference*dropout_3/StatefulPartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_17/SquaredDifference?
-tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_35/Mean/reduction_indices?
tf.math.reduce_mean_35/MeanMean3tf.math.squared_difference_17/SquaredDifference:z:06tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_34/y?
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_34/AddV2?
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_53/Mul?
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMul*dropout_3/StatefulPartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_87360032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_87357432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_8737053conv2d_23_8737055*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_23_layer_call_and_return_conditional_losses_87360172#
!conv2d_23/StatefulPartitionedCall?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_87362662#
!dropout_4/StatefulPartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indices?
tf.math.reduce_mean_36/MeanMean*dropout_4/StatefulPartitionedCall:output:06tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_36/Mean?
 tf.stop_gradient_18/StopGradientStopGradient$tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_18/StopGradient?
/tf.math.squared_difference_18/SquaredDifferenceSquaredDifference*dropout_4/StatefulPartitionedCall:output:0)tf.stop_gradient_18/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_18/SquaredDifference?
-tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_37/Mean/reduction_indices?
tf.math.reduce_mean_37/MeanMean3tf.math.squared_difference_18/SquaredDifference:z:06tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_37/Mean{
tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_36/y?
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2?
tf.math.rsqrt_18/RsqrtRsqrt!tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_18/Rsqrt?
tf.math.multiply_54/MulMultf.math.rsqrt_18/Rsqrt:y:0tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_54/Mul?
tf.math.multiply_56/MulMul$tf.math.reduce_mean_36/Mean:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_56/Mul?
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub?
tf.math.multiply_55/MulMul*dropout_4/StatefulPartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mul?
tf.__operators__.add_37/AddV2AddV2tf.math.multiply_55/Mul:z:0tf.math.subtract_18/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_37/AddV2?
concatenate_4/PartitionedCallPartitionedCall!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_87360542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_87357622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_8737078conv2d_24_8737080*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_87360682#
!conv2d_24/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_87362262#
!dropout_5/StatefulPartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indices?
tf.math.reduce_mean_38/MeanMean*dropout_5/StatefulPartitionedCall:output:06tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_38/Mean?
 tf.stop_gradient_19/StopGradientStopGradient$tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_19/StopGradient?
/tf.math.squared_difference_19/SquaredDifferenceSquaredDifference*dropout_5/StatefulPartitionedCall:output:0)tf.stop_gradient_19/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_19/SquaredDifference?
-tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_39/Mean/reduction_indices?
tf.math.reduce_mean_39/MeanMean3tf.math.squared_difference_19/SquaredDifference:z:06tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_39/Mean{
tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_38/y?
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2?
tf.math.rsqrt_19/RsqrtRsqrt!tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_19/Rsqrt?
tf.math.multiply_57/MulMultf.math.rsqrt_19/Rsqrt:y:0tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_57/Mul?
tf.math.multiply_59/MulMul$tf.math.reduce_mean_38/Mean:output:0tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_59/Mul?
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMul*dropout_5/StatefulPartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_39/AddV2?
concatenate_5/PartitionedCallPartitionedCall!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_87361052
concatenate_5/PartitionedCall?
up_sampling2d_7/PartitionedCallPartitionedCall&concatenate_5/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_87357812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_8737103conv2d_25_8737105*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_87361192#
!conv2d_25/StatefulPartitionedCall?
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4:,(
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
?
F__inference_conv2d_25_layer_call_and_return_conditional_losses_8736119

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
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_8736306

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
?
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_8737886

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
?
t
J__inference_concatenate_4_layer_call_and_return_conditional_losses_8736054

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
?
g
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_8737793

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
?
g
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_8735935

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
?,
?
 __inference__traced_save_8738136
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableopsavev2_const_14"/device:CPU:0*
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
?
e
F__inference_dropout_5_layer_call_and_return_conditional_losses_8738018

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
?
g
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_8737764

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
?
?
)__inference_model_3_layer_call_fn_8736755
input_4!
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
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_87366272
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
_user_specified_name	input_4:,(
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
h
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8735762

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
+__inference_conv2d_18_layer_call_fn_8737744

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_87358042
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
?
v
J__inference_concatenate_3_layer_call_and_return_conditional_losses_8737911
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
?
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_8737898

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
?
h
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8735724

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
M
1__inference_up_sampling2d_4_layer_call_fn_8735730

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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_87357242
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
G
+__inference_dropout_3_layer_call_fn_8737876

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_87359772
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
?
g
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_8735815

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
D__inference_model_3_layer_call_and_return_conditional_losses_8736627

inputs+
conv2d_18_8736453: 
conv2d_18_8736455: 
tf_math_multiply_39_mul_y
unknown+
conv2d_19_8736476: @
conv2d_19_8736478:@
tf_math_multiply_42_mul_y
	unknown_0,
conv2d_20_8736499:@? 
conv2d_20_8736501:	?
tf_math_multiply_45_mul_y
	unknown_1-
conv2d_21_8736522:?? 
conv2d_21_8736524:	?
tf_math_multiply_48_mul_y
	unknown_2-
conv2d_22_8736546:?? 
conv2d_22_8736548:	?
tf_math_multiply_51_mul_y
	unknown_3,
conv2d_23_8736571:?@
conv2d_23_8736573:@
tf_math_multiply_54_mul_y
	unknown_4,
conv2d_24_8736596:? 
conv2d_24_8736598: 
tf_math_multiply_57_mul_y
	unknown_5+
conv2d_25_8736621:@
conv2d_25_8736623:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_8736453conv2d_18_8736455*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_87358042#
!conv2d_18/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_87358152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indices?
tf.math.reduce_mean_26/MeanMean'leaky_re_lu_12/PartitionedCall:output:06tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_26/Mean?
 tf.stop_gradient_13/StopGradientStopGradient$tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_13/StopGradient?
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_13/SquaredDifference?
-tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_27/Mean/reduction_indices?
tf.math.reduce_mean_27/MeanMean3tf.math.squared_difference_13/SquaredDifference:z:06tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_27/Mean{
tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_26/y?
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2?
tf.math.rsqrt_13/RsqrtRsqrt!tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_13/Rsqrt?
tf.math.multiply_39/MulMultf.math.rsqrt_13/Rsqrt:y:0tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_39/Mul?
tf.math.multiply_41/MulMul$tf.math.reduce_mean_26/Mean:output:0tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_41/Mul?
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_27/AddV2?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_8736476conv2d_19_8736478*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_87358442#
!conv2d_19/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_87358552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indices?
tf.math.reduce_mean_28/MeanMean'leaky_re_lu_13/PartitionedCall:output:06tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_28/Mean?
 tf.stop_gradient_14/StopGradientStopGradient$tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_14/StopGradient?
/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference'leaky_re_lu_13/PartitionedCall:output:0)tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_14/SquaredDifference?
-tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_29/Mean/reduction_indices?
tf.math.reduce_mean_29/MeanMean3tf.math.squared_difference_14/SquaredDifference:z:06tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_29/Mean{
tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_28/y?
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2?
tf.math.rsqrt_14/RsqrtRsqrt!tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_14/Rsqrt?
tf.math.multiply_42/MulMultf.math.rsqrt_14/Rsqrt:y:0tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_42/Mul?
tf.math.multiply_44/MulMul$tf.math.reduce_mean_28/Mean:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_44/Mul?
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul?
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_8736499conv2d_20_8736501*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_87358842#
!conv2d_20/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_87358952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indices?
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_15/StopGradient?
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_15/SquaredDifference?
-tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_31/Mean/reduction_indices?
tf.math.reduce_mean_31/MeanMean3tf.math.squared_difference_15/SquaredDifference:z:06tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_30/y?
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_30/AddV2?
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_47/Mul?
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_31/AddV2?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_8736522conv2d_21_8736524*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_87359242#
!conv2d_21/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_87359352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indices?
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_16/StopGradient?
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:??????????21
/tf.math.squared_difference_16/SquaredDifference?
-tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_33/Mean/reduction_indices?
tf.math.reduce_mean_33/MeanMean3tf.math.squared_difference_16/SquaredDifference:z:06tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_32/y?
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_32/AddV2?
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_50/Mul?
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_33/AddV2?
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_87357242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_8736546conv2d_22_8736548*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_22_layer_call_and_return_conditional_losses_87359662#
!conv2d_22/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_87363062#
!dropout_3/StatefulPartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indices?
tf.math.reduce_mean_34/MeanMean*dropout_3/StatefulPartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference*dropout_3/StatefulPartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_17/SquaredDifference?
-tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_35/Mean/reduction_indices?
tf.math.reduce_mean_35/MeanMean3tf.math.squared_difference_17/SquaredDifference:z:06tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_34/y?
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_34/AddV2?
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_53/Mul?
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMul*dropout_3/StatefulPartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_87360032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_87357432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_8736571conv2d_23_8736573*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_23_layer_call_and_return_conditional_losses_87360172#
!conv2d_23/StatefulPartitionedCall?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_87362662#
!dropout_4/StatefulPartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indices?
tf.math.reduce_mean_36/MeanMean*dropout_4/StatefulPartitionedCall:output:06tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_36/Mean?
 tf.stop_gradient_18/StopGradientStopGradient$tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_18/StopGradient?
/tf.math.squared_difference_18/SquaredDifferenceSquaredDifference*dropout_4/StatefulPartitionedCall:output:0)tf.stop_gradient_18/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_18/SquaredDifference?
-tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_37/Mean/reduction_indices?
tf.math.reduce_mean_37/MeanMean3tf.math.squared_difference_18/SquaredDifference:z:06tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_37/Mean{
tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_36/y?
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2?
tf.math.rsqrt_18/RsqrtRsqrt!tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_18/Rsqrt?
tf.math.multiply_54/MulMultf.math.rsqrt_18/Rsqrt:y:0tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_54/Mul?
tf.math.multiply_56/MulMul$tf.math.reduce_mean_36/Mean:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_56/Mul?
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub?
tf.math.multiply_55/MulMul*dropout_4/StatefulPartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mul?
tf.__operators__.add_37/AddV2AddV2tf.math.multiply_55/Mul:z:0tf.math.subtract_18/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_37/AddV2?
concatenate_4/PartitionedCallPartitionedCall!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_87360542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_87357622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_8736596conv2d_24_8736598*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_87360682#
!conv2d_24/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_87362262#
!dropout_5/StatefulPartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indices?
tf.math.reduce_mean_38/MeanMean*dropout_5/StatefulPartitionedCall:output:06tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_38/Mean?
 tf.stop_gradient_19/StopGradientStopGradient$tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_19/StopGradient?
/tf.math.squared_difference_19/SquaredDifferenceSquaredDifference*dropout_5/StatefulPartitionedCall:output:0)tf.stop_gradient_19/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_19/SquaredDifference?
-tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_39/Mean/reduction_indices?
tf.math.reduce_mean_39/MeanMean3tf.math.squared_difference_19/SquaredDifference:z:06tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_39/Mean{
tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_38/y?
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2?
tf.math.rsqrt_19/RsqrtRsqrt!tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_19/Rsqrt?
tf.math.multiply_57/MulMultf.math.rsqrt_19/Rsqrt:y:0tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_57/Mul?
tf.math.multiply_59/MulMul$tf.math.reduce_mean_38/Mean:output:0tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_59/Mul?
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMul*dropout_5/StatefulPartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_39/AddV2?
concatenate_5/PartitionedCallPartitionedCall!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_87361052
concatenate_5/PartitionedCall?
up_sampling2d_7/PartitionedCallPartitionedCall&concatenate_5/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_87357812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_8736621conv2d_25_8736623*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_87361192#
!conv2d_25/StatefulPartitionedCall?
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:Y U
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
??
?

D__inference_model_3_layer_call_and_return_conditional_losses_8736126

inputs+
conv2d_18_8735805: 
conv2d_18_8735807: 
tf_math_multiply_39_mul_y
unknown+
conv2d_19_8735845: @
conv2d_19_8735847:@
tf_math_multiply_42_mul_y
	unknown_0,
conv2d_20_8735885:@? 
conv2d_20_8735887:	?
tf_math_multiply_45_mul_y
	unknown_1-
conv2d_21_8735925:?? 
conv2d_21_8735927:	?
tf_math_multiply_48_mul_y
	unknown_2-
conv2d_22_8735967:?? 
conv2d_22_8735969:	?
tf_math_multiply_51_mul_y
	unknown_3,
conv2d_23_8736018:?@
conv2d_23_8736020:@
tf_math_multiply_54_mul_y
	unknown_4,
conv2d_24_8736069:? 
conv2d_24_8736071: 
tf_math_multiply_57_mul_y
	unknown_5+
conv2d_25_8736120:@
conv2d_25_8736122:
identity??!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_8735805conv2d_18_8735807*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_87358042#
!conv2d_18/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_87358152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indices?
tf.math.reduce_mean_26/MeanMean'leaky_re_lu_12/PartitionedCall:output:06tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_26/Mean?
 tf.stop_gradient_13/StopGradientStopGradient$tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_13/StopGradient?
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_13/SquaredDifference?
-tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_27/Mean/reduction_indices?
tf.math.reduce_mean_27/MeanMean3tf.math.squared_difference_13/SquaredDifference:z:06tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_27/Mean{
tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_26/y?
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2?
tf.math.rsqrt_13/RsqrtRsqrt!tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_13/Rsqrt?
tf.math.multiply_39/MulMultf.math.rsqrt_13/Rsqrt:y:0tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_39/Mul?
tf.math.multiply_41/MulMul$tf.math.reduce_mean_26/Mean:output:0tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_41/Mul?
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_27/AddV2?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_8735845conv2d_19_8735847*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_87358442#
!conv2d_19/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_87358552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indices?
tf.math.reduce_mean_28/MeanMean'leaky_re_lu_13/PartitionedCall:output:06tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_28/Mean?
 tf.stop_gradient_14/StopGradientStopGradient$tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_14/StopGradient?
/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference'leaky_re_lu_13/PartitionedCall:output:0)tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_14/SquaredDifference?
-tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_29/Mean/reduction_indices?
tf.math.reduce_mean_29/MeanMean3tf.math.squared_difference_14/SquaredDifference:z:06tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_29/Mean{
tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_28/y?
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2?
tf.math.rsqrt_14/RsqrtRsqrt!tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_14/Rsqrt?
tf.math.multiply_42/MulMultf.math.rsqrt_14/Rsqrt:y:0tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_42/Mul?
tf.math.multiply_44/MulMul$tf.math.reduce_mean_28/Mean:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_44/Mul?
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul?
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_8735885conv2d_20_8735887*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_87358842#
!conv2d_20/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_87358952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indices?
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_15/StopGradient?
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_15/SquaredDifference?
-tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_31/Mean/reduction_indices?
tf.math.reduce_mean_31/MeanMean3tf.math.squared_difference_15/SquaredDifference:z:06tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_30/y?
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_30/AddV2?
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_47/Mul?
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_31/AddV2?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_8735925conv2d_21_8735927*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_87359242#
!conv2d_21/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_87359352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indices?
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_16/StopGradient?
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:??????????21
/tf.math.squared_difference_16/SquaredDifference?
-tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_33/Mean/reduction_indices?
tf.math.reduce_mean_33/MeanMean3tf.math.squared_difference_16/SquaredDifference:z:06tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_32/y?
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_32/AddV2?
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_50/Mul?
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_33/AddV2?
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_87357242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_8735967conv2d_22_8735969*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_22_layer_call_and_return_conditional_losses_87359662#
!conv2d_22/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_87359772
dropout_3/PartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indices?
tf.math.reduce_mean_34/MeanMean"dropout_3/PartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference"dropout_3/PartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????21
/tf.math.squared_difference_17/SquaredDifference?
-tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_35/Mean/reduction_indices?
tf.math.reduce_mean_35/MeanMean3tf.math.squared_difference_17/SquaredDifference:z:06tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_34/y?
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_34/AddV2?
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_53/Mul?
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMul"dropout_3/PartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_87360032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_87357432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_8736018conv2d_23_8736020*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_23_layer_call_and_return_conditional_losses_87360172#
!conv2d_23/StatefulPartitionedCall?
dropout_4/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_87360282
dropout_4/PartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indices?
tf.math.reduce_mean_36/MeanMean"dropout_4/PartitionedCall:output:06tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_36/Mean?
 tf.stop_gradient_18/StopGradientStopGradient$tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_18/StopGradient?
/tf.math.squared_difference_18/SquaredDifferenceSquaredDifference"dropout_4/PartitionedCall:output:0)tf.stop_gradient_18/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@21
/tf.math.squared_difference_18/SquaredDifference?
-tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_37/Mean/reduction_indices?
tf.math.reduce_mean_37/MeanMean3tf.math.squared_difference_18/SquaredDifference:z:06tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_37/Mean{
tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_36/y?
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2?
tf.math.rsqrt_18/RsqrtRsqrt!tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_18/Rsqrt?
tf.math.multiply_54/MulMultf.math.rsqrt_18/Rsqrt:y:0tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_54/Mul?
tf.math.multiply_56/MulMul$tf.math.reduce_mean_36/Mean:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_56/Mul?
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub?
tf.math.multiply_55/MulMul"dropout_4/PartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mul?
tf.__operators__.add_37/AddV2AddV2tf.math.multiply_55/Mul:z:0tf.math.subtract_18/Sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.__operators__.add_37/AddV2?
concatenate_4/PartitionedCallPartitionedCall!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_87360542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_87357622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_8736069conv2d_24_8736071*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_87360682#
!conv2d_24/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_5_layer_call_and_return_conditional_losses_87360792
dropout_5/PartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indices?
tf.math.reduce_mean_38/MeanMean"dropout_5/PartitionedCall:output:06tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_38/Mean?
 tf.stop_gradient_19/StopGradientStopGradient$tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_19/StopGradient?
/tf.math.squared_difference_19/SquaredDifferenceSquaredDifference"dropout_5/PartitionedCall:output:0)tf.stop_gradient_19/StopGradient:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 21
/tf.math.squared_difference_19/SquaredDifference?
-tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_39/Mean/reduction_indices?
tf.math.reduce_mean_39/MeanMean3tf.math.squared_difference_19/SquaredDifference:z:06tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_39/Mean{
tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_38/y?
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2?
tf.math.rsqrt_19/RsqrtRsqrt!tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_19/Rsqrt?
tf.math.multiply_57/MulMultf.math.rsqrt_19/Rsqrt:y:0tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_57/Mul?
tf.math.multiply_59/MulMul$tf.math.reduce_mean_38/Mean:output:0tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_59/Mul?
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMul"dropout_5/PartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.__operators__.add_39/AddV2?
concatenate_5/PartitionedCallPartitionedCall!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0*
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_87361052
concatenate_5/PartitionedCall?
up_sampling2d_7/PartitionedCallPartitionedCall&concatenate_5/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_87357812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_8736120conv2d_25_8736122*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_87361192#
!conv2d_25/StatefulPartitionedCall?
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall:Y U
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
F__inference_conv2d_22_layer_call_and_return_conditional_losses_8737871

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
F__inference_conv2d_24_layer_call_and_return_conditional_losses_8737991

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
?
[
/__inference_concatenate_3_layer_call_fn_8737904
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
GPU2*0J 8? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_87360032
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
?
?
+__inference_conv2d_23_layer_call_fn_8737920

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_23_layer_call_and_return_conditional_losses_87360172
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
?

?
F__inference_conv2d_19_layer_call_and_return_conditional_losses_8735844

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
?
d
F__inference_dropout_5_layer_call_and_return_conditional_losses_8736079

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
??
?
D__inference_model_3_layer_call_and_return_conditional_losses_8737510

inputsB
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: 
tf_math_multiply_39_mul_y
unknownB
(conv2d_19_conv2d_readvariableop_resource: @7
)conv2d_19_biasadd_readvariableop_resource:@
tf_math_multiply_42_mul_y
	unknown_0C
(conv2d_20_conv2d_readvariableop_resource:@?8
)conv2d_20_biasadd_readvariableop_resource:	?
tf_math_multiply_45_mul_y
	unknown_1D
(conv2d_21_conv2d_readvariableop_resource:??8
)conv2d_21_biasadd_readvariableop_resource:	?
tf_math_multiply_48_mul_y
	unknown_2D
(conv2d_22_conv2d_readvariableop_resource:??8
)conv2d_22_biasadd_readvariableop_resource:	?
tf_math_multiply_51_mul_y
	unknown_3C
(conv2d_23_conv2d_readvariableop_resource:?@7
)conv2d_23_biasadd_readvariableop_resource:@
tf_math_multiply_54_mul_y
	unknown_4C
(conv2d_24_conv2d_readvariableop_resource:? 7
)conv2d_24_biasadd_readvariableop_resource: 
tf_math_multiply_57_mul_y
	unknown_5B
(conv2d_25_conv2d_readvariableop_resource:@7
)conv2d_25_biasadd_readvariableop_resource:
identity?? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_18/BiasAdd?
leaky_re_lu_12/LeakyRelu	LeakyReluconv2d_18/BiasAdd:output:0*1
_output_shapes
:??????????? 2
leaky_re_lu_12/LeakyRelu?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indices?
tf.math.reduce_mean_26/MeanMean&leaky_re_lu_12/LeakyRelu:activations:06tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_26/Mean?
 tf.stop_gradient_13/StopGradientStopGradient$tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_13/StopGradient?
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference&leaky_re_lu_12/LeakyRelu:activations:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_13/SquaredDifference?
-tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_27/Mean/reduction_indices?
tf.math.reduce_mean_27/MeanMean3tf.math.squared_difference_13/SquaredDifference:z:06tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_27/Mean{
tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_26/y?
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2?
tf.math.rsqrt_13/RsqrtRsqrt!tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_13/Rsqrt?
tf.math.multiply_39/MulMultf.math.rsqrt_13/Rsqrt:y:0tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_39/Mul?
tf.math.multiply_41/MulMul$tf.math.reduce_mean_26/Mean:output:0tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_41/Mul?
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul&leaky_re_lu_12/LeakyRelu:activations:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_27/AddV2?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_19/Conv2D/ReadVariableOp?
conv2d_19/Conv2DConv2D!tf.__operators__.add_27/AddV2:z:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_19/Conv2D?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_19/BiasAdd?
leaky_re_lu_13/LeakyRelu	LeakyReluconv2d_19/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_13/LeakyRelu?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indices?
tf.math.reduce_mean_28/MeanMean&leaky_re_lu_13/LeakyRelu:activations:06tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_28/Mean?
 tf.stop_gradient_14/StopGradientStopGradient$tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_14/StopGradient?
/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference&leaky_re_lu_13/LeakyRelu:activations:0)tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_14/SquaredDifference?
-tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_29/Mean/reduction_indices?
tf.math.reduce_mean_29/MeanMean3tf.math.squared_difference_14/SquaredDifference:z:06tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_29/Mean{
tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_28/y?
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2?
tf.math.rsqrt_14/RsqrtRsqrt!tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_14/Rsqrt?
tf.math.multiply_42/MulMultf.math.rsqrt_14/Rsqrt:y:0tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_42/Mul?
tf.math.multiply_44/MulMul$tf.math.reduce_mean_28/Mean:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_44/Mul?
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul&leaky_re_lu_13/LeakyRelu:activations:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul?
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2D!tf.__operators__.add_29/AddV2:z:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_20/BiasAdd?
leaky_re_lu_14/LeakyRelu	LeakyReluconv2d_20/BiasAdd:output:0*0
_output_shapes
:?????????  ?2
leaky_re_lu_14/LeakyRelu?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indices?
tf.math.reduce_mean_30/MeanMean&leaky_re_lu_14/LeakyRelu:activations:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_15/StopGradient?
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference&leaky_re_lu_14/LeakyRelu:activations:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_15/SquaredDifference?
-tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_31/Mean/reduction_indices?
tf.math.reduce_mean_31/MeanMean3tf.math.squared_difference_15/SquaredDifference:z:06tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_30/y?
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_30/AddV2?
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_47/Mul?
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul&leaky_re_lu_14/LeakyRelu:activations:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_31/AddV2?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D!tf.__operators__.add_31/AddV2:z:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_21/BiasAdd?
leaky_re_lu_15/LeakyRelu	LeakyReluconv2d_21/BiasAdd:output:0*0
_output_shapes
:??????????2
leaky_re_lu_15/LeakyRelu?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indices?
tf.math.reduce_mean_32/MeanMean&leaky_re_lu_15/LeakyRelu:activations:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_16/StopGradient?
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference&leaky_re_lu_15/LeakyRelu:activations:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:??????????21
/tf.math.squared_difference_16/SquaredDifference?
-tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_33/Mean/reduction_indices?
tf.math.reduce_mean_33/MeanMean3tf.math.squared_difference_16/SquaredDifference:z:06tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_32/y?
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_32/AddV2?
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_50/Mul?
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul&leaky_re_lu_15/LeakyRelu:activations:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_33/AddV2
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const?
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const_1?
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_4/mul?
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_33/AddV2:z:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????  ?*
half_pixel_centers(2.
,up_sampling2d_4/resize/ResizeNearestNeighbor?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2D=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_22/BiasAdd
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_22/Relu?
dropout_3/IdentityIdentityconv2d_22/Relu:activations:0*
T0*0
_output_shapes
:?????????  ?2
dropout_3/Identity?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indices?
tf.math.reduce_mean_34/MeanMeandropout_3/Identity:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:??????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifferencedropout_3/Identity:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/tf.math.squared_difference_17/SquaredDifference?
-tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_35/Mean/reduction_indices?
tf.math.reduce_mean_35/MeanMean3tf.math.squared_difference_17/SquaredDifference:z:06tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_34/y?
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:??????????2
tf.__operators__.add_34/AddV2?
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:??????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:??????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.multiply_53/Mul?
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMuldropout_3/Identity:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*0
_output_shapes
:?????????  ?2
tf.__operators__.add_35/AddV2x
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  ?2
concatenate_3/concat
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_5/Const?
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/Const_1?
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_5/mul?
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:?????????@@?*
half_pixel_centers(2.
,up_sampling2d_5/resize/ResizeNearestNeighbor?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_23/Conv2D/ReadVariableOp?
conv2d_23/Conv2DConv2D=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_23/Conv2D?
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp?
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_23/BiasAdd~
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_23/Relu?
dropout_4/IdentityIdentityconv2d_23/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@2
dropout_4/Identity?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indices?
tf.math.reduce_mean_36/MeanMeandropout_4/Identity:output:06tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_36/Mean?
 tf.stop_gradient_18/StopGradientStopGradient$tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2"
 tf.stop_gradient_18/StopGradient?
/tf.math.squared_difference_18/SquaredDifferenceSquaredDifferencedropout_4/Identity:output:0)tf.stop_gradient_18/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/tf.math.squared_difference_18/SquaredDifference?
-tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_37/Mean/reduction_indices?
tf.math.reduce_mean_37/MeanMean3tf.math.squared_difference_18/SquaredDifference:z:06tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
tf.math.reduce_mean_37/Mean{
tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_36/y?
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2?
tf.math.rsqrt_18/RsqrtRsqrt!tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.rsqrt_18/Rsqrt?
tf.math.multiply_54/MulMultf.math.rsqrt_18/Rsqrt:y:0tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_54/Mul?
tf.math.multiply_56/MulMul$tf.math.reduce_mean_36/Mean:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.multiply_56/Mul?
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub?
tf.math.multiply_55/MulMuldropout_4/Identity:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_55/Mul?
tf.__operators__.add_37/AddV2AddV2tf.math.multiply_55/Mul:z:0tf.math.subtract_18/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_37/AddV2x
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_4/concat/axis?
concatenate_4/concatConcatV2!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0"concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@?2
concatenate_4/concat
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_6/Const?
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_6/Const_1?
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_6/mul?
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_4/concat:output:0up_sampling2d_6/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(2.
,up_sampling2d_6/resize/ResizeNearestNeighbor?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2D=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_24/Conv2D?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_24/BiasAdd?
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_24/Relu?
dropout_5/IdentityIdentityconv2d_24/Relu:activations:0*
T0*1
_output_shapes
:??????????? 2
dropout_5/Identity?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indices?
tf.math.reduce_mean_38/MeanMeandropout_5/Identity:output:06tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_38/Mean?
 tf.stop_gradient_19/StopGradientStopGradient$tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2"
 tf.stop_gradient_19/StopGradient?
/tf.math.squared_difference_19/SquaredDifferenceSquaredDifferencedropout_5/Identity:output:0)tf.stop_gradient_19/StopGradient:output:0*
T0*1
_output_shapes
:??????????? 21
/tf.math.squared_difference_19/SquaredDifference?
-tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_39/Mean/reduction_indices?
tf.math.reduce_mean_39/MeanMean3tf.math.squared_difference_19/SquaredDifference:z:06tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2
tf.math.reduce_mean_39/Mean{
tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
tf.__operators__.add_38/y?
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2?
tf.math.rsqrt_19/RsqrtRsqrt!tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.rsqrt_19/Rsqrt?
tf.math.multiply_57/MulMultf.math.rsqrt_19/Rsqrt:y:0tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_57/Mul?
tf.math.multiply_59/MulMul$tf.math.reduce_mean_38/Mean:output:0tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.multiply_59/Mul?
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMuldropout_5/Identity:output:0tf.math.multiply_57/Mul:z:0*
T0*1
_output_shapes
:??????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*1
_output_shapes
:??????????? 2
tf.__operators__.add_39/AddV2x
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_5/concat/axis?
concatenate_5/concatConcatV2!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0"concatenate_5/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@2
concatenate_5/concat
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"?   ?   2
up_sampling2d_7/Const?
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const_1?
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_7/mul?
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_5/concat:output:0up_sampling2d_7/mul:z:0*
T0*1
_output_shapes
:???????????@*
half_pixel_centers(2.
,up_sampling2d_7/resize/ResizeNearestNeighbor?
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_25/Conv2D/ReadVariableOp?
conv2d_25/Conv2DConv2D=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_25/Conv2D?
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp?
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_25/BiasAdd?
conv2d_25/TanhTanhconv2d_25/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_25/Tanh?
IdentityIdentityconv2d_25/Tanh:y:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : :@:@: : :?:?: : :?:?: : :?:?: : :@:@: : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp:Y U
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
h
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8735743

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
F__inference_conv2d_24_layer_call_and_return_conditional_losses_8736068

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
?
?
)__inference_model_3_layer_call_fn_8737241

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
GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_87361262
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
?
L
0__inference_leaky_re_lu_12_layer_call_fn_8737759

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
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_87358152
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
d
+__inference_dropout_4_layer_call_fn_8737941

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_87362662
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
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_13_layer_call_fn_8737788

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
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_87358552
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
h
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_8735781

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
t
J__inference_concatenate_5_layer_call_and_return_conditional_losses_8736105

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

?
F__inference_conv2d_18_layer_call_and_return_conditional_losses_8737754

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
input_4:
serving_default_input_4:0???????????G
	conv2d_25:
StatefulPartitionedCall:0???????????tensorflow/serving/predict:ҫ
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
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w
signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_networkŕ{"name": "model_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["input_4", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_12", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_26", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_26", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_13", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_13", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_13", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_13", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.stop_gradient_13", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_27", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_27", "inbound_nodes": [["tf.math.squared_difference_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_26", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_26", "inbound_nodes": [["tf.math.reduce_mean_27", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_13", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_13", "inbound_nodes": [["tf.__operators__.add_26", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_39", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_39", "inbound_nodes": [["tf.math.rsqrt_13", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_41", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"y": ["tf.math.multiply_39", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_26", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_26", "inbound_nodes": [["tf.math.multiply_39", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_13", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_13", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_41", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_40", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.cast_26", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_27", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_27", "inbound_nodes": [["tf.math.subtract_13", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_27", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_27", "inbound_nodes": [["tf.math.multiply_40", 0, 0, {"y": ["tf.cast_27", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["tf.__operators__.add_27", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_13", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_28", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_28", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_14", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_14", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_14", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_14", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.stop_gradient_14", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_29", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_29", "inbound_nodes": [["tf.math.squared_difference_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_28", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_28", "inbound_nodes": [["tf.math.reduce_mean_29", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_14", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_14", "inbound_nodes": [["tf.__operators__.add_28", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_42", "inbound_nodes": [["tf.math.rsqrt_14", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_44", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_44", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"y": ["tf.math.multiply_42", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_28", "inbound_nodes": [["tf.math.multiply_42", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_14", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_14", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_44", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_43", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_29", "inbound_nodes": [["tf.math.subtract_14", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_29", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_29", "inbound_nodes": [["tf.math.multiply_43", 0, 0, {"y": ["tf.cast_29", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_20", "inbound_nodes": [[["tf.__operators__.add_29", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_14", "inbound_nodes": [[["conv2d_20", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_30", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_30", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_15", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_15", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_15", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_15", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.stop_gradient_15", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_31", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_31", "inbound_nodes": [["tf.math.squared_difference_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_30", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_30", "inbound_nodes": [["tf.math.reduce_mean_31", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_15", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_15", "inbound_nodes": [["tf.__operators__.add_30", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_45", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_45", "inbound_nodes": [["tf.math.rsqrt_15", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_47", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_47", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"y": ["tf.math.multiply_45", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_30", "inbound_nodes": [["tf.math.multiply_45", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_15", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_15", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_47", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_46", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_46", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_31", "inbound_nodes": [["tf.math.subtract_15", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_31", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_31", "inbound_nodes": [["tf.math.multiply_46", 0, 0, {"y": ["tf.cast_31", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_21", "inbound_nodes": [[["tf.__operators__.add_31", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_15", "inbound_nodes": [[["conv2d_21", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_32", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_32", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_16", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_16", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_16", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_16", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.stop_gradient_16", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_33", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_33", "inbound_nodes": [["tf.math.squared_difference_16", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_32", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_32", "inbound_nodes": [["tf.math.reduce_mean_33", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_16", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_16", "inbound_nodes": [["tf.__operators__.add_32", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_48", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_48", "inbound_nodes": [["tf.math.rsqrt_16", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_50", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_50", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"y": ["tf.math.multiply_48", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_32", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_32", "inbound_nodes": [["tf.math.multiply_48", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_16", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_16", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_50", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_49", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_49", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.cast_32", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_33", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_33", "inbound_nodes": [["tf.math.subtract_16", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_33", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_33", "inbound_nodes": [["tf.math.multiply_49", 0, 0, {"y": ["tf.cast_33", 0, 0], "name": null}]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_4", "inbound_nodes": [[["tf.__operators__.add_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_22", "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["conv2d_22", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_34", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_34", "inbound_nodes": [["dropout_3", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_17", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_17", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_17", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_17", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.stop_gradient_17", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_35", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_35", "inbound_nodes": [["tf.math.squared_difference_17", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_34", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_34", "inbound_nodes": [["tf.math.reduce_mean_35", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_17", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_17", "inbound_nodes": [["tf.__operators__.add_34", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_51", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_51", "inbound_nodes": [["tf.math.rsqrt_17", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_53", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_53", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"y": ["tf.math.multiply_51", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_34", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_34", "inbound_nodes": [["tf.math.multiply_51", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_17", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_17", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_53", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_52", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_52", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.cast_34", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_35", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_35", "inbound_nodes": [["tf.math.subtract_17", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_35", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_35", "inbound_nodes": [["tf.math.multiply_52", 0, 0, {"y": ["tf.cast_35", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["tf.__operators__.add_35", 0, 0, {}], ["tf.__operators__.add_31", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_5", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_23", "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_4", "inbound_nodes": [[["conv2d_23", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_36", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_36", "inbound_nodes": [["dropout_4", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_18", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_18", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_18", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_18", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.stop_gradient_18", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_37", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_37", "inbound_nodes": [["tf.math.squared_difference_18", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_36", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_36", "inbound_nodes": [["tf.math.reduce_mean_37", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_18", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_18", "inbound_nodes": [["tf.__operators__.add_36", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_54", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_54", "inbound_nodes": [["tf.math.rsqrt_18", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_56", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_56", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"y": ["tf.math.multiply_54", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_36", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_36", "inbound_nodes": [["tf.math.multiply_54", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_18", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_18", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_56", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_55", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_55", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.cast_36", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_37", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_37", "inbound_nodes": [["tf.math.subtract_18", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_37", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_37", "inbound_nodes": [["tf.math.multiply_55", 0, 0, {"y": ["tf.cast_37", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_4", "inbound_nodes": [[["tf.__operators__.add_37", 0, 0, {}], ["tf.__operators__.add_29", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_6", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_24", "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_5", "inbound_nodes": [[["conv2d_24", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_38", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_38", "inbound_nodes": [["dropout_5", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_19", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_19", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_19", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_19", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.stop_gradient_19", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_39", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_39", "inbound_nodes": [["tf.math.squared_difference_19", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_38", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_38", "inbound_nodes": [["tf.math.reduce_mean_39", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_19", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_19", "inbound_nodes": [["tf.__operators__.add_38", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_57", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_57", "inbound_nodes": [["tf.math.rsqrt_19", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_59", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_59", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"y": ["tf.math.multiply_57", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_38", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_38", "inbound_nodes": [["tf.math.multiply_57", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_19", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_19", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_59", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_58", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_58", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.cast_38", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_39", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_39", "inbound_nodes": [["tf.math.subtract_19", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_39", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_39", "inbound_nodes": [["tf.math.multiply_58", 0, 0, {"y": ["tf.cast_39", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_5", "inbound_nodes": [[["tf.__operators__.add_39", 0, 0, {}], ["tf.__operators__.add_27", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_7", "inbound_nodes": [[["concatenate_5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]]}], "input_layers": [["input_4", 0, 0]], "output_layers": [["conv2d_25", 0, 0]]}, "shared_object_id": 130, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input_4"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_12", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_26", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_26", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_13", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_13", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"name": null}]], "shared_object_id": 6}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_13", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_13", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.stop_gradient_13", 0, 0], "name": null}]], "shared_object_id": 7}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_27", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_27", "inbound_nodes": [["tf.math.squared_difference_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_26", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_26", "inbound_nodes": [["tf.math.reduce_mean_27", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_13", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_13", "inbound_nodes": [["tf.__operators__.add_26", 0, 0, {}]], "shared_object_id": 10}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_39", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_39", "inbound_nodes": [["tf.math.rsqrt_13", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_41", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"y": ["tf.math.multiply_39", 0, 0], "name": null}]], "shared_object_id": 12}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_26", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_26", "inbound_nodes": [["tf.math.multiply_39", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_13", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_13", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_41", 0, 0], "name": null}]], "shared_object_id": 14}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_40", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.cast_26", 0, 0], "name": null}]], "shared_object_id": 15}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_27", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_27", "inbound_nodes": [["tf.math.subtract_13", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_27", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_27", "inbound_nodes": [["tf.math.multiply_40", 0, 0, {"y": ["tf.cast_27", 0, 0], "name": null}]], "shared_object_id": 17}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_13", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_28", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_28", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_14", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_14", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"name": null}]], "shared_object_id": 23}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_14", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_14", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.stop_gradient_14", 0, 0], "name": null}]], "shared_object_id": 24}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_29", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_29", "inbound_nodes": [["tf.math.squared_difference_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_28", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_28", "inbound_nodes": [["tf.math.reduce_mean_29", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_14", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_14", "inbound_nodes": [["tf.__operators__.add_28", 0, 0, {}]], "shared_object_id": 27}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_42", "inbound_nodes": [["tf.math.rsqrt_14", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_44", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_44", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"y": ["tf.math.multiply_42", 0, 0], "name": null}]], "shared_object_id": 29}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_28", "inbound_nodes": [["tf.math.multiply_42", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_14", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_14", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_44", 0, 0], "name": null}]], "shared_object_id": 31}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_43", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]], "shared_object_id": 32}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_29", "inbound_nodes": [["tf.math.subtract_14", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_29", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_29", "inbound_nodes": [["tf.math.multiply_43", 0, 0, {"y": ["tf.cast_29", 0, 0], "name": null}]], "shared_object_id": 34}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_20", "inbound_nodes": [[["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_14", "inbound_nodes": [[["conv2d_20", 0, 0, {}]]], "shared_object_id": 38}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_30", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_30", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_15", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_15", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"name": null}]], "shared_object_id": 40}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_15", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_15", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.stop_gradient_15", 0, 0], "name": null}]], "shared_object_id": 41}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_31", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_31", "inbound_nodes": [["tf.math.squared_difference_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_30", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_30", "inbound_nodes": [["tf.math.reduce_mean_31", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_15", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_15", "inbound_nodes": [["tf.__operators__.add_30", 0, 0, {}]], "shared_object_id": 44}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_45", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_45", "inbound_nodes": [["tf.math.rsqrt_15", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_47", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_47", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"y": ["tf.math.multiply_45", 0, 0], "name": null}]], "shared_object_id": 46}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_30", "inbound_nodes": [["tf.math.multiply_45", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_15", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_15", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_47", 0, 0], "name": null}]], "shared_object_id": 48}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_46", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_46", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": null}]], "shared_object_id": 49}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_31", "inbound_nodes": [["tf.math.subtract_15", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_31", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_31", "inbound_nodes": [["tf.math.multiply_46", 0, 0, {"y": ["tf.cast_31", 0, 0], "name": null}]], "shared_object_id": 51}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_21", "inbound_nodes": [[["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 54}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_15", "inbound_nodes": [[["conv2d_21", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_32", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_32", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_16", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_16", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"name": null}]], "shared_object_id": 57}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_16", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_16", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.stop_gradient_16", 0, 0], "name": null}]], "shared_object_id": 58}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_33", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_33", "inbound_nodes": [["tf.math.squared_difference_16", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_32", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_32", "inbound_nodes": [["tf.math.reduce_mean_33", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_16", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_16", "inbound_nodes": [["tf.__operators__.add_32", 0, 0, {}]], "shared_object_id": 61}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_48", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_48", "inbound_nodes": [["tf.math.rsqrt_16", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_50", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_50", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"y": ["tf.math.multiply_48", 0, 0], "name": null}]], "shared_object_id": 63}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_32", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_32", "inbound_nodes": [["tf.math.multiply_48", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_16", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_16", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_50", 0, 0], "name": null}]], "shared_object_id": 65}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_49", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_49", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.cast_32", 0, 0], "name": null}]], "shared_object_id": 66}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_33", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_33", "inbound_nodes": [["tf.math.subtract_16", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_33", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_33", "inbound_nodes": [["tf.math.multiply_49", 0, 0, {"y": ["tf.cast_33", 0, 0], "name": null}]], "shared_object_id": 68}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_4", "inbound_nodes": [[["tf.__operators__.add_33", 0, 0, {}]]], "shared_object_id": 69}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_22", "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}]]], "shared_object_id": 72}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["conv2d_22", 0, 0, {}]]], "shared_object_id": 73}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_34", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_34", "inbound_nodes": [["dropout_3", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_17", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_17", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"name": null}]], "shared_object_id": 75}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_17", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_17", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.stop_gradient_17", 0, 0], "name": null}]], "shared_object_id": 76}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_35", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_35", "inbound_nodes": [["tf.math.squared_difference_17", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_34", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_34", "inbound_nodes": [["tf.math.reduce_mean_35", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_17", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_17", "inbound_nodes": [["tf.__operators__.add_34", 0, 0, {}]], "shared_object_id": 79}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_51", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_51", "inbound_nodes": [["tf.math.rsqrt_17", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_53", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_53", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"y": ["tf.math.multiply_51", 0, 0], "name": null}]], "shared_object_id": 81}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_34", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_34", "inbound_nodes": [["tf.math.multiply_51", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_17", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_17", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_53", 0, 0], "name": null}]], "shared_object_id": 83}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_52", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_52", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.cast_34", 0, 0], "name": null}]], "shared_object_id": 84}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_35", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_35", "inbound_nodes": [["tf.math.subtract_17", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_35", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_35", "inbound_nodes": [["tf.math.multiply_52", 0, 0, {"y": ["tf.cast_35", 0, 0], "name": null}]], "shared_object_id": 86}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["tf.__operators__.add_35", 0, 0, {}], ["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 87}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_5", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 88}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_23", "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}]]], "shared_object_id": 91}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_4", "inbound_nodes": [[["conv2d_23", 0, 0, {}]]], "shared_object_id": 92}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_36", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_36", "inbound_nodes": [["dropout_4", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_18", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_18", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"name": null}]], "shared_object_id": 94}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_18", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_18", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.stop_gradient_18", 0, 0], "name": null}]], "shared_object_id": 95}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_37", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_37", "inbound_nodes": [["tf.math.squared_difference_18", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_36", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_36", "inbound_nodes": [["tf.math.reduce_mean_37", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_18", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_18", "inbound_nodes": [["tf.__operators__.add_36", 0, 0, {}]], "shared_object_id": 98}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_54", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_54", "inbound_nodes": [["tf.math.rsqrt_18", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_56", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_56", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"y": ["tf.math.multiply_54", 0, 0], "name": null}]], "shared_object_id": 100}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_36", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_36", "inbound_nodes": [["tf.math.multiply_54", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_18", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_18", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_56", 0, 0], "name": null}]], "shared_object_id": 102}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_55", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_55", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.cast_36", 0, 0], "name": null}]], "shared_object_id": 103}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_37", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_37", "inbound_nodes": [["tf.math.subtract_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_37", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_37", "inbound_nodes": [["tf.math.multiply_55", 0, 0, {"y": ["tf.cast_37", 0, 0], "name": null}]], "shared_object_id": 105}, {"class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_4", "inbound_nodes": [[["tf.__operators__.add_37", 0, 0, {}], ["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 106}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_6", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 107}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_24", "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]], "shared_object_id": 110}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_5", "inbound_nodes": [[["conv2d_24", 0, 0, {}]]], "shared_object_id": 111}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_38", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_38", "inbound_nodes": [["dropout_5", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_19", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_19", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"name": null}]], "shared_object_id": 113}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_19", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_19", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.stop_gradient_19", 0, 0], "name": null}]], "shared_object_id": 114}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_39", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_39", "inbound_nodes": [["tf.math.squared_difference_19", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_38", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_38", "inbound_nodes": [["tf.math.reduce_mean_39", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_19", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_19", "inbound_nodes": [["tf.__operators__.add_38", 0, 0, {}]], "shared_object_id": 117}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_57", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_57", "inbound_nodes": [["tf.math.rsqrt_19", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_59", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_59", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"y": ["tf.math.multiply_57", 0, 0], "name": null}]], "shared_object_id": 119}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_38", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_38", "inbound_nodes": [["tf.math.multiply_57", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_19", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_19", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_59", 0, 0], "name": null}]], "shared_object_id": 121}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_58", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_58", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.cast_38", 0, 0], "name": null}]], "shared_object_id": 122}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_39", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_39", "inbound_nodes": [["tf.math.subtract_19", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_39", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_39", "inbound_nodes": [["tf.math.multiply_58", 0, 0, {"y": ["tf.cast_39", 0, 0], "name": null}]], "shared_object_id": 124}, {"class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_5", "inbound_nodes": [[["tf.__operators__.add_39", 0, 0, {}], ["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 125}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_7", "inbound_nodes": [[["concatenate_5", 0, 0, {}]]], "shared_object_id": 126}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]], "shared_object_id": 129}], "input_layers": [["input_4", 0, 0]], "output_layers": [["conv2d_25", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
?

xkernel
ybias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 132}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 4}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_26", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_13", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"name": null}]], "shared_object_id": 6}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_13", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.stop_gradient_13", 0, 0], "name": null}]], "shared_object_id": 7}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_27", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_26", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_27", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_13", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_26", 0, 0, {}]], "shared_object_id": 10}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_39", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_13", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"y": ["tf.math.multiply_39", 0, 0], "name": null}]], "shared_object_id": 12}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_26", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_39", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_13", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_41", 0, 0], "name": null}]], "shared_object_id": 14}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.cast_26", 0, 0], "name": null}]], "shared_object_id": 15}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_27", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_13", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_27", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_40", 0, 0, {"y": ["tf.cast_27", 0, 0], "name": null}]], "shared_object_id": 17}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 133}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 32]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 21}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_28", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_14", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"name": null}]], "shared_object_id": 23}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_14", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.stop_gradient_14", 0, 0], "name": null}]], "shared_object_id": 24}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_29", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_28", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_29", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_14", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_28", 0, 0, {}]], "shared_object_id": 27}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_14", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_44", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"y": ["tf.math.multiply_42", 0, 0], "name": null}]], "shared_object_id": 29}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_42", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_14", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_44", 0, 0], "name": null}]], "shared_object_id": 31}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]], "shared_object_id": 32}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_14", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_29", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_43", 0, 0, {"y": ["tf.cast_29", 0, 0], "name": null}]], "shared_object_id": 34}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 134}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_20", 0, 0, {}]]], "shared_object_id": 38}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_30", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_15", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"name": null}]], "shared_object_id": 40}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_15", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.stop_gradient_15", 0, 0], "name": null}]], "shared_object_id": 41}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_31", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_30", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_31", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_15", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_30", 0, 0, {}]], "shared_object_id": 44}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_45", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_15", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_47", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"y": ["tf.math.multiply_45", 0, 0], "name": null}]], "shared_object_id": 46}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_45", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_15", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_47", 0, 0], "name": null}]], "shared_object_id": 48}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_46", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": null}]], "shared_object_id": 49}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_15", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_31", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_46", 0, 0, {"y": ["tf.cast_31", 0, 0], "name": null}]], "shared_object_id": 51}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 135}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_21", 0, 0, {}]]], "shared_object_id": 55}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_32", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_16", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"name": null}]], "shared_object_id": 57}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_16", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.stop_gradient_16", 0, 0], "name": null}]], "shared_object_id": 58}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_33", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_16", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_32", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_33", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_16", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_32", 0, 0, {}]], "shared_object_id": 61}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_48", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_16", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_50", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"y": ["tf.math.multiply_48", 0, 0], "name": null}]], "shared_object_id": 63}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_32", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_48", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_16", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_50", 0, 0], "name": null}]], "shared_object_id": 65}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_49", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.cast_32", 0, 0], "name": null}]], "shared_object_id": 66}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_33", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_16", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_33", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_49", 0, 0, {"y": ["tf.cast_33", 0, 0], "name": null}]], "shared_object_id": 68}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["tf.__operators__.add_33", 0, 0, {}]]], "shared_object_id": 69, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 136}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}]]], "shared_object_id": 72, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 137}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 256]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_22", 0, 0, {}]]], "shared_object_id": 73}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_34", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_3", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_17", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"name": null}]], "shared_object_id": 75}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_17", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.stop_gradient_17", 0, 0], "name": null}]], "shared_object_id": 76}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_35", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_17", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_34", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_35", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_17", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_34", 0, 0, {}]], "shared_object_id": 79}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_51", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_17", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_53", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"y": ["tf.math.multiply_51", 0, 0], "name": null}]], "shared_object_id": 81}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_34", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_51", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_17", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_53", 0, 0], "name": null}]], "shared_object_id": 83}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_52", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.cast_34", 0, 0], "name": null}]], "shared_object_id": 84}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_35", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_17", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_35", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_52", 0, 0, {"y": ["tf.cast_35", 0, 0], "name": null}]], "shared_object_id": 86}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_35", 0, 0, {}], ["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 87, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 128]}, {"class_name": "TensorShape", "items": [null, 32, 32, 128]}]}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 88, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 138}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}]]], "shared_object_id": 91, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 139}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_23", 0, 0, {}]]], "shared_object_id": 92}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_36", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_4", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_18", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"name": null}]], "shared_object_id": 94}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_18", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.stop_gradient_18", 0, 0], "name": null}]], "shared_object_id": 95}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_37", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_18", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_36", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_37", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_18", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_36", 0, 0, {}]], "shared_object_id": 98}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_54", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_18", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_56", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"y": ["tf.math.multiply_54", 0, 0], "name": null}]], "shared_object_id": 100}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_36", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_54", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_18", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_56", 0, 0], "name": null}]], "shared_object_id": 102}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_55", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.cast_36", 0, 0], "name": null}]], "shared_object_id": 103}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_37", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_37", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_55", 0, 0, {"y": ["tf.cast_37", 0, 0], "name": null}]], "shared_object_id": 105}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_37", 0, 0, {}], ["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 106, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 64, 64, 64]}, {"class_name": "TensorShape", "items": [null, 64, 64, 64]}]}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 107, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 140}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]], "shared_object_id": 110, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 141}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 128]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_24", 0, 0, {}]]], "shared_object_id": 111}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_38", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_5", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.stop_gradient_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_19", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"name": null}]], "shared_object_id": 113}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.squared_difference_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_19", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.stop_gradient_19", 0, 0], "name": null}]], "shared_object_id": 114}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.reduce_mean_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_39", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_19", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_38", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_39", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.rsqrt_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_19", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_38", 0, 0, {}]], "shared_object_id": 117}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_57", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_19", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_59", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"y": ["tf.math.multiply_57", 0, 0], "name": null}]], "shared_object_id": 119}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_38", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_57", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_19", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_59", 0, 0], "name": null}]], "shared_object_id": 121}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_58", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.cast_38", 0, 0], "name": null}]], "shared_object_id": 122}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.cast_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_39", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_19", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}
?
?	keras_api"?
_tf_keras_layer?{"name": "tf.__operators__.add_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_39", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_58", 0, 0, {"y": ["tf.cast_39", 0, 0], "name": null}]], "shared_object_id": 124}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_39", 0, 0, {}], ["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 125, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 128, 32]}, {"class_name": "TensorShape", "items": [null, 128, 128, 32]}]}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_5", 0, 0, {}]]], "shared_object_id": 126, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 142}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]], "shared_object_id": 129, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 143}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 64]}}
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
?layer_metrics
?layers
?metrics
s	variables
?non_trainable_variables
ttrainable_variables
uregularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_18/kernel
: 2conv2d_18/bias
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
?layer_metrics
?layers
?metrics
z	variables
?non_trainable_variables
{trainable_variables
|regularization_losses
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
?layer_metrics
?layers
?metrics
~	variables
?non_trainable_variables
trainable_variables
?regularization_losses
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
*:( @2conv2d_19/kernel
:@2conv2d_19/bias
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
+:)@?2conv2d_20/kernel
:?2conv2d_20/bias
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
,:*??2conv2d_21/kernel
:?2conv2d_21/bias
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_22/kernel
:?2conv2d_22/bias
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)?@2conv2d_23/kernel
:@2conv2d_23/bias
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)? 2conv2d_24/kernel
: 2conv2d_24/bias
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@2conv2d_25/kernel
:2conv2d_25/bias
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
?2?
"__inference__wrapped_model_8735711?
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
input_4???????????
?2?
)__inference_model_3_layer_call_fn_8736189
)__inference_model_3_layer_call_fn_8737241
)__inference_model_3_layer_call_fn_8737306
)__inference_model_3_layer_call_fn_8736755?
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
D__inference_model_3_layer_call_and_return_conditional_losses_8737510
D__inference_model_3_layer_call_and_return_conditional_losses_8737735
D__inference_model_3_layer_call_and_return_conditional_losses_8736932
D__inference_model_3_layer_call_and_return_conditional_losses_8737109?
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
+__inference_conv2d_18_layer_call_fn_8737744?
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
F__inference_conv2d_18_layer_call_and_return_conditional_losses_8737754?
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
0__inference_leaky_re_lu_12_layer_call_fn_8737759?
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
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_8737764?
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
+__inference_conv2d_19_layer_call_fn_8737773?
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
F__inference_conv2d_19_layer_call_and_return_conditional_losses_8737783?
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
0__inference_leaky_re_lu_13_layer_call_fn_8737788?
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
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_8737793?
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
+__inference_conv2d_20_layer_call_fn_8737802?
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
F__inference_conv2d_20_layer_call_and_return_conditional_losses_8737812?
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
0__inference_leaky_re_lu_14_layer_call_fn_8737817?
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
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_8737822?
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
+__inference_conv2d_21_layer_call_fn_8737831?
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
F__inference_conv2d_21_layer_call_and_return_conditional_losses_8737841?
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
0__inference_leaky_re_lu_15_layer_call_fn_8737846?
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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_8737851?
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
1__inference_up_sampling2d_4_layer_call_fn_8735730?
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
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8735724?
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
+__inference_conv2d_22_layer_call_fn_8737860?
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
F__inference_conv2d_22_layer_call_and_return_conditional_losses_8737871?
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
+__inference_dropout_3_layer_call_fn_8737876
+__inference_dropout_3_layer_call_fn_8737881?
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_8737886
F__inference_dropout_3_layer_call_and_return_conditional_losses_8737898?
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
/__inference_concatenate_3_layer_call_fn_8737904?
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
J__inference_concatenate_3_layer_call_and_return_conditional_losses_8737911?
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
1__inference_up_sampling2d_5_layer_call_fn_8735749?
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
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8735743?
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
+__inference_conv2d_23_layer_call_fn_8737920?
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
F__inference_conv2d_23_layer_call_and_return_conditional_losses_8737931?
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
+__inference_dropout_4_layer_call_fn_8737936
+__inference_dropout_4_layer_call_fn_8737941?
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
F__inference_dropout_4_layer_call_and_return_conditional_losses_8737946
F__inference_dropout_4_layer_call_and_return_conditional_losses_8737958?
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
/__inference_concatenate_4_layer_call_fn_8737964?
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
J__inference_concatenate_4_layer_call_and_return_conditional_losses_8737971?
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
1__inference_up_sampling2d_6_layer_call_fn_8735768?
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
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8735762?
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
+__inference_conv2d_24_layer_call_fn_8737980?
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
F__inference_conv2d_24_layer_call_and_return_conditional_losses_8737991?
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
+__inference_dropout_5_layer_call_fn_8737996
+__inference_dropout_5_layer_call_fn_8738001?
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
F__inference_dropout_5_layer_call_and_return_conditional_losses_8738006
F__inference_dropout_5_layer_call_and_return_conditional_losses_8738018?
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
/__inference_concatenate_5_layer_call_fn_8738024?
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
J__inference_concatenate_5_layer_call_and_return_conditional_losses_8738031?
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
1__inference_up_sampling2d_7_layer_call_fn_8735787?
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
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_8735781?
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
+__inference_conv2d_25_layer_call_fn_8738040?
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
F__inference_conv2d_25_layer_call_and_return_conditional_losses_8738051?
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
%__inference_signature_wrapper_8737176input_4"?
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
"__inference__wrapped_model_8735711?:xy????????????????????????????:?7
0?-
+?(
input_4???????????
? "??<
:
	conv2d_25-?*
	conv2d_25????????????
J__inference_concatenate_3_layer_call_and_return_conditional_losses_8737911?~?{
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
/__inference_concatenate_3_layer_call_fn_8737904?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1?????????  ?
? "!??????????  ??
J__inference_concatenate_4_layer_call_and_return_conditional_losses_8737971?|?y
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
/__inference_concatenate_4_layer_call_fn_8737964?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????@@@
? "!??????????@@??
J__inference_concatenate_5_layer_call_and_return_conditional_losses_8738031?~?{
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
/__inference_concatenate_5_layer_call_fn_8738024?~?{
t?q
o?l
<?9
inputs/0+??????????????????????????? 
,?)
inputs/1??????????? 
? ""????????????@?
F__inference_conv2d_18_layer_call_and_return_conditional_losses_8737754pxy9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
+__inference_conv2d_18_layer_call_fn_8737744cxy9?6
/?,
*?'
inputs???????????
? ""???????????? ?
F__inference_conv2d_19_layer_call_and_return_conditional_losses_8737783p??9?6
/?,
*?'
inputs??????????? 
? "-?*
#? 
0?????????@@@
? ?
+__inference_conv2d_19_layer_call_fn_8737773c??9?6
/?,
*?'
inputs??????????? 
? " ??????????@@@?
F__inference_conv2d_20_layer_call_and_return_conditional_losses_8737812o??7?4
-?*
(?%
inputs?????????@@@
? ".?+
$?!
0?????????  ?
? ?
+__inference_conv2d_20_layer_call_fn_8737802b??7?4
-?*
(?%
inputs?????????@@@
? "!??????????  ??
F__inference_conv2d_21_layer_call_and_return_conditional_losses_8737841p??8?5
.?+
)?&
inputs?????????  ?
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_21_layer_call_fn_8737831c??8?5
.?+
)?&
inputs?????????  ?
? "!????????????
F__inference_conv2d_22_layer_call_and_return_conditional_losses_8737871???J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_conv2d_22_layer_call_fn_8737860???J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_conv2d_23_layer_call_and_return_conditional_losses_8737931???J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_conv2d_23_layer_call_fn_8737920???J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
F__inference_conv2d_24_layer_call_and_return_conditional_losses_8737991???J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+??????????????????????????? 
? ?
+__inference_conv2d_24_layer_call_fn_8737980???J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+??????????????????????????? ?
F__inference_conv2d_25_layer_call_and_return_conditional_losses_8738051???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
+__inference_conv2d_25_layer_call_fn_8738040???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
F__inference_dropout_3_layer_call_and_return_conditional_losses_8737886?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
F__inference_dropout_3_layer_call_and_return_conditional_losses_8737898?N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_dropout_3_layer_call_fn_8737876?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
+__inference_dropout_3_layer_call_fn_8737881?N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
F__inference_dropout_4_layer_call_and_return_conditional_losses_8737946?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
F__inference_dropout_4_layer_call_and_return_conditional_losses_8737958?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_dropout_4_layer_call_fn_8737936?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
+__inference_dropout_4_layer_call_fn_8737941?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
F__inference_dropout_5_layer_call_and_return_conditional_losses_8738006?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
F__inference_dropout_5_layer_call_and_return_conditional_losses_8738018?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
+__inference_dropout_5_layer_call_fn_8737996?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
+__inference_dropout_5_layer_call_fn_8738001?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
K__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_8737764l9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0??????????? 
? ?
0__inference_leaky_re_lu_12_layer_call_fn_8737759_9?6
/?,
*?'
inputs??????????? 
? ""???????????? ?
K__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_8737793h7?4
-?*
(?%
inputs?????????@@@
? "-?*
#? 
0?????????@@@
? ?
0__inference_leaky_re_lu_13_layer_call_fn_8737788[7?4
-?*
(?%
inputs?????????@@@
? " ??????????@@@?
K__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_8737822j8?5
.?+
)?&
inputs?????????  ?
? ".?+
$?!
0?????????  ?
? ?
0__inference_leaky_re_lu_14_layer_call_fn_8737817]8?5
.?+
)?&
inputs?????????  ?
? "!??????????  ??
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_8737851j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
0__inference_leaky_re_lu_15_layer_call_fn_8737846]8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_model_3_layer_call_and_return_conditional_losses_8736932?:xy????????????????????????????B??
8?5
+?(
input_4???????????
p 

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_8737109?:xy????????????????????????????B??
8?5
+?(
input_4???????????
p

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_8737510?:xy????????????????????????????A?>
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
D__inference_model_3_layer_call_and_return_conditional_losses_8737735?:xy????????????????????????????A?>
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
)__inference_model_3_layer_call_fn_8736189?:xy????????????????????????????B??
8?5
+?(
input_4???????????
p 

 
? "2?/+????????????????????????????
)__inference_model_3_layer_call_fn_8736755?:xy????????????????????????????B??
8?5
+?(
input_4???????????
p

 
? "2?/+????????????????????????????
)__inference_model_3_layer_call_fn_8737241?:xy????????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "2?/+????????????????????????????
)__inference_model_3_layer_call_fn_8737306?:xy????????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "2?/+????????????????????????????
%__inference_signature_wrapper_8737176?:xy????????????????????????????E?B
? 
;?8
6
input_4+?(
input_4???????????"??<
:
	conv2d_25-?*
	conv2d_25????????????
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_8735724?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_up_sampling2d_4_layer_call_fn_8735730?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_8735743?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_up_sampling2d_5_layer_call_fn_8735749?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_8735762?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_up_sampling2d_6_layer_call_fn_8735768?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_8735781?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_up_sampling2d_7_layer_call_fn_8735787?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????