#
ٍأ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
alphafloat%حجL>"
Ttype0:
2

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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	

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
list(type)(0
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
list(type)(0
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

2	
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718زب

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

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

conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_20/kernel
~
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*'
_output_shapes
:@*
dtype0
u
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_20/bias
n
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes	
:*
dtype0

conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_21/kernel

$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*(
_output_shapes
:*
dtype0
u
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_21/bias
n
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes	
:*
dtype0

conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_22/kernel

$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*(
_output_shapes
:*
dtype0
u
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_22/bias
n
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes	
:*
dtype0

conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_23/kernel
~
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*'
_output_shapes
:@*
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

conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_24/kernel
~
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*'
_output_shapes
: *
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

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
valueB *  ?
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
valueB@*  ?
l
Const_3Const*&
_output_shapes
:@*
dtype0*%
valueB@*    
n
Const_4Const*'
_output_shapes
:*
dtype0*&
valueB*  ?
n
Const_5Const*'
_output_shapes
:*
dtype0*&
valueB*    
n
Const_6Const*'
_output_shapes
:*
dtype0*&
valueB*  ?
n
Const_7Const*'
_output_shapes
:*
dtype0*&
valueB*    
n
Const_8Const*'
_output_shapes
:*
dtype0*&
valueB*  ?
n
Const_9Const*'
_output_shapes
:*
dtype0*&
valueB*    
m
Const_10Const*&
_output_shapes
:@*
dtype0*%
valueB@*  ?
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
valueB *  ?
m
Const_13Const*&
_output_shapes
: *
dtype0*%
valueB *    

NoOpNoOp
i
Const_14Const"/device:CPU:0*
_output_shapes
: *
dtype0*?h
value?hB?h B?h
ْ
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
regularization_losses
	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api
n
kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
V
trainable_variables
	variables
regularization_losses
	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

 	keras_api

?	keras_api

?	keras_api

?	keras_api

¤	keras_api
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
،trainable_variables
­	variables
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
؛	keras_api

?	keras_api
n
?kernel
	?bias
؟trainable_variables
?	variables
ءregularization_losses
آ	keras_api
V
أtrainable_variables
ؤ	variables
إregularization_losses
ئ	keras_api

ا	keras_api

ب	keras_api

ة	keras_api

ت	keras_api

ث	keras_api

ج	keras_api

ح	keras_api

خ	keras_api

د	keras_api

ذ	keras_api

ر	keras_api

ز	keras_api

س	keras_api
V
شtrainable_variables
ص	variables
ضregularization_losses
ط	keras_api
n
ظkernel
	عbias
غtrainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
ـregularization_losses
ف	keras_api

ق	keras_api

ك	keras_api

ل	keras_api

م	keras_api

ن	keras_api

ه	keras_api

و	keras_api

ى	keras_api

ي	keras_api

ً	keras_api

ٌ	keras_api

ٍ	keras_api

َ	keras_api
V
ُtrainable_variables
ِ	variables
ّregularization_losses
ْ	keras_api
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
	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api

	keras_api
V
trainable_variables
	variables
regularization_losses
	keras_api
V
trainable_variables
	variables
regularization_losses
	keras_api
n
kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
V
trainable_variables
	variables
regularization_losses
	keras_api

 	keras_api

?	keras_api

?	keras_api

?	keras_api

¤	keras_api
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
،	keras_api
V
­trainable_variables
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

x0
y1
2
3
?4
?5
?6
?7
ظ8
ع9
?10
?11
12
13
?14
?15

x0
y1
2
3
?4
?5
?6
?7
ظ8
ع9
?10
?11
12
13
?14
?15
 
?
 ؛layer_regularization_losses
strainable_variables
?non_trainable_variables
?layer_metrics
?layers
t	variables
uregularization_losses
؟metrics
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
ztrainable_variables
ءnon_trainable_variables
آlayer_metrics
أlayers
{	variables
|regularization_losses
ؤmetrics
 
 
 
?
 إlayer_regularization_losses
~trainable_variables
ئnon_trainable_variables
اlayer_metrics
بlayers
	variables
regularization_losses
ةmetrics
 
 
 
 
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
0
1

0
1
 
?
 تlayer_regularization_losses
trainable_variables
ثnon_trainable_variables
جlayer_metrics
حlayers
	variables
regularization_losses
خmetrics
 
 
 
?
 دlayer_regularization_losses
trainable_variables
ذnon_trainable_variables
رlayer_metrics
زlayers
	variables
regularization_losses
سmetrics
 
 
 
 
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
 شlayer_regularization_losses
?trainable_variables
صnon_trainable_variables
ضlayer_metrics
طlayers
?	variables
?regularization_losses
ظmetrics
 
 
 
?
 عlayer_regularization_losses
،trainable_variables
غnon_trainable_variables
?layer_metrics
?layers
­	variables
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
؟trainable_variables
?non_trainable_variables
ـlayer_metrics
فlayers
?	variables
ءregularization_losses
قmetrics
 
 
 
?
 كlayer_regularization_losses
أtrainable_variables
لnon_trainable_variables
مlayer_metrics
نlayers
ؤ	variables
إregularization_losses
هmetrics
 
 
 
 
 
 
 
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
 وlayer_regularization_losses
شtrainable_variables
ىnon_trainable_variables
يlayer_metrics
ًlayers
ص	variables
ضregularization_losses
ٌmetrics
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

ظ0
ع1

ظ0
ع1
 
?
 ٍlayer_regularization_losses
غtrainable_variables
َnon_trainable_variables
ُlayer_metrics
ِlayers
?	variables
?regularization_losses
ّmetrics
 
 
 
?
 ْlayer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
ـregularization_losses
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
ُtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
ِ	variables
ّregularization_losses
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
metrics
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
 layer_regularization_losses
?trainable_variables
non_trainable_variables
layer_metrics
layers
?	variables
?regularization_losses
metrics
 
 
 
?
 layer_regularization_losses
?trainable_variables
non_trainable_variables
layer_metrics
layers
?	variables
?regularization_losses
metrics
 
 
 
 
 
 
 
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
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
 
 
 
?
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
\Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
 
 
 
?
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
 
 
 
 
 
 
 
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
 layer_regularization_losses
­trainable_variables
 non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
 
 
 
?
 ¤layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
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
?trainable_variables
?non_trainable_variables
?layer_metrics
،layers
?	variables
?regularization_losses
­metrics
 
 
 

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

serving_default_input_4Placeholder*1
_output_shapes
:?????????*
dtype0*&
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4conv2d_18/kernelconv2d_18/biasConstConst_1conv2d_19/kernelconv2d_19/biasConst_2Const_3conv2d_20/kernelconv2d_20/biasConst_4Const_5conv2d_21/kernelconv2d_21/biasConst_6Const_7conv2d_22/kernelconv2d_22/biasConst_8Const_9conv2d_23/kernelconv2d_23/biasConst_10Const_11conv2d_24/kernelconv2d_24/biasConst_12Const_13conv2d_25/kernelconv2d_25/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_13022376
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

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
GPU2*0J 8 **
f%R#
!__inference__traced_save_13023336
؛
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
GPU2*0J 8 *-
f(R&
$__inference__traced_restore_13023394?

h
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_13021135

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
?


G__inference_conv2d_19_layer_call_and_return_conditional_losses_13021044

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
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
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs
?


G__inference_conv2d_21_layer_call_and_return_conditional_losses_13021124

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
ي
?
&__inference_signature_wrapper_13022376
input_4!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@
	unknown_8:	
	unknown_9

unknown_10&

unknown_11:

unknown_12:	

unknown_13

unknown_14&

unknown_15:

unknown_16:	

unknown_17

unknown_18%

unknown_19:@

unknown_20:@

unknown_21

unknown_22%

unknown_23: 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity?StatefulPartitionedCallز
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_130209112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
e
,__inference_dropout_3_layer_call_fn_13023081

inputs
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_130215062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ؤ
w
K__inference_concatenate_3_layer_call_and_return_conditional_losses_13023111
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,???????????????????????????:?????????  :l h
B
_output_shapes0
.:,???????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????  
"
_user_specified_name
inputs/1


G__inference_conv2d_24_layer_call_and_return_conditional_losses_13021268

inputs9
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
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
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_13021506

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeد
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2
dropout/GreaterEqual/yع
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,???????????????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,???????????????????????????2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs


G__inference_conv2d_23_layer_call_and_return_conditional_losses_13021217

inputs9
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
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
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_5_layer_call_fn_13020949

inputs
identityّ
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_130209432
PartitionedCall
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
E__inference_model_3_layer_call_and_return_conditional_losses_13022935

inputsB
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: 
tf_math_multiply_39_mul_y
unknownB
(conv2d_19_conv2d_readvariableop_resource: @7
)conv2d_19_biasadd_readvariableop_resource:@
tf_math_multiply_42_mul_y
	unknown_0C
(conv2d_20_conv2d_readvariableop_resource:@8
)conv2d_20_biasadd_readvariableop_resource:	
tf_math_multiply_45_mul_y
	unknown_1D
(conv2d_21_conv2d_readvariableop_resource:8
)conv2d_21_biasadd_readvariableop_resource:	
tf_math_multiply_48_mul_y
	unknown_2D
(conv2d_22_conv2d_readvariableop_resource:8
)conv2d_22_biasadd_readvariableop_resource:	
tf_math_multiply_51_mul_y
	unknown_3C
(conv2d_23_conv2d_readvariableop_resource:@7
)conv2d_23_biasadd_readvariableop_resource:@
tf_math_multiply_54_mul_y
	unknown_4C
(conv2d_24_conv2d_readvariableop_resource: 7
)conv2d_24_biasadd_readvariableop_resource: 
tf_math_multiply_57_mul_y
	unknown_5B
(conv2d_25_conv2d_readvariableop_resource:@7
)conv2d_25_biasadd_readvariableop_resource:
identity? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_18/Conv2D/ReadVariableOpأ
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_18/BiasAdd
leaky_re_lu_12/LeakyRelu	LeakyReluconv2d_18/BiasAdd:output:0*1
_output_shapes
:????????? 2
leaky_re_lu_12/LeakyRelu?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indicesٍ
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
 tf.stop_gradient_13/StopGradient
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference&leaky_re_lu_12/LeakyRelu:activations:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:????????? 21
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
 *o:2
tf.__operators__.add_26/yث
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2
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
tf.math.multiply_41/Mul
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul&leaky_re_lu_12/LeakyRelu:activations:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:????????? 2
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
conv2d_19/BiasAdd
leaky_re_lu_13/LeakyRelu	LeakyReluconv2d_19/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_13/LeakyRelu?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indicesٍ
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
 tf.stop_gradient_14/StopGradient
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
 *o:2
tf.__operators__.add_28/yث
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2
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
tf.math.multiply_44/Mul
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul&leaky_re_lu_13/LeakyRelu:activations:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul؛
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2D!tf.__operators__.add_29/AddV2:z:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_20/BiasAdd
leaky_re_lu_14/LeakyRelu	LeakyReluconv2d_20/BiasAdd:output:0*0
_output_shapes
:?????????  2
leaky_re_lu_14/LeakyRelu?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indicesَ
tf.math.reduce_mean_30/MeanMean&leaky_re_lu_14/LeakyRelu:activations:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_15/StopGradient
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference&leaky_re_lu_14/LeakyRelu:activations:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_30/yج
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_30/AddV2
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_47/Mul
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul&leaky_re_lu_14/LeakyRelu:activations:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_31/AddV2?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D!tf.__operators__.add_31/AddV2:z:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
conv2d_21/BiasAdd
leaky_re_lu_15/LeakyRelu	LeakyReluconv2d_21/BiasAdd:output:0*0
_output_shapes
:?????????2
leaky_re_lu_15/LeakyRelu?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indicesَ
tf.math.reduce_mean_32/MeanMean&leaky_re_lu_15/LeakyRelu:activations:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_16/StopGradient
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference&leaky_re_lu_15/LeakyRelu:activations:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:?????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_32/yج
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_32/AddV2
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_50/Mul
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul&leaky_re_lu_15/LeakyRelu:activations:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_33/AddV2
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const_1
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_4/mul
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_33/AddV2:z:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(2.
,up_sampling2d_4/resize/ResizeNearestNeighbor?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2D=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_22/BiasAdd
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  2
conv2d_22/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/dropout/Const?
dropout_3/dropout/MulMulconv2d_22/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:?????????  2
dropout_3/dropout/Mul~
dropout_3/dropout/ShapeShapeconv2d_22/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????  *
dtype020
.dropout_3/dropout/random_uniform/RandomUniform
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2"
 dropout_3/dropout/GreaterEqual/yُ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????  2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????  2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????  2
dropout_3/dropout/Mul_1?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indicesك
tf.math.reduce_mean_34/MeanMeandropout_3/dropout/Mul_1:z:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifferencedropout_3/dropout/Mul_1:z:0)tf.stop_gradient_17/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_34/yج
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_34/AddV2
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_53/Mul
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMuldropout_3/dropout/Mul_1:z:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_35/AddV2x
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axisن
concatenate_3/concatConcatV2!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
concatenate_3/concat
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_5/Const
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/Const_1
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_5/mul
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(2.
,up_sampling2d_5/resize/ResizeNearestNeighbor?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:@*
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
 *   ?2
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
dropout_4/dropout/Shapeغ
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@@*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2"
 dropout_4/dropout/GreaterEqual/yَ
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
-tf.math.reduce_mean_36/Mean/reduction_indicesق
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
 *o:2
tf.__operators__.add_36/yث
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2
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
tf.math.multiply_56/Mul
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub­
tf.math.multiply_55/MulMuldropout_4/dropout/Mul_1:z:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_55/Mul؛
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
concatenate_4/concat/axisن
concatenate_4/concatConcatV2!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0"concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
concatenate_4/concat
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_6/Const
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_6/Const_1
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_6/mul
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_4/concat:output:0up_sampling2d_6/mul:z:0*
T0*2
_output_shapes 
:?????????*
half_pixel_centers(2.
,up_sampling2d_6/resize/ResizeNearestNeighbor?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2D=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_24/BiasAdd
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:????????? 2
conv2d_24/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/dropout/Const?
dropout_5/dropout/MulMulconv2d_24/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*1
_output_shapes
:????????? 2
dropout_5/dropout/Mul~
dropout_5/dropout/ShapeShapeconv2d_24/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*1
_output_shapes
:????????? *
dtype020
.dropout_5/dropout/random_uniform/RandomUniform
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2"
 dropout_5/dropout/GreaterEqual/yِ
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:????????? 2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:????????? 2
dropout_5/dropout/Cast،
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*1
_output_shapes
:????????? 2
dropout_5/dropout/Mul_1?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indicesق
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
:????????? 21
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
 *o:2
tf.__operators__.add_38/yث
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2
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
tf.math.multiply_59/Mul
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMuldropout_5/dropout/Mul_1:z:0tf.math.multiply_57/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_39/AddV2x
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_5/concat/axisه
concatenate_5/concatConcatV2!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0"concatenate_5/concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
concatenate_5/concat
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const_1
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_7/mul
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_5/concat:output:0up_sampling2d_7/mul:z:0*
T0*1
_output_shapes
:?????????@*
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
:?????????*
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
:?????????2
conv2d_25/BiasAdd
conv2d_25/TanhTanhconv2d_25/BiasAdd:output:0*
T0*1
_output_shapes
:?????????2
conv2d_25/Tanh
IdentityIdentityconv2d_25/Tanh:y:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2D
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
:?????????
 
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
\
0__inference_concatenate_5_layer_call_fn_13023224
inputs_0
inputs_1
identityك
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_5_layer_call_and_return_conditional_losses_130213052
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:+??????????????????????????? :????????? :k g
A
_output_shapes/
-:+??????????????????????????? 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:????????? 
"
_user_specified_name
inputs/1

f
G__inference_dropout_5_layer_call_and_return_conditional_losses_13023218

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeخ
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
 *حجL>2
dropout/GreaterEqual/yظ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast
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
ء
*__inference_model_3_layer_call_fn_13021955
input_4!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@
	unknown_8:	
	unknown_9

unknown_10&

unknown_11:

unknown_12:	

unknown_13

unknown_14&

unknown_15:

unknown_16:	

unknown_17

unknown_18%

unknown_19:@

unknown_20:@

unknown_21

unknown_22%

unknown_23: 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity?StatefulPartitionedCall
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
GPU2*0J 8 *N
fIRG
E__inference_model_3_layer_call_and_return_conditional_losses_130218272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
,
ّ
!__inference__traced_save_13023336
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

identity_1?MergeV2Checkpoints
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
Const_1
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
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
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

identity_1Identity_1:output:0*ك
_input_shapesر
خ: : : : @:@:@::::::@:@: : :@:: 2(
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
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.	*
(
_output_shapes
::!


_output_shapes	
::-)
'
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
: : 
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
?
u
K__inference_concatenate_5_layer_call_and_return_conditional_losses_13021305

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:+??????????????????????????? :????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs:YU
1
_output_shapes
:????????? 
 
_user_specified_nameinputs


G__inference_conv2d_22_layer_call_and_return_conditional_losses_13021166

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_3_layer_call_fn_13023076

inputs
identityك
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_130211772
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs

f
G__inference_dropout_5_layer_call_and_return_conditional_losses_13021426

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeخ
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
 *حجL>2
dropout/GreaterEqual/yظ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast
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
N
2__inference_up_sampling2d_7_layer_call_fn_13020987

inputs
identityّ
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_130209812
PartitionedCall
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
??
?
E__inference_model_3_layer_call_and_return_conditional_losses_13021827

inputs,
conv2d_18_13021653:  
conv2d_18_13021655: 
tf_math_multiply_39_mul_y
unknown,
conv2d_19_13021676: @ 
conv2d_19_13021678:@
tf_math_multiply_42_mul_y
	unknown_0-
conv2d_20_13021699:@!
conv2d_20_13021701:	
tf_math_multiply_45_mul_y
	unknown_1.
conv2d_21_13021722:!
conv2d_21_13021724:	
tf_math_multiply_48_mul_y
	unknown_2.
conv2d_22_13021746:!
conv2d_22_13021748:	
tf_math_multiply_51_mul_y
	unknown_3-
conv2d_23_13021771:@ 
conv2d_23_13021773:@
tf_math_multiply_54_mul_y
	unknown_4-
conv2d_24_13021796:  
conv2d_24_13021798: 
tf_math_multiply_57_mul_y
	unknown_5,
conv2d_25_13021821:@ 
conv2d_25_13021823:
identity?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall،
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_13021653conv2d_18_13021655*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_130210042#
!conv2d_18/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_130210152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indicesَ
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
 tf.stop_gradient_13/StopGradient
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:????????? 21
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
 *o:2
tf.__operators__.add_26/yث
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2
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
tf.math.multiply_41/Mul
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub؛
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_27/AddV2إ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_13021676conv2d_19_13021678*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_130210442#
!conv2d_19/StatefulPartitionedCall
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
GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_130210552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indicesَ
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
 tf.stop_gradient_14/StopGradient
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
 *o:2
tf.__operators__.add_28/yث
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2
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
tf.math.multiply_44/Mul
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul؛
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2ئ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_13021699conv2d_20_13021701*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_130210842#
!conv2d_20/StatefulPartitionedCall
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_130210952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indicesُ
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_15/StopGradient
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_30/yج
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_30/AddV2
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_47/Mul
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_31/AddV2ئ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_13021722conv2d_21_13021724*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_130211242#
!conv2d_21/StatefulPartitionedCall
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_130211352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indicesُ
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_16/StopGradient
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:?????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_32/yج
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_32/AddV2
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_50/Mul
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_33/AddV2¤
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_130209242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_13021746conv2d_22_13021748*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_22_layer_call_and_return_conditional_losses_130211662#
!conv2d_22/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_130215062#
!dropout_3/StatefulPartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indicesْ
tf.math.reduce_mean_34/MeanMean*dropout_3/StatefulPartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_17/StopGradient
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference*dropout_3/StatefulPartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_34/yج
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_34/AddV2
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_53/Mul
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_17/Subد
tf.math.multiply_52/MulMul*dropout_3/StatefulPartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_52/Mulخ
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_3_layer_call_and_return_conditional_losses_130212032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_130209432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_13021771conv2d_23_13021773*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_23_layer_call_and_return_conditional_losses_130212172#
!conv2d_23/StatefulPartitionedCallض
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_130214662#
!dropout_4/StatefulPartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indicesّ
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
 tf.stop_gradient_18/StopGradient
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
 *o:2
tf.__operators__.add_36/yث
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2
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
tf.math.multiply_56/Mul
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Subخ
tf.math.multiply_55/MulMul*dropout_4/StatefulPartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_4_layer_call_and_return_conditional_losses_130212542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_130209622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_13021796conv2d_24_13021798*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_24_layer_call_and_return_conditional_losses_130212682#
!conv2d_24/StatefulPartitionedCallض
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_130214262#
!dropout_5/StatefulPartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indicesّ
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
 tf.stop_gradient_19/StopGradient
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
 *o:2
tf.__operators__.add_38/yث
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2
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
tf.math.multiply_59/Mul
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Subخ
tf.math.multiply_58/MulMul*dropout_5/StatefulPartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_5_layer_call_and_return_conditional_losses_130213052
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_130209812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_13021821conv2d_25_13021823*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_25_layer_call_and_return_conditional_losses_130213192#
!conv2d_25/StatefulPartitionedCall¤
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
:?????????
 
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
M
1__inference_leaky_re_lu_14_layer_call_fn_13023017

inputs
identityض
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_130210952
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  :X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs

?
,__inference_conv2d_25_layer_call_fn_13023240

inputs!
unknown:@
	unknown_0:
identity?StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_25_layer_call_and_return_conditional_losses_130213192
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
?
u
K__inference_concatenate_3_layer_call_and_return_conditional_losses_13021203

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,???????????????????????????:?????????  :j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????  
 
_user_specified_nameinputs

h
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_13022964

inputs
identity^
	LeakyRelu	LeakyReluinputs*1
_output_shapes
:????????? 2
	LeakyReluu
IdentityIdentityLeakyRelu:activations:0*
T0*1
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? :Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs
?


G__inference_conv2d_20_layer_call_and_return_conditional_losses_13021084

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????  2

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
ذ
?
,__inference_conv2d_20_layer_call_fn_13023002

inputs"
unknown:@
	unknown_0:	
identity?StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_130210842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????  2

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
\
0__inference_concatenate_4_layer_call_fn_13023164
inputs_0
inputs_1
identityق
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_4_layer_call_and_return_conditional_losses_130212542
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????@@2

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
?

G__inference_conv2d_25_layer_call_and_return_conditional_losses_13021319

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
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
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
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

?
,__inference_conv2d_23_layer_call_fn_13023120

inputs"
unknown:@
	unknown_0:@
identity?StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_23_layer_call_and_return_conditional_losses_130212172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_4_layer_call_and_return_conditional_losses_13021228

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity

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


G__inference_conv2d_21_layer_call_and_return_conditional_losses_13023041

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
??
؛
E__inference_model_3_layer_call_and_return_conditional_losses_13022309
input_4,
conv2d_18_13022135:  
conv2d_18_13022137: 
tf_math_multiply_39_mul_y
unknown,
conv2d_19_13022158: @ 
conv2d_19_13022160:@
tf_math_multiply_42_mul_y
	unknown_0-
conv2d_20_13022181:@!
conv2d_20_13022183:	
tf_math_multiply_45_mul_y
	unknown_1.
conv2d_21_13022204:!
conv2d_21_13022206:	
tf_math_multiply_48_mul_y
	unknown_2.
conv2d_22_13022228:!
conv2d_22_13022230:	
tf_math_multiply_51_mul_y
	unknown_3-
conv2d_23_13022253:@ 
conv2d_23_13022255:@
tf_math_multiply_54_mul_y
	unknown_4-
conv2d_24_13022278:  
conv2d_24_13022280: 
tf_math_multiply_57_mul_y
	unknown_5,
conv2d_25_13022303:@ 
conv2d_25_13022305:
identity?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall­
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_18_13022135conv2d_18_13022137*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_130210042#
!conv2d_18/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_130210152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indicesَ
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
 tf.stop_gradient_13/StopGradient
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:????????? 21
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
 *o:2
tf.__operators__.add_26/yث
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2
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
tf.math.multiply_41/Mul
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub؛
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_27/AddV2إ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_13022158conv2d_19_13022160*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_130210442#
!conv2d_19/StatefulPartitionedCall
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
GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_130210552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indicesَ
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
 tf.stop_gradient_14/StopGradient
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
 *o:2
tf.__operators__.add_28/yث
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2
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
tf.math.multiply_44/Mul
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul؛
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2ئ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_13022181conv2d_20_13022183*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_130210842#
!conv2d_20/StatefulPartitionedCall
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_130210952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indicesُ
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_15/StopGradient
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_30/yج
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_30/AddV2
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_47/Mul
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_31/AddV2ئ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_13022204conv2d_21_13022206*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_130211242#
!conv2d_21/StatefulPartitionedCall
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_130211352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indicesُ
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_16/StopGradient
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:?????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_32/yج
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_32/AddV2
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_50/Mul
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_33/AddV2¤
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_130209242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_13022228conv2d_22_13022230*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_22_layer_call_and_return_conditional_losses_130211662#
!conv2d_22/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_130215062#
!dropout_3/StatefulPartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indicesْ
tf.math.reduce_mean_34/MeanMean*dropout_3/StatefulPartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_17/StopGradient
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference*dropout_3/StatefulPartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_34/yج
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_34/AddV2
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_53/Mul
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_17/Subد
tf.math.multiply_52/MulMul*dropout_3/StatefulPartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_52/Mulخ
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_3_layer_call_and_return_conditional_losses_130212032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_130209432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_13022253conv2d_23_13022255*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_23_layer_call_and_return_conditional_losses_130212172#
!conv2d_23/StatefulPartitionedCallض
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_130214662#
!dropout_4/StatefulPartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indicesّ
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
 tf.stop_gradient_18/StopGradient
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
 *o:2
tf.__operators__.add_36/yث
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2
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
tf.math.multiply_56/Mul
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Subخ
tf.math.multiply_55/MulMul*dropout_4/StatefulPartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_4_layer_call_and_return_conditional_losses_130212542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_130209622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_13022278conv2d_24_13022280*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_24_layer_call_and_return_conditional_losses_130212682#
!conv2d_24/StatefulPartitionedCallض
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_130214262#
!dropout_5/StatefulPartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indicesّ
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
 tf.stop_gradient_19/StopGradient
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
 *o:2
tf.__operators__.add_38/yث
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2
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
tf.math.multiply_59/Mul
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Subخ
tf.math.multiply_58/MulMul*dropout_5/StatefulPartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_5_layer_call_and_return_conditional_losses_130213052
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_130209812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_13022303conv2d_25_13022305*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_25_layer_call_and_return_conditional_losses_130213192#
!conv2d_25/StatefulPartitionedCall¤
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
:?????????
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
M
1__inference_leaky_re_lu_15_layer_call_fn_13023046

inputs
identityض
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_130211352
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ذ
?
,__inference_conv2d_19_layer_call_fn_13022973

inputs!
unknown: @
	unknown_0:@
identity?StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_130210442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
,__inference_dropout_4_layer_call_fn_13023141

inputs
identity?StatefulPartitionedCall?
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_130214662
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
س
¤
,__inference_conv2d_21_layer_call_fn_13023031

inputs#
unknown:
	unknown_0:	
identity?StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_130211242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
ف
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_13023086

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_6_layer_call_fn_13020968

inputs
identityّ
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_130209622
PartitionedCall
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


G__inference_conv2d_22_layer_call_and_return_conditional_losses_13023071

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
­
?
*__inference_model_3_layer_call_fn_13022441

inputs!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@
	unknown_8:	
	unknown_9

unknown_10&

unknown_11:

unknown_12:	

unknown_13

unknown_14&

unknown_15:

unknown_16:	

unknown_17

unknown_18%

unknown_19:@

unknown_20:@

unknown_21

unknown_22%

unknown_23: 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity?StatefulPartitionedCall
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
GPU2*0J 8 *N
fIRG
E__inference_model_3_layer_call_and_return_conditional_losses_130213262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
i
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_13020962

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
strided_slice/stack_2خ
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
mulص
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
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
i
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_13020924

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
strided_slice/stack_2خ
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
mulص
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
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


G__inference_conv2d_24_layer_call_and_return_conditional_losses_13023191

inputs9
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
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
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_4_layer_call_fn_13020930

inputs
identityّ
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_130209242
PartitionedCall
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
K__inference_concatenate_4_layer_call_and_return_conditional_losses_13023171
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????@@2

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

?
,__inference_conv2d_24_layer_call_fn_13023180

inputs"
unknown: 
	unknown_0: 
identity?StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_24_layer_call_and_return_conditional_losses_130212682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_13020943

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
strided_slice/stack_2خ
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
mulص
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
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


G__inference_conv2d_23_layer_call_and_return_conditional_losses_13023131

inputs9
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
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
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ف
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_13021177

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_5_layer_call_fn_13023201

inputs
identity?StatefulPartitionedCall?
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_130214262
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
?
i
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_13020981

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
strided_slice/stack_2خ
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
mulص
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
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

h
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_13021095

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????  2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  :X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
H
,__inference_dropout_5_layer_call_fn_13023196

inputs
identityق
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_130212792
PartitionedCall
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

h
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_13023051

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
َ
?
E__inference_model_3_layer_call_and_return_conditional_losses_13022710

inputsB
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: 
tf_math_multiply_39_mul_y
unknownB
(conv2d_19_conv2d_readvariableop_resource: @7
)conv2d_19_biasadd_readvariableop_resource:@
tf_math_multiply_42_mul_y
	unknown_0C
(conv2d_20_conv2d_readvariableop_resource:@8
)conv2d_20_biasadd_readvariableop_resource:	
tf_math_multiply_45_mul_y
	unknown_1D
(conv2d_21_conv2d_readvariableop_resource:8
)conv2d_21_biasadd_readvariableop_resource:	
tf_math_multiply_48_mul_y
	unknown_2D
(conv2d_22_conv2d_readvariableop_resource:8
)conv2d_22_biasadd_readvariableop_resource:	
tf_math_multiply_51_mul_y
	unknown_3C
(conv2d_23_conv2d_readvariableop_resource:@7
)conv2d_23_biasadd_readvariableop_resource:@
tf_math_multiply_54_mul_y
	unknown_4C
(conv2d_24_conv2d_readvariableop_resource: 7
)conv2d_24_biasadd_readvariableop_resource: 
tf_math_multiply_57_mul_y
	unknown_5B
(conv2d_25_conv2d_readvariableop_resource:@7
)conv2d_25_biasadd_readvariableop_resource:
identity? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_18/Conv2D/ReadVariableOpأ
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_18/BiasAdd
leaky_re_lu_12/LeakyRelu	LeakyReluconv2d_18/BiasAdd:output:0*1
_output_shapes
:????????? 2
leaky_re_lu_12/LeakyRelu?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indicesٍ
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
 tf.stop_gradient_13/StopGradient
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference&leaky_re_lu_12/LeakyRelu:activations:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:????????? 21
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
 *o:2
tf.__operators__.add_26/yث
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2
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
tf.math.multiply_41/Mul
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub?
tf.math.multiply_40/MulMul&leaky_re_lu_12/LeakyRelu:activations:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:????????? 2
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
conv2d_19/BiasAdd
leaky_re_lu_13/LeakyRelu	LeakyReluconv2d_19/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_13/LeakyRelu?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indicesٍ
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
 tf.stop_gradient_14/StopGradient
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
 *o:2
tf.__operators__.add_28/yث
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2
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
tf.math.multiply_44/Mul
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul&leaky_re_lu_13/LeakyRelu:activations:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul؛
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2D!tf.__operators__.add_29/AddV2:z:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_20/BiasAdd
leaky_re_lu_14/LeakyRelu	LeakyReluconv2d_20/BiasAdd:output:0*0
_output_shapes
:?????????  2
leaky_re_lu_14/LeakyRelu?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indicesَ
tf.math.reduce_mean_30/MeanMean&leaky_re_lu_14/LeakyRelu:activations:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_15/StopGradient
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference&leaky_re_lu_14/LeakyRelu:activations:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_30/yج
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_30/AddV2
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_47/Mul
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul&leaky_re_lu_14/LeakyRelu:activations:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_31/AddV2?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D!tf.__operators__.add_31/AddV2:z:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
conv2d_21/BiasAdd
leaky_re_lu_15/LeakyRelu	LeakyReluconv2d_21/BiasAdd:output:0*0
_output_shapes
:?????????2
leaky_re_lu_15/LeakyRelu?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indicesَ
tf.math.reduce_mean_32/MeanMean&leaky_re_lu_15/LeakyRelu:activations:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_16/StopGradient
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference&leaky_re_lu_15/LeakyRelu:activations:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:?????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_32/yج
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_32/AddV2
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_50/Mul
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul&leaky_re_lu_15/LeakyRelu:activations:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_33/AddV2
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_4/Const_1
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_4/mul
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_33/AddV2:z:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(2.
,up_sampling2d_4/resize/ResizeNearestNeighbor?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2D=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_22/BiasAdd
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  2
conv2d_22/Relu
dropout_3/IdentityIdentityconv2d_22/Relu:activations:0*
T0*0
_output_shapes
:?????????  2
dropout_3/Identity?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indicesك
tf.math.reduce_mean_34/MeanMeandropout_3/Identity:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_17/StopGradient?
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifferencedropout_3/Identity:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_34/yج
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_34/AddV2
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_53/Mul
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_17/Sub?
tf.math.multiply_52/MulMuldropout_3/Identity:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_52/Mul?
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_35/AddV2x
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axisن
concatenate_3/concatConcatV2!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
concatenate_3/concat
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_5/Const
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_5/Const_1
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_5/mul
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(2.
,up_sampling2d_5/resize/ResizeNearestNeighbor?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:@*
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
conv2d_23/Relu
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
-tf.math.reduce_mean_36/Mean/reduction_indicesق
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
 *o:2
tf.__operators__.add_36/yث
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2
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
tf.math.multiply_56/Mul
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Sub­
tf.math.multiply_55/MulMuldropout_4/Identity:output:0tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_55/Mul؛
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
concatenate_4/concat/axisن
concatenate_4/concatConcatV2!tf.__operators__.add_37/AddV2:z:0!tf.__operators__.add_29/AddV2:z:0"concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
concatenate_4/concat
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_6/Const
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_6/Const_1
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_6/mul
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_4/concat:output:0up_sampling2d_6/mul:z:0*
T0*2
_output_shapes 
:?????????*
half_pixel_centers(2.
,up_sampling2d_6/resize/ResizeNearestNeighbor?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2D=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_24/BiasAdd
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:????????? 2
conv2d_24/Relu
dropout_5/IdentityIdentityconv2d_24/Relu:activations:0*
T0*1
_output_shapes
:????????? 2
dropout_5/Identity?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indicesق
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
:????????? 21
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
 *o:2
tf.__operators__.add_38/yث
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2
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
tf.math.multiply_59/Mul
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Sub?
tf.math.multiply_58/MulMuldropout_5/Identity:output:0tf.math.multiply_57/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_58/Mul?
tf.__operators__.add_39/AddV2AddV2tf.math.multiply_58/Mul:z:0tf.math.subtract_19/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_39/AddV2x
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_5/concat/axisه
concatenate_5/concatConcatV2!tf.__operators__.add_39/AddV2:z:0!tf.__operators__.add_27/AddV2:z:0"concatenate_5/concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
concatenate_5/concat
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_7/Const_1
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_7/mul
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_5/concat:output:0up_sampling2d_7/mul:z:0*
T0*1
_output_shapes
:?????????@*
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
:?????????*
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
:?????????2
conv2d_25/BiasAdd
conv2d_25/TanhTanhconv2d_25/BiasAdd:output:0*
T0*1
_output_shapes
:?????????2
conv2d_25/Tanh
IdentityIdentityconv2d_25/Tanh:y:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2D
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
:?????????
 
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
ء
*__inference_model_3_layer_call_fn_13021389
input_4!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@
	unknown_8:	
	unknown_9

unknown_10&

unknown_11:

unknown_12:	

unknown_13

unknown_14&

unknown_15:

unknown_16:	

unknown_17

unknown_18%

unknown_19:@

unknown_20:@

unknown_21

unknown_22%

unknown_23: 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity?StatefulPartitionedCall
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
GPU2*0J 8 *N
fIRG
E__inference_model_3_layer_call_and_return_conditional_losses_130213262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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

#__inference__wrapped_model_13020911
input_4J
0model_3_conv2d_18_conv2d_readvariableop_resource: ?
1model_3_conv2d_18_biasadd_readvariableop_resource: %
!model_3_tf_math_multiply_39_mul_y
model_3_13020729J
0model_3_conv2d_19_conv2d_readvariableop_resource: @?
1model_3_conv2d_19_biasadd_readvariableop_resource:@%
!model_3_tf_math_multiply_42_mul_y
model_3_13020753K
0model_3_conv2d_20_conv2d_readvariableop_resource:@@
1model_3_conv2d_20_biasadd_readvariableop_resource:	%
!model_3_tf_math_multiply_45_mul_y
model_3_13020777L
0model_3_conv2d_21_conv2d_readvariableop_resource:@
1model_3_conv2d_21_biasadd_readvariableop_resource:	%
!model_3_tf_math_multiply_48_mul_y
model_3_13020801L
0model_3_conv2d_22_conv2d_readvariableop_resource:@
1model_3_conv2d_22_biasadd_readvariableop_resource:	%
!model_3_tf_math_multiply_51_mul_y
model_3_13020830K
0model_3_conv2d_23_conv2d_readvariableop_resource:@?
1model_3_conv2d_23_biasadd_readvariableop_resource:@%
!model_3_tf_math_multiply_54_mul_y
model_3_13020861K
0model_3_conv2d_24_conv2d_readvariableop_resource: ?
1model_3_conv2d_24_biasadd_readvariableop_resource: %
!model_3_tf_math_multiply_57_mul_y
model_3_13020892J
0model_3_conv2d_25_conv2d_readvariableop_resource:@?
1model_3_conv2d_25_biasadd_readvariableop_resource:
identity?(model_3/conv2d_18/BiasAdd/ReadVariableOp?'model_3/conv2d_18/Conv2D/ReadVariableOp?(model_3/conv2d_19/BiasAdd/ReadVariableOp?'model_3/conv2d_19/Conv2D/ReadVariableOp?(model_3/conv2d_20/BiasAdd/ReadVariableOp?'model_3/conv2d_20/Conv2D/ReadVariableOp?(model_3/conv2d_21/BiasAdd/ReadVariableOp?'model_3/conv2d_21/Conv2D/ReadVariableOp?(model_3/conv2d_22/BiasAdd/ReadVariableOp?'model_3/conv2d_22/Conv2D/ReadVariableOp?(model_3/conv2d_23/BiasAdd/ReadVariableOp?'model_3/conv2d_23/Conv2D/ReadVariableOp?(model_3/conv2d_24/BiasAdd/ReadVariableOp?'model_3/conv2d_24/Conv2D/ReadVariableOp?(model_3/conv2d_25/BiasAdd/ReadVariableOp?'model_3/conv2d_25/Conv2D/ReadVariableOpث
'model_3/conv2d_18/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_3/conv2d_18/Conv2D/ReadVariableOp?
model_3/conv2d_18/Conv2DConv2Dinput_4/model_3/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
2
model_3/conv2d_18/Conv2Dآ
(model_3/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_3/conv2d_18/BiasAdd/ReadVariableOpز
model_3/conv2d_18/BiasAddBiasAdd!model_3/conv2d_18/Conv2D:output:00model_3/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? 2
model_3/conv2d_18/BiasAdd?
 model_3/leaky_re_lu_12/LeakyRelu	LeakyRelu"model_3/conv2d_18/BiasAdd:output:0*1
_output_shapes
:????????? 2"
 model_3/leaky_re_lu_12/LeakyRelu؟
5model_3/tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_26/Mean/reduction_indices
#model_3/tf.math.reduce_mean_26/MeanMean.model_3/leaky_re_lu_12/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_26/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_26/Meanج
(model_3/tf.stop_gradient_13/StopGradientStopGradient,model_3/tf.math.reduce_mean_26/Mean:output:0*
T0*/
_output_shapes
:????????? 2*
(model_3/tf.stop_gradient_13/StopGradient?
7model_3/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_12/LeakyRelu:activations:01model_3/tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:????????? 29
7model_3/tf.math.squared_difference_13/SquaredDifference؟
5model_3/tf.math.reduce_mean_27/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_27/Mean/reduction_indices
#model_3/tf.math.reduce_mean_27/MeanMean;model_3/tf.math.squared_difference_13/SquaredDifference:z:0>model_3/tf.math.reduce_mean_27/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_27/Mean
!model_3/tf.__operators__.add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_3/tf.__operators__.add_26/yً
%model_3/tf.__operators__.add_26/AddV2AddV2,model_3/tf.math.reduce_mean_27/Mean:output:0*model_3/tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_3/tf.__operators__.add_26/AddV2?
model_3/tf.math.rsqrt_13/RsqrtRsqrt)model_3/tf.__operators__.add_26/AddV2:z:0*
T0*/
_output_shapes
:????????? 2 
model_3/tf.math.rsqrt_13/Rsqrtت
model_3/tf.math.multiply_39/MulMul"model_3/tf.math.rsqrt_13/Rsqrt:y:0!model_3_tf_math_multiply_39_mul_y*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_39/Mulض
model_3/tf.math.multiply_41/MulMul,model_3/tf.math.reduce_mean_26/Mean:output:0#model_3/tf.math.multiply_39/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_41/Mul?
model_3/tf.math.subtract_13/SubSubmodel_3_13020729#model_3/tf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.subtract_13/Subغ
model_3/tf.math.multiply_40/MulMul.model_3/leaky_re_lu_12/LeakyRelu:activations:0#model_3/tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:????????? 2!
model_3/tf.math.multiply_40/Mul?
%model_3/tf.__operators__.add_27/AddV2AddV2#model_3/tf.math.multiply_40/Mul:z:0#model_3/tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:????????? 2'
%model_3/tf.__operators__.add_27/AddV2ث
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
model_3/conv2d_19/Conv2Dآ
(model_3/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_3/conv2d_19/BiasAdd/ReadVariableOpذ
model_3/conv2d_19/BiasAddBiasAdd!model_3/conv2d_19/Conv2D:output:00model_3/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_3/conv2d_19/BiasAdd?
 model_3/leaky_re_lu_13/LeakyRelu	LeakyRelu"model_3/conv2d_19/BiasAdd:output:0*/
_output_shapes
:?????????@@@2"
 model_3/leaky_re_lu_13/LeakyRelu؟
5model_3/tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_28/Mean/reduction_indices
#model_3/tf.math.reduce_mean_28/MeanMean.model_3/leaky_re_lu_13/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_28/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_28/Meanج
(model_3/tf.stop_gradient_14/StopGradientStopGradient,model_3/tf.math.reduce_mean_28/Mean:output:0*
T0*/
_output_shapes
:?????????@2*
(model_3/tf.stop_gradient_14/StopGradient¤
7model_3/tf.math.squared_difference_14/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_13/LeakyRelu:activations:01model_3/tf.stop_gradient_14/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@29
7model_3/tf.math.squared_difference_14/SquaredDifference؟
5model_3/tf.math.reduce_mean_29/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_29/Mean/reduction_indices
#model_3/tf.math.reduce_mean_29/MeanMean;model_3/tf.math.squared_difference_14/SquaredDifference:z:0>model_3/tf.math.reduce_mean_29/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_29/Mean
!model_3/tf.__operators__.add_28/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_3/tf.__operators__.add_28/yً
%model_3/tf.__operators__.add_28/AddV2AddV2,model_3/tf.math.reduce_mean_29/Mean:output:0*model_3/tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_3/tf.__operators__.add_28/AddV2?
model_3/tf.math.rsqrt_14/RsqrtRsqrt)model_3/tf.__operators__.add_28/AddV2:z:0*
T0*/
_output_shapes
:?????????@2 
model_3/tf.math.rsqrt_14/Rsqrtت
model_3/tf.math.multiply_42/MulMul"model_3/tf.math.rsqrt_14/Rsqrt:y:0!model_3_tf_math_multiply_42_mul_y*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_42/Mulض
model_3/tf.math.multiply_44/MulMul,model_3/tf.math.reduce_mean_28/Mean:output:0#model_3/tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_44/Mul?
model_3/tf.math.subtract_14/SubSubmodel_3_13020753#model_3/tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.subtract_14/Subظ
model_3/tf.math.multiply_43/MulMul.model_3/leaky_re_lu_13/LeakyRelu:activations:0#model_3/tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_3/tf.math.multiply_43/Mul?
%model_3/tf.__operators__.add_29/AddV2AddV2#model_3/tf.math.multiply_43/Mul:z:0#model_3/tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_3/tf.__operators__.add_29/AddV2ج
'model_3/conv2d_20/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02)
'model_3/conv2d_20/Conv2D/ReadVariableOp?
model_3/conv2d_20/Conv2DConv2D)model_3/tf.__operators__.add_29/AddV2:z:0/model_3/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_3/conv2d_20/Conv2Dأ
(model_3/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_3/conv2d_20/BiasAdd/ReadVariableOpر
model_3/conv2d_20/BiasAddBiasAdd!model_3/conv2d_20/Conv2D:output:00model_3/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
model_3/conv2d_20/BiasAdd?
 model_3/leaky_re_lu_14/LeakyRelu	LeakyRelu"model_3/conv2d_20/BiasAdd:output:0*0
_output_shapes
:?????????  2"
 model_3/leaky_re_lu_14/LeakyRelu؟
5model_3/tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_30/Mean/reduction_indices
#model_3/tf.math.reduce_mean_30/MeanMean.model_3/leaky_re_lu_14/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_30/Meanح
(model_3/tf.stop_gradient_15/StopGradientStopGradient,model_3/tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:?????????2*
(model_3/tf.stop_gradient_15/StopGradient?
7model_3/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_14/LeakyRelu:activations:01model_3/tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  29
7model_3/tf.math.squared_difference_15/SquaredDifference؟
5model_3/tf.math.reduce_mean_31/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_31/Mean/reduction_indices
#model_3/tf.math.reduce_mean_31/MeanMean;model_3/tf.math.squared_difference_15/SquaredDifference:z:0>model_3/tf.math.reduce_mean_31/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_31/Mean
!model_3/tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_3/tf.__operators__.add_30/yٌ
%model_3/tf.__operators__.add_30/AddV2AddV2,model_3/tf.math.reduce_mean_31/Mean:output:0*model_3/tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:?????????2'
%model_3/tf.__operators__.add_30/AddV2?
model_3/tf.math.rsqrt_15/RsqrtRsqrt)model_3/tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:?????????2 
model_3/tf.math.rsqrt_15/Rsqrtث
model_3/tf.math.multiply_45/MulMul"model_3/tf.math.rsqrt_15/Rsqrt:y:0!model_3_tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.multiply_45/Mulط
model_3/tf.math.multiply_47/MulMul,model_3/tf.math.reduce_mean_30/Mean:output:0#model_3/tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.multiply_47/Mul؛
model_3/tf.math.subtract_15/SubSubmodel_3_13020777#model_3/tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.subtract_15/Subع
model_3/tf.math.multiply_46/MulMul.model_3/leaky_re_lu_14/LeakyRelu:activations:0#model_3/tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  2!
model_3/tf.math.multiply_46/Mul?
%model_3/tf.__operators__.add_31/AddV2AddV2#model_3/tf.math.multiply_46/Mul:z:0#model_3/tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  2'
%model_3/tf.__operators__.add_31/AddV2ح
'model_3/conv2d_21/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'model_3/conv2d_21/Conv2D/ReadVariableOp?
model_3/conv2d_21/Conv2DConv2D)model_3/tf.__operators__.add_31/AddV2:z:0/model_3/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
model_3/conv2d_21/Conv2Dأ
(model_3/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_3/conv2d_21/BiasAdd/ReadVariableOpر
model_3/conv2d_21/BiasAddBiasAdd!model_3/conv2d_21/Conv2D:output:00model_3/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
model_3/conv2d_21/BiasAdd?
 model_3/leaky_re_lu_15/LeakyRelu	LeakyRelu"model_3/conv2d_21/BiasAdd:output:0*0
_output_shapes
:?????????2"
 model_3/leaky_re_lu_15/LeakyRelu؟
5model_3/tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_32/Mean/reduction_indices
#model_3/tf.math.reduce_mean_32/MeanMean.model_3/leaky_re_lu_15/LeakyRelu:activations:0>model_3/tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_32/Meanح
(model_3/tf.stop_gradient_16/StopGradientStopGradient,model_3/tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:?????????2*
(model_3/tf.stop_gradient_16/StopGradient?
7model_3/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference.model_3/leaky_re_lu_15/LeakyRelu:activations:01model_3/tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:?????????29
7model_3/tf.math.squared_difference_16/SquaredDifference؟
5model_3/tf.math.reduce_mean_33/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_33/Mean/reduction_indices
#model_3/tf.math.reduce_mean_33/MeanMean;model_3/tf.math.squared_difference_16/SquaredDifference:z:0>model_3/tf.math.reduce_mean_33/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_33/Mean
!model_3/tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_3/tf.__operators__.add_32/yٌ
%model_3/tf.__operators__.add_32/AddV2AddV2,model_3/tf.math.reduce_mean_33/Mean:output:0*model_3/tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:?????????2'
%model_3/tf.__operators__.add_32/AddV2?
model_3/tf.math.rsqrt_16/RsqrtRsqrt)model_3/tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:?????????2 
model_3/tf.math.rsqrt_16/Rsqrtث
model_3/tf.math.multiply_48/MulMul"model_3/tf.math.rsqrt_16/Rsqrt:y:0!model_3_tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.multiply_48/Mulط
model_3/tf.math.multiply_50/MulMul,model_3/tf.math.reduce_mean_32/Mean:output:0#model_3/tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.multiply_50/Mul؛
model_3/tf.math.subtract_16/SubSubmodel_3_13020801#model_3/tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.subtract_16/Subع
model_3/tf.math.multiply_49/MulMul.model_3/leaky_re_lu_15/LeakyRelu:activations:0#model_3/tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.multiply_49/Mul?
%model_3/tf.__operators__.add_33/AddV2AddV2#model_3/tf.math.multiply_49/Mul:z:0#model_3/tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:?????????2'
%model_3/tf.__operators__.add_33/AddV2
model_3/up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
model_3/up_sampling2d_4/Const
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
:?????????  *
half_pixel_centers(26
4model_3/up_sampling2d_4/resize/ResizeNearestNeighborح
'model_3/conv2d_22/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'model_3/conv2d_22/Conv2D/ReadVariableOp
model_3/conv2d_22/Conv2DConv2DEmodel_3/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_3/conv2d_22/Conv2Dأ
(model_3/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_3/conv2d_22/BiasAdd/ReadVariableOpر
model_3/conv2d_22/BiasAddBiasAdd!model_3/conv2d_22/Conv2D:output:00model_3/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
model_3/conv2d_22/BiasAdd
model_3/conv2d_22/ReluRelu"model_3/conv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  2
model_3/conv2d_22/Relu?
model_3/dropout_3/IdentityIdentity$model_3/conv2d_22/Relu:activations:0*
T0*0
_output_shapes
:?????????  2
model_3/dropout_3/Identity؟
5model_3/tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_34/Mean/reduction_indices
#model_3/tf.math.reduce_mean_34/MeanMean#model_3/dropout_3/Identity:output:0>model_3/tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_34/Meanح
(model_3/tf.stop_gradient_17/StopGradientStopGradient,model_3/tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:?????????2*
(model_3/tf.stop_gradient_17/StopGradient
7model_3/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference#model_3/dropout_3/Identity:output:01model_3/tf.stop_gradient_17/StopGradient:output:0*
T0*0
_output_shapes
:?????????  29
7model_3/tf.math.squared_difference_17/SquaredDifference؟
5model_3/tf.math.reduce_mean_35/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_35/Mean/reduction_indices
#model_3/tf.math.reduce_mean_35/MeanMean;model_3/tf.math.squared_difference_17/SquaredDifference:z:0>model_3/tf.math.reduce_mean_35/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_3/tf.math.reduce_mean_35/Mean
!model_3/tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_3/tf.__operators__.add_34/yٌ
%model_3/tf.__operators__.add_34/AddV2AddV2,model_3/tf.math.reduce_mean_35/Mean:output:0*model_3/tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:?????????2'
%model_3/tf.__operators__.add_34/AddV2?
model_3/tf.math.rsqrt_17/RsqrtRsqrt)model_3/tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:?????????2 
model_3/tf.math.rsqrt_17/Rsqrtث
model_3/tf.math.multiply_51/MulMul"model_3/tf.math.rsqrt_17/Rsqrt:y:0!model_3_tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.multiply_51/Mulط
model_3/tf.math.multiply_53/MulMul,model_3/tf.math.reduce_mean_34/Mean:output:0#model_3/tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.multiply_53/Mul؛
model_3/tf.math.subtract_17/SubSubmodel_3_13020830#model_3/tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_3/tf.math.subtract_17/Subخ
model_3/tf.math.multiply_52/MulMul#model_3/dropout_3/Identity:output:0#model_3/tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????  2!
model_3/tf.math.multiply_52/Mul?
%model_3/tf.__operators__.add_35/AddV2AddV2#model_3/tf.math.multiply_52/Mul:z:0#model_3/tf.math.subtract_17/Sub:z:0*
T0*0
_output_shapes
:?????????  2'
%model_3/tf.__operators__.add_35/AddV2
!model_3/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3/concatenate_3/concat/axis
model_3/concatenate_3/concatConcatV2)model_3/tf.__operators__.add_35/AddV2:z:0)model_3/tf.__operators__.add_31/AddV2:z:0*model_3/concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
model_3/concatenate_3/concat
model_3/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
model_3/up_sampling2d_5/Const
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
:?????????@@*
half_pixel_centers(26
4model_3/up_sampling2d_5/resize/ResizeNearestNeighborج
'model_3/conv2d_23/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02)
'model_3/conv2d_23/Conv2D/ReadVariableOp
model_3/conv2d_23/Conv2DConv2DEmodel_3/up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
model_3/conv2d_23/Conv2Dآ
(model_3/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_3/conv2d_23/BiasAdd/ReadVariableOpذ
model_3/conv2d_23/BiasAddBiasAdd!model_3/conv2d_23/Conv2D:output:00model_3/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_3/conv2d_23/BiasAdd
model_3/conv2d_23/ReluRelu"model_3/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
model_3/conv2d_23/Relu¤
model_3/dropout_4/IdentityIdentity$model_3/conv2d_23/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@2
model_3/dropout_4/Identity؟
5model_3/tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_36/Mean/reduction_indices
#model_3/tf.math.reduce_mean_36/MeanMean#model_3/dropout_4/Identity:output:0>model_3/tf.math.reduce_mean_36/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_36/Meanج
(model_3/tf.stop_gradient_18/StopGradientStopGradient,model_3/tf.math.reduce_mean_36/Mean:output:0*
T0*/
_output_shapes
:?????????@2*
(model_3/tf.stop_gradient_18/StopGradient
7model_3/tf.math.squared_difference_18/SquaredDifferenceSquaredDifference#model_3/dropout_4/Identity:output:01model_3/tf.stop_gradient_18/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@29
7model_3/tf.math.squared_difference_18/SquaredDifference؟
5model_3/tf.math.reduce_mean_37/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_37/Mean/reduction_indices
#model_3/tf.math.reduce_mean_37/MeanMean;model_3/tf.math.squared_difference_18/SquaredDifference:z:0>model_3/tf.math.reduce_mean_37/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_3/tf.math.reduce_mean_37/Mean
!model_3/tf.__operators__.add_36/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_3/tf.__operators__.add_36/yً
%model_3/tf.__operators__.add_36/AddV2AddV2,model_3/tf.math.reduce_mean_37/Mean:output:0*model_3/tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_3/tf.__operators__.add_36/AddV2?
model_3/tf.math.rsqrt_18/RsqrtRsqrt)model_3/tf.__operators__.add_36/AddV2:z:0*
T0*/
_output_shapes
:?????????@2 
model_3/tf.math.rsqrt_18/Rsqrtت
model_3/tf.math.multiply_54/MulMul"model_3/tf.math.rsqrt_18/Rsqrt:y:0!model_3_tf_math_multiply_54_mul_y*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_54/Mulض
model_3/tf.math.multiply_56/MulMul,model_3/tf.math.reduce_mean_36/Mean:output:0#model_3/tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.multiply_56/Mul?
model_3/tf.math.subtract_18/SubSubmodel_3_13020861#model_3/tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_3/tf.math.subtract_18/Subح
model_3/tf.math.multiply_55/MulMul#model_3/dropout_4/Identity:output:0#model_3/tf.math.multiply_54/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_3/tf.math.multiply_55/Mul?
%model_3/tf.__operators__.add_37/AddV2AddV2#model_3/tf.math.multiply_55/Mul:z:0#model_3/tf.math.subtract_18/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_3/tf.__operators__.add_37/AddV2
!model_3/concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3/concatenate_4/concat/axis
model_3/concatenate_4/concatConcatV2)model_3/tf.__operators__.add_37/AddV2:z:0)model_3/tf.__operators__.add_29/AddV2:z:0*model_3/concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
model_3/concatenate_4/concat
model_3/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
model_3/up_sampling2d_6/Const
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
model_3/up_sampling2d_6/mul¤
4model_3/up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighbor%model_3/concatenate_4/concat:output:0model_3/up_sampling2d_6/mul:z:0*
T0*2
_output_shapes 
:?????????*
half_pixel_centers(26
4model_3/up_sampling2d_6/resize/ResizeNearestNeighborج
'model_3/conv2d_24/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype02)
'model_3/conv2d_24/Conv2D/ReadVariableOp
model_3/conv2d_24/Conv2DConv2DEmodel_3/up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
2
model_3/conv2d_24/Conv2Dآ
(model_3/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_3/conv2d_24/BiasAdd/ReadVariableOpز
model_3/conv2d_24/BiasAddBiasAdd!model_3/conv2d_24/Conv2D:output:00model_3/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? 2
model_3/conv2d_24/BiasAdd
model_3/conv2d_24/ReluRelu"model_3/conv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:????????? 2
model_3/conv2d_24/Relu?
model_3/dropout_5/IdentityIdentity$model_3/conv2d_24/Relu:activations:0*
T0*1
_output_shapes
:????????? 2
model_3/dropout_5/Identity؟
5model_3/tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_38/Mean/reduction_indices
#model_3/tf.math.reduce_mean_38/MeanMean#model_3/dropout_5/Identity:output:0>model_3/tf.math.reduce_mean_38/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_38/Meanج
(model_3/tf.stop_gradient_19/StopGradientStopGradient,model_3/tf.math.reduce_mean_38/Mean:output:0*
T0*/
_output_shapes
:????????? 2*
(model_3/tf.stop_gradient_19/StopGradient
7model_3/tf.math.squared_difference_19/SquaredDifferenceSquaredDifference#model_3/dropout_5/Identity:output:01model_3/tf.stop_gradient_19/StopGradient:output:0*
T0*1
_output_shapes
:????????? 29
7model_3/tf.math.squared_difference_19/SquaredDifference؟
5model_3/tf.math.reduce_mean_39/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_3/tf.math.reduce_mean_39/Mean/reduction_indices
#model_3/tf.math.reduce_mean_39/MeanMean;model_3/tf.math.squared_difference_19/SquaredDifference:z:0>model_3/tf.math.reduce_mean_39/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_3/tf.math.reduce_mean_39/Mean
!model_3/tf.__operators__.add_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_3/tf.__operators__.add_38/yً
%model_3/tf.__operators__.add_38/AddV2AddV2,model_3/tf.math.reduce_mean_39/Mean:output:0*model_3/tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_3/tf.__operators__.add_38/AddV2?
model_3/tf.math.rsqrt_19/RsqrtRsqrt)model_3/tf.__operators__.add_38/AddV2:z:0*
T0*/
_output_shapes
:????????? 2 
model_3/tf.math.rsqrt_19/Rsqrtت
model_3/tf.math.multiply_57/MulMul"model_3/tf.math.rsqrt_19/Rsqrt:y:0!model_3_tf_math_multiply_57_mul_y*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_57/Mulض
model_3/tf.math.multiply_59/MulMul,model_3/tf.math.reduce_mean_38/Mean:output:0#model_3/tf.math.multiply_57/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.multiply_59/Mul?
model_3/tf.math.subtract_19/SubSubmodel_3_13020892#model_3/tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_3/tf.math.subtract_19/Subد
model_3/tf.math.multiply_58/MulMul#model_3/dropout_5/Identity:output:0#model_3/tf.math.multiply_57/Mul:z:0*
T0*1
_output_shapes
:????????? 2!
model_3/tf.math.multiply_58/Mul?
%model_3/tf.__operators__.add_39/AddV2AddV2#model_3/tf.math.multiply_58/Mul:z:0#model_3/tf.math.subtract_19/Sub:z:0*
T0*1
_output_shapes
:????????? 2'
%model_3/tf.__operators__.add_39/AddV2
!model_3/concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3/concatenate_5/concat/axis
model_3/concatenate_5/concatConcatV2)model_3/tf.__operators__.add_39/AddV2:z:0)model_3/tf.__operators__.add_27/AddV2:z:0*model_3/concatenate_5/concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
model_3/concatenate_5/concat
model_3/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
model_3/up_sampling2d_7/Const
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
:?????????@*
half_pixel_centers(26
4model_3/up_sampling2d_7/resize/ResizeNearestNeighborث
'model_3/conv2d_25/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'model_3/conv2d_25/Conv2D/ReadVariableOp
model_3/conv2d_25/Conv2DConv2DEmodel_3/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0/model_3/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????*
paddingSAME*
strides
2
model_3/conv2d_25/Conv2Dآ
(model_3/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_3/conv2d_25/BiasAdd/ReadVariableOpز
model_3/conv2d_25/BiasAddBiasAdd!model_3/conv2d_25/Conv2D:output:00model_3/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????2
model_3/conv2d_25/BiasAdd
model_3/conv2d_25/TanhTanh"model_3/conv2d_25/BiasAdd:output:0*
T0*1
_output_shapes
:?????????2
model_3/conv2d_25/Tanh 
IdentityIdentitymodel_3/conv2d_25/Tanh:y:0)^model_3/conv2d_18/BiasAdd/ReadVariableOp(^model_3/conv2d_18/Conv2D/ReadVariableOp)^model_3/conv2d_19/BiasAdd/ReadVariableOp(^model_3/conv2d_19/Conv2D/ReadVariableOp)^model_3/conv2d_20/BiasAdd/ReadVariableOp(^model_3/conv2d_20/Conv2D/ReadVariableOp)^model_3/conv2d_21/BiasAdd/ReadVariableOp(^model_3/conv2d_21/Conv2D/ReadVariableOp)^model_3/conv2d_22/BiasAdd/ReadVariableOp(^model_3/conv2d_22/Conv2D/ReadVariableOp)^model_3/conv2d_23/BiasAdd/ReadVariableOp(^model_3/conv2d_23/Conv2D/ReadVariableOp)^model_3/conv2d_24/BiasAdd/ReadVariableOp(^model_3/conv2d_24/Conv2D/ReadVariableOp)^model_3/conv2d_25/BiasAdd/ReadVariableOp(^model_3/conv2d_25/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2T
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
:?????????
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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


G__inference_conv2d_18_layer_call_and_return_conditional_losses_13021004

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
­
?
*__inference_model_3_layer_call_fn_13022506

inputs!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2#
	unknown_3: @
	unknown_4:@
	unknown_5
	unknown_6$
	unknown_7:@
	unknown_8:	
	unknown_9

unknown_10&

unknown_11:

unknown_12:	

unknown_13

unknown_14&

unknown_15:

unknown_16:	

unknown_17

unknown_18%

unknown_19:@

unknown_20:@

unknown_21

unknown_22%

unknown_23: 

unknown_24: 

unknown_25

unknown_26$

unknown_27:@

unknown_28:
identity?StatefulPartitionedCall
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
GPU2*0J 8 *N
fIRG
E__inference_model_3_layer_call_and_return_conditional_losses_130218272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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


G__inference_conv2d_20_layer_call_and_return_conditional_losses_13023012

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????  2

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
e
G__inference_dropout_5_layer_call_and_return_conditional_losses_13021279

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity

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

f
G__inference_dropout_4_layer_call_and_return_conditional_losses_13023158

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeخ
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
 *حجL>2
dropout/GreaterEqual/yظ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast
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


G__inference_conv2d_18_layer_call_and_return_conditional_losses_13022954

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ئ
w
K__inference_concatenate_5_layer_call_and_return_conditional_losses_13023231
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:+??????????????????????????? :????????? :k g
A
_output_shapes/
-:+??????????????????????????? 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:????????? 
"
_user_specified_name
inputs/1
?
e
G__inference_dropout_5_layer_call_and_return_conditional_losses_13023206

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity

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
??
د

E__inference_model_3_layer_call_and_return_conditional_losses_13022132
input_4,
conv2d_18_13021958:  
conv2d_18_13021960: 
tf_math_multiply_39_mul_y
unknown,
conv2d_19_13021981: @ 
conv2d_19_13021983:@
tf_math_multiply_42_mul_y
	unknown_0-
conv2d_20_13022004:@!
conv2d_20_13022006:	
tf_math_multiply_45_mul_y
	unknown_1.
conv2d_21_13022027:!
conv2d_21_13022029:	
tf_math_multiply_48_mul_y
	unknown_2.
conv2d_22_13022051:!
conv2d_22_13022053:	
tf_math_multiply_51_mul_y
	unknown_3-
conv2d_23_13022076:@ 
conv2d_23_13022078:@
tf_math_multiply_54_mul_y
	unknown_4-
conv2d_24_13022101:  
conv2d_24_13022103: 
tf_math_multiply_57_mul_y
	unknown_5,
conv2d_25_13022126:@ 
conv2d_25_13022128:
identity?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall­
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_18_13021958conv2d_18_13021960*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_130210042#
!conv2d_18/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_130210152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indicesَ
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
 tf.stop_gradient_13/StopGradient
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:????????? 21
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
 *o:2
tf.__operators__.add_26/yث
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2
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
tf.math.multiply_41/Mul
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub؛
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_27/AddV2إ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_13021981conv2d_19_13021983*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_130210442#
!conv2d_19/StatefulPartitionedCall
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
GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_130210552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indicesَ
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
 tf.stop_gradient_14/StopGradient
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
 *o:2
tf.__operators__.add_28/yث
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2
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
tf.math.multiply_44/Mul
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul؛
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2ئ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_13022004conv2d_20_13022006*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_130210842#
!conv2d_20/StatefulPartitionedCall
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_130210952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indicesُ
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_15/StopGradient
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_30/yج
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_30/AddV2
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_47/Mul
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_31/AddV2ئ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_13022027conv2d_21_13022029*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_130211242#
!conv2d_21/StatefulPartitionedCall
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_130211352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indicesُ
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_16/StopGradient
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:?????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_32/yج
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_32/AddV2
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_50/Mul
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_33/AddV2¤
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_130209242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_13022051conv2d_22_13022053*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_22_layer_call_and_return_conditional_losses_130211662#
!conv2d_22/StatefulPartitionedCall
dropout_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_130211772
dropout_3/PartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indicesي
tf.math.reduce_mean_34/MeanMean"dropout_3/PartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_17/StopGradient
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference"dropout_3/PartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_34/yج
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_34/AddV2
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_53/Mul
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_17/Subا
tf.math.multiply_52/MulMul"dropout_3/PartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_52/Mulخ
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_3_layer_call_and_return_conditional_losses_130212032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_130209432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_13022076conv2d_23_13022078*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_23_layer_call_and_return_conditional_losses_130212172#
!conv2d_23/StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_130212282
dropout_4/PartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indicesى
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
 tf.stop_gradient_18/StopGradient
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
 *o:2
tf.__operators__.add_36/yث
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2
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
tf.math.multiply_56/Mul
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Subئ
tf.math.multiply_55/MulMul"dropout_4/PartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_4_layer_call_and_return_conditional_losses_130212542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_130209622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_13022101conv2d_24_13022103*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_24_layer_call_and_return_conditional_losses_130212682#
!conv2d_24/StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_130212792
dropout_5/PartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indicesى
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
 tf.stop_gradient_19/StopGradient
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
 *o:2
tf.__operators__.add_38/yث
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2
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
tf.math.multiply_59/Mul
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Subئ
tf.math.multiply_58/MulMul"dropout_5/PartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_5_layer_call_and_return_conditional_losses_130213052
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_130209812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_13022126conv2d_25_13022128*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_25_layer_call_and_return_conditional_losses_130213192#
!conv2d_25/StatefulPartitionedCall?
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
:?????????
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
?
H
,__inference_dropout_4_layer_call_fn_13023136

inputs
identityق
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_130212282
PartitionedCall
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

h
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_13021055

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
ُ
M
1__inference_leaky_re_lu_13_layer_call_fn_13022988

inputs
identityص
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
GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_130210552
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
?
u
K__inference_concatenate_4_layer_call_and_return_conditional_losses_13021254

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????@@2

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
??
خ

E__inference_model_3_layer_call_and_return_conditional_losses_13021326

inputs,
conv2d_18_13021005:  
conv2d_18_13021007: 
tf_math_multiply_39_mul_y
unknown,
conv2d_19_13021045: @ 
conv2d_19_13021047:@
tf_math_multiply_42_mul_y
	unknown_0-
conv2d_20_13021085:@!
conv2d_20_13021087:	
tf_math_multiply_45_mul_y
	unknown_1.
conv2d_21_13021125:!
conv2d_21_13021127:	
tf_math_multiply_48_mul_y
	unknown_2.
conv2d_22_13021167:!
conv2d_22_13021169:	
tf_math_multiply_51_mul_y
	unknown_3-
conv2d_23_13021218:@ 
conv2d_23_13021220:@
tf_math_multiply_54_mul_y
	unknown_4-
conv2d_24_13021269:  
conv2d_24_13021271: 
tf_math_multiply_57_mul_y
	unknown_5,
conv2d_25_13021320:@ 
conv2d_25_13021322:
identity?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall،
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_13021005conv2d_18_13021007*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_130210042#
!conv2d_18/StatefulPartitionedCall
leaky_re_lu_12/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_130210152 
leaky_re_lu_12/PartitionedCall?
-tf.math.reduce_mean_26/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_26/Mean/reduction_indicesَ
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
 tf.stop_gradient_13/StopGradient
/tf.math.squared_difference_13/SquaredDifferenceSquaredDifference'leaky_re_lu_12/PartitionedCall:output:0)tf.stop_gradient_13/StopGradient:output:0*
T0*1
_output_shapes
:????????? 21
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
 *o:2
tf.__operators__.add_26/yث
tf.__operators__.add_26/AddV2AddV2$tf.math.reduce_mean_27/Mean:output:0"tf.__operators__.add_26/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_26/AddV2
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
tf.math.multiply_41/Mul
tf.math.subtract_13/SubSubunknowntf.math.multiply_41/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_13/Sub؛
tf.math.multiply_40/MulMul'leaky_re_lu_12/PartitionedCall:output:0tf.math.multiply_39/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_40/Mul?
tf.__operators__.add_27/AddV2AddV2tf.math.multiply_40/Mul:z:0tf.math.subtract_13/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_27/AddV2إ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_27/AddV2:z:0conv2d_19_13021045conv2d_19_13021047*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_130210442#
!conv2d_19/StatefulPartitionedCall
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
GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_130210552 
leaky_re_lu_13/PartitionedCall?
-tf.math.reduce_mean_28/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_28/Mean/reduction_indicesَ
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
 tf.stop_gradient_14/StopGradient
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
 *o:2
tf.__operators__.add_28/yث
tf.__operators__.add_28/AddV2AddV2$tf.math.reduce_mean_29/Mean:output:0"tf.__operators__.add_28/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_28/AddV2
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
tf.math.multiply_44/Mul
tf.math.subtract_14/SubSub	unknown_0tf.math.multiply_44/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_14/Sub?
tf.math.multiply_43/MulMul'leaky_re_lu_13/PartitionedCall:output:0tf.math.multiply_42/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_43/Mul؛
tf.__operators__.add_29/AddV2AddV2tf.math.multiply_43/Mul:z:0tf.math.subtract_14/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.__operators__.add_29/AddV2ئ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_29/AddV2:z:0conv2d_20_13021085conv2d_20_13021087*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_130210842#
!conv2d_20/StatefulPartitionedCall
leaky_re_lu_14/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_130210952 
leaky_re_lu_14/PartitionedCall?
-tf.math.reduce_mean_30/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_30/Mean/reduction_indicesُ
tf.math.reduce_mean_30/MeanMean'leaky_re_lu_14/PartitionedCall:output:06tf.math.reduce_mean_30/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_30/Mean?
 tf.stop_gradient_15/StopGradientStopGradient$tf.math.reduce_mean_30/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_15/StopGradient
/tf.math.squared_difference_15/SquaredDifferenceSquaredDifference'leaky_re_lu_14/PartitionedCall:output:0)tf.stop_gradient_15/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_31/Mean{
tf.__operators__.add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_30/yج
tf.__operators__.add_30/AddV2AddV2$tf.math.reduce_mean_31/Mean:output:0"tf.__operators__.add_30/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_30/AddV2
tf.math.rsqrt_15/RsqrtRsqrt!tf.__operators__.add_30/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_15/Rsqrt?
tf.math.multiply_45/MulMultf.math.rsqrt_15/Rsqrt:y:0tf_math_multiply_45_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_45/Mul?
tf.math.multiply_47/MulMul$tf.math.reduce_mean_30/Mean:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_47/Mul
tf.math.subtract_15/SubSub	unknown_1tf.math.multiply_47/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_15/Sub?
tf.math.multiply_46/MulMul'leaky_re_lu_14/PartitionedCall:output:0tf.math.multiply_45/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_46/Mul?
tf.__operators__.add_31/AddV2AddV2tf.math.multiply_46/Mul:z:0tf.math.subtract_15/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_31/AddV2ئ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_31/AddV2:z:0conv2d_21_13021125conv2d_21_13021127*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_130211242#
!conv2d_21/StatefulPartitionedCall
leaky_re_lu_15/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_130211352 
leaky_re_lu_15/PartitionedCall?
-tf.math.reduce_mean_32/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_32/Mean/reduction_indicesُ
tf.math.reduce_mean_32/MeanMean'leaky_re_lu_15/PartitionedCall:output:06tf.math.reduce_mean_32/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_32/Mean?
 tf.stop_gradient_16/StopGradientStopGradient$tf.math.reduce_mean_32/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_16/StopGradient
/tf.math.squared_difference_16/SquaredDifferenceSquaredDifference'leaky_re_lu_15/PartitionedCall:output:0)tf.stop_gradient_16/StopGradient:output:0*
T0*0
_output_shapes
:?????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_33/Mean{
tf.__operators__.add_32/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_32/yج
tf.__operators__.add_32/AddV2AddV2$tf.math.reduce_mean_33/Mean:output:0"tf.__operators__.add_32/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_32/AddV2
tf.math.rsqrt_16/RsqrtRsqrt!tf.__operators__.add_32/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_16/Rsqrt?
tf.math.multiply_48/MulMultf.math.rsqrt_16/Rsqrt:y:0tf_math_multiply_48_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_48/Mul?
tf.math.multiply_50/MulMul$tf.math.reduce_mean_32/Mean:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_50/Mul
tf.math.subtract_16/SubSub	unknown_2tf.math.multiply_50/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_16/Sub?
tf.math.multiply_49/MulMul'leaky_re_lu_15/PartitionedCall:output:0tf.math.multiply_48/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_49/Mul?
tf.__operators__.add_33/AddV2AddV2tf.math.multiply_49/Mul:z:0tf.math.subtract_16/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_33/AddV2¤
up_sampling2d_4/PartitionedCallPartitionedCall!tf.__operators__.add_33/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_130209242!
up_sampling2d_4/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0conv2d_22_13021167conv2d_22_13021169*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_22_layer_call_and_return_conditional_losses_130211662#
!conv2d_22/StatefulPartitionedCall
dropout_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_130211772
dropout_3/PartitionedCall?
-tf.math.reduce_mean_34/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_34/Mean/reduction_indicesي
tf.math.reduce_mean_34/MeanMean"dropout_3/PartitionedCall:output:06tf.math.reduce_mean_34/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_34/Mean?
 tf.stop_gradient_17/StopGradientStopGradient$tf.math.reduce_mean_34/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_17/StopGradient
/tf.math.squared_difference_17/SquaredDifferenceSquaredDifference"dropout_3/PartitionedCall:output:0)tf.stop_gradient_17/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_35/Mean{
tf.__operators__.add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_34/yج
tf.__operators__.add_34/AddV2AddV2$tf.math.reduce_mean_35/Mean:output:0"tf.__operators__.add_34/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_34/AddV2
tf.math.rsqrt_17/RsqrtRsqrt!tf.__operators__.add_34/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_17/Rsqrt?
tf.math.multiply_51/MulMultf.math.rsqrt_17/Rsqrt:y:0tf_math_multiply_51_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_51/Mul?
tf.math.multiply_53/MulMul$tf.math.reduce_mean_34/Mean:output:0tf.math.multiply_51/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_53/Mul
tf.math.subtract_17/SubSub	unknown_3tf.math.multiply_53/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_17/Subا
tf.math.multiply_52/MulMul"dropout_3/PartitionedCall:output:0tf.math.multiply_51/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_52/Mulخ
tf.__operators__.add_35/AddV2AddV2tf.math.multiply_52/Mul:z:0tf.math.subtract_17/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_35/AddV2?
concatenate_3/PartitionedCallPartitionedCall!tf.__operators__.add_35/AddV2:z:0!tf.__operators__.add_31/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_3_layer_call_and_return_conditional_losses_130212032
concatenate_3/PartitionedCall?
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_130209432!
up_sampling2d_5/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_5/PartitionedCall:output:0conv2d_23_13021218conv2d_23_13021220*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_23_layer_call_and_return_conditional_losses_130212172#
!conv2d_23/StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_4_layer_call_and_return_conditional_losses_130212282
dropout_4/PartitionedCall?
-tf.math.reduce_mean_36/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_36/Mean/reduction_indicesى
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
 tf.stop_gradient_18/StopGradient
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
 *o:2
tf.__operators__.add_36/yث
tf.__operators__.add_36/AddV2AddV2$tf.math.reduce_mean_37/Mean:output:0"tf.__operators__.add_36/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_36/AddV2
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
tf.math.multiply_56/Mul
tf.math.subtract_18/SubSub	unknown_4tf.math.multiply_56/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_18/Subئ
tf.math.multiply_55/MulMul"dropout_4/PartitionedCall:output:0tf.math.multiply_54/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_55/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_4_layer_call_and_return_conditional_losses_130212542
concatenate_4/PartitionedCall?
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_130209622!
up_sampling2d_6/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_6/PartitionedCall:output:0conv2d_24_13021269conv2d_24_13021271*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_24_layer_call_and_return_conditional_losses_130212682#
!conv2d_24/StatefulPartitionedCall
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
GPU2*0J 8 *P
fKRI
G__inference_dropout_5_layer_call_and_return_conditional_losses_130212792
dropout_5/PartitionedCall?
-tf.math.reduce_mean_38/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_38/Mean/reduction_indicesى
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
 tf.stop_gradient_19/StopGradient
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
 *o:2
tf.__operators__.add_38/yث
tf.__operators__.add_38/AddV2AddV2$tf.math.reduce_mean_39/Mean:output:0"tf.__operators__.add_38/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_38/AddV2
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
tf.math.multiply_59/Mul
tf.math.subtract_19/SubSub	unknown_5tf.math.multiply_59/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_19/Subئ
tf.math.multiply_58/MulMul"dropout_5/PartitionedCall:output:0tf.math.multiply_57/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_58/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_5_layer_call_and_return_conditional_losses_130213052
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
GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_130209812!
up_sampling2d_7/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0conv2d_25_13021320conv2d_25_13021322*
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
GPU2*0J 8 *P
fKRI
G__inference_conv2d_25_layer_call_and_return_conditional_losses_130213192#
!conv2d_25/StatefulPartitionedCall?
IdentityIdentity*conv2d_25/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
:?????????
 
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
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::-)
'
_output_shapes
::,(
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
ش
?
,__inference_conv2d_18_layer_call_fn_13022944

inputs!
unknown: 
	unknown_0: 
identity?StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_130210042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

¤
,__inference_conv2d_22_layer_call_fn_13023060

inputs#
unknown:
	unknown_0:	
identity?StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_22_layer_call_and_return_conditional_losses_130211662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_4_layer_call_and_return_conditional_losses_13023146

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity

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
،
\
0__inference_concatenate_3_layer_call_fn_13023104
inputs_0
inputs_1
identityق
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_3_layer_call_and_return_conditional_losses_130212032
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,???????????????????????????:?????????  :l h
B
_output_shapes0
.:,???????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????  
"
_user_specified_name
inputs/1

h
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_13021015

inputs
identity^
	LeakyRelu	LeakyReluinputs*1
_output_shapes
:????????? 2
	LeakyReluu
IdentityIdentityLeakyRelu:activations:0*
T0*1
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? :Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs

h
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_13022993

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
1__inference_leaky_re_lu_12_layer_call_fn_13022959

inputs
identityط
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_130210152
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? :Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_13023098

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeد
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2
dropout/GreaterEqual/yع
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,???????????????????????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,???????????????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,???????????????????????????2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
G
­

$__inference__traced_restore_13023394
file_prefix;
!assignvariableop_conv2d_18_kernel: /
!assignvariableop_1_conv2d_18_bias: =
#assignvariableop_2_conv2d_19_kernel: @/
!assignvariableop_3_conv2d_19_bias:@>
#assignvariableop_4_conv2d_20_kernel:@0
!assignvariableop_5_conv2d_20_bias:	?
#assignvariableop_6_conv2d_21_kernel:0
!assignvariableop_7_conv2d_21_bias:	?
#assignvariableop_8_conv2d_22_kernel:0
!assignvariableop_9_conv2d_22_bias:	?
$assignvariableop_10_conv2d_23_kernel:@0
"assignvariableop_11_conv2d_23_bias:@?
$assignvariableop_12_conv2d_24_kernel: 0
"assignvariableop_13_conv2d_24_bias: >
$assignvariableop_14_conv2d_25_kernel:@0
"assignvariableop_15_conv2d_25_bias:
identity_17?AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
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

Identity 
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
Identity_10،
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
Identity_12،
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
Identity_14،
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
?

G__inference_conv2d_25_layer_call_and_return_conditional_losses_13023251

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
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
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
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

h
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_13023022

inputs
identity]
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????  2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????  :X T
0
_output_shapes
:?????????  
 
_user_specified_nameinputs
?


G__inference_conv2d_19_layer_call_and_return_conditional_losses_13022983

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp
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
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:????????? 
 
_user_specified_nameinputs

f
G__inference_dropout_4_layer_call_and_return_conditional_losses_13021466

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeخ
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
 *حجL>2
dropout/GreaterEqual/yظ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast
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
 
_user_specified_nameinputs"جL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default،
E
input_4:
serving_default_input_4:0?????????G
	conv2d_25:
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ت،
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
+?&call_and_return_all_conditional_losses"ق
_tf_keras_networkإ{"name": "model_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["input_4", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_12", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_26", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_26", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_13", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_13", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_13", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_13", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.stop_gradient_13", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_27", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_27", "inbound_nodes": [["tf.math.squared_difference_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_26", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_26", "inbound_nodes": [["tf.math.reduce_mean_27", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_13", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_13", "inbound_nodes": [["tf.__operators__.add_26", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_39", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_39", "inbound_nodes": [["tf.math.rsqrt_13", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_41", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"y": ["tf.math.multiply_39", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_26", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_26", "inbound_nodes": [["tf.math.multiply_39", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_13", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_13", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_41", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_40", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.cast_26", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_27", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_27", "inbound_nodes": [["tf.math.subtract_13", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_27", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_27", "inbound_nodes": [["tf.math.multiply_40", 0, 0, {"y": ["tf.cast_27", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["tf.__operators__.add_27", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_13", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_28", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_28", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_14", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_14", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_14", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_14", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.stop_gradient_14", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_29", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_29", "inbound_nodes": [["tf.math.squared_difference_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_28", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_28", "inbound_nodes": [["tf.math.reduce_mean_29", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_14", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_14", "inbound_nodes": [["tf.__operators__.add_28", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_42", "inbound_nodes": [["tf.math.rsqrt_14", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_44", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_44", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"y": ["tf.math.multiply_42", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_28", "inbound_nodes": [["tf.math.multiply_42", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_14", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_14", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_44", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_43", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_29", "inbound_nodes": [["tf.math.subtract_14", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_29", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_29", "inbound_nodes": [["tf.math.multiply_43", 0, 0, {"y": ["tf.cast_29", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_20", "inbound_nodes": [[["tf.__operators__.add_29", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_14", "inbound_nodes": [[["conv2d_20", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_30", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_30", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_15", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_15", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_15", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_15", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.stop_gradient_15", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_31", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_31", "inbound_nodes": [["tf.math.squared_difference_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_30", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_30", "inbound_nodes": [["tf.math.reduce_mean_31", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_15", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_15", "inbound_nodes": [["tf.__operators__.add_30", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_45", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_45", "inbound_nodes": [["tf.math.rsqrt_15", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_47", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_47", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"y": ["tf.math.multiply_45", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_30", "inbound_nodes": [["tf.math.multiply_45", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_15", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_15", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_47", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_46", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_46", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_31", "inbound_nodes": [["tf.math.subtract_15", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_31", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_31", "inbound_nodes": [["tf.math.multiply_46", 0, 0, {"y": ["tf.cast_31", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_21", "inbound_nodes": [[["tf.__operators__.add_31", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_15", "inbound_nodes": [[["conv2d_21", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_32", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_32", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_16", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_16", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_16", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_16", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.stop_gradient_16", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_33", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_33", "inbound_nodes": [["tf.math.squared_difference_16", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_32", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_32", "inbound_nodes": [["tf.math.reduce_mean_33", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_16", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_16", "inbound_nodes": [["tf.__operators__.add_32", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_48", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_48", "inbound_nodes": [["tf.math.rsqrt_16", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_50", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_50", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"y": ["tf.math.multiply_48", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_32", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_32", "inbound_nodes": [["tf.math.multiply_48", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_16", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_16", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_50", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_49", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_49", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.cast_32", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_33", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_33", "inbound_nodes": [["tf.math.subtract_16", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_33", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_33", "inbound_nodes": [["tf.math.multiply_49", 0, 0, {"y": ["tf.cast_33", 0, 0], "name": null}]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_4", "inbound_nodes": [[["tf.__operators__.add_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_22", "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["conv2d_22", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_34", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_34", "inbound_nodes": [["dropout_3", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_17", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_17", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_17", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_17", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.stop_gradient_17", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_35", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_35", "inbound_nodes": [["tf.math.squared_difference_17", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_34", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_34", "inbound_nodes": [["tf.math.reduce_mean_35", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_17", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_17", "inbound_nodes": [["tf.__operators__.add_34", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_51", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_51", "inbound_nodes": [["tf.math.rsqrt_17", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_53", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_53", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"y": ["tf.math.multiply_51", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_34", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_34", "inbound_nodes": [["tf.math.multiply_51", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_17", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_17", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_53", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_52", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_52", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.cast_34", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_35", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_35", "inbound_nodes": [["tf.math.subtract_17", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_35", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_35", "inbound_nodes": [["tf.math.multiply_52", 0, 0, {"y": ["tf.cast_35", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["tf.__operators__.add_35", 0, 0, {}], ["tf.__operators__.add_31", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_5", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_23", "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_4", "inbound_nodes": [[["conv2d_23", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_36", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_36", "inbound_nodes": [["dropout_4", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_18", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_18", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_18", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_18", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.stop_gradient_18", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_37", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_37", "inbound_nodes": [["tf.math.squared_difference_18", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_36", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_36", "inbound_nodes": [["tf.math.reduce_mean_37", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_18", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_18", "inbound_nodes": [["tf.__operators__.add_36", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_54", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_54", "inbound_nodes": [["tf.math.rsqrt_18", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_56", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_56", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"y": ["tf.math.multiply_54", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_36", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_36", "inbound_nodes": [["tf.math.multiply_54", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_18", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_18", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_56", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_55", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_55", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.cast_36", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_37", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_37", "inbound_nodes": [["tf.math.subtract_18", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_37", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_37", "inbound_nodes": [["tf.math.multiply_55", 0, 0, {"y": ["tf.cast_37", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_4", "inbound_nodes": [[["tf.__operators__.add_37", 0, 0, {}], ["tf.__operators__.add_29", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_6", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_24", "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_5", "inbound_nodes": [[["conv2d_24", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_38", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_38", "inbound_nodes": [["dropout_5", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_19", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_19", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_19", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_19", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.stop_gradient_19", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_39", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_39", "inbound_nodes": [["tf.math.squared_difference_19", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_38", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_38", "inbound_nodes": [["tf.math.reduce_mean_39", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_19", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_19", "inbound_nodes": [["tf.__operators__.add_38", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_57", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_57", "inbound_nodes": [["tf.math.rsqrt_19", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_59", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_59", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"y": ["tf.math.multiply_57", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_38", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_38", "inbound_nodes": [["tf.math.multiply_57", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_19", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_19", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_59", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_58", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_58", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.cast_38", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_39", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_39", "inbound_nodes": [["tf.math.subtract_19", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_39", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_39", "inbound_nodes": [["tf.math.multiply_58", 0, 0, {"y": ["tf.cast_39", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_5", "inbound_nodes": [[["tf.__operators__.add_39", 0, 0, {}], ["tf.__operators__.add_27", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_7", "inbound_nodes": [[["concatenate_5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]]}], "input_layers": [["input_4", 0, 0]], "output_layers": [["conv2d_25", 0, 0]]}, "shared_object_id": 130, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input_4"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_12", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_26", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_26", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_13", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_13", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"name": null}]], "shared_object_id": 6}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_13", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_13", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.stop_gradient_13", 0, 0], "name": null}]], "shared_object_id": 7}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_27", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_27", "inbound_nodes": [["tf.math.squared_difference_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_26", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_26", "inbound_nodes": [["tf.math.reduce_mean_27", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_13", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_13", "inbound_nodes": [["tf.__operators__.add_26", 0, 0, {}]], "shared_object_id": 10}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_39", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_39", "inbound_nodes": [["tf.math.rsqrt_13", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_41", "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"y": ["tf.math.multiply_39", 0, 0], "name": null}]], "shared_object_id": 12}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_26", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_26", "inbound_nodes": [["tf.math.multiply_39", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_13", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_13", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_41", 0, 0], "name": null}]], "shared_object_id": 14}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_40", "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.cast_26", 0, 0], "name": null}]], "shared_object_id": 15}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_27", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_27", "inbound_nodes": [["tf.math.subtract_13", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_27", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_27", "inbound_nodes": [["tf.math.multiply_40", 0, 0, {"y": ["tf.cast_27", 0, 0], "name": null}]], "shared_object_id": 17}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_13", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_28", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_28", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_14", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_14", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"name": null}]], "shared_object_id": 23}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_14", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_14", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.stop_gradient_14", 0, 0], "name": null}]], "shared_object_id": 24}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_29", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_29", "inbound_nodes": [["tf.math.squared_difference_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_28", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_28", "inbound_nodes": [["tf.math.reduce_mean_29", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_14", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_14", "inbound_nodes": [["tf.__operators__.add_28", 0, 0, {}]], "shared_object_id": 27}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_42", "inbound_nodes": [["tf.math.rsqrt_14", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_44", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_44", "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"y": ["tf.math.multiply_42", 0, 0], "name": null}]], "shared_object_id": 29}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_28", "inbound_nodes": [["tf.math.multiply_42", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_14", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_14", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_44", 0, 0], "name": null}]], "shared_object_id": 31}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_43", "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]], "shared_object_id": 32}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_29", "inbound_nodes": [["tf.math.subtract_14", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_29", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_29", "inbound_nodes": [["tf.math.multiply_43", 0, 0, {"y": ["tf.cast_29", 0, 0], "name": null}]], "shared_object_id": 34}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_20", "inbound_nodes": [[["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_14", "inbound_nodes": [[["conv2d_20", 0, 0, {}]]], "shared_object_id": 38}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_30", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_30", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_15", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_15", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"name": null}]], "shared_object_id": 40}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_15", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_15", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.stop_gradient_15", 0, 0], "name": null}]], "shared_object_id": 41}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_31", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_31", "inbound_nodes": [["tf.math.squared_difference_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_30", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_30", "inbound_nodes": [["tf.math.reduce_mean_31", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_15", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_15", "inbound_nodes": [["tf.__operators__.add_30", 0, 0, {}]], "shared_object_id": 44}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_45", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_45", "inbound_nodes": [["tf.math.rsqrt_15", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_47", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_47", "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"y": ["tf.math.multiply_45", 0, 0], "name": null}]], "shared_object_id": 46}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_30", "inbound_nodes": [["tf.math.multiply_45", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_15", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_15", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_47", 0, 0], "name": null}]], "shared_object_id": 48}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_46", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_46", "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": null}]], "shared_object_id": 49}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_31", "inbound_nodes": [["tf.math.subtract_15", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_31", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_31", "inbound_nodes": [["tf.math.multiply_46", 0, 0, {"y": ["tf.cast_31", 0, 0], "name": null}]], "shared_object_id": 51}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_21", "inbound_nodes": [[["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 54}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_15", "inbound_nodes": [[["conv2d_21", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_32", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_32", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_16", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_16", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"name": null}]], "shared_object_id": 57}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_16", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_16", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.stop_gradient_16", 0, 0], "name": null}]], "shared_object_id": 58}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_33", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_33", "inbound_nodes": [["tf.math.squared_difference_16", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_32", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_32", "inbound_nodes": [["tf.math.reduce_mean_33", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_16", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_16", "inbound_nodes": [["tf.__operators__.add_32", 0, 0, {}]], "shared_object_id": 61}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_48", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_48", "inbound_nodes": [["tf.math.rsqrt_16", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_50", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_50", "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"y": ["tf.math.multiply_48", 0, 0], "name": null}]], "shared_object_id": 63}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_32", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_32", "inbound_nodes": [["tf.math.multiply_48", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_16", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_16", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_50", 0, 0], "name": null}]], "shared_object_id": 65}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_49", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_49", "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.cast_32", 0, 0], "name": null}]], "shared_object_id": 66}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_33", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_33", "inbound_nodes": [["tf.math.subtract_16", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_33", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_33", "inbound_nodes": [["tf.math.multiply_49", 0, 0, {"y": ["tf.cast_33", 0, 0], "name": null}]], "shared_object_id": 68}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_4", "inbound_nodes": [[["tf.__operators__.add_33", 0, 0, {}]]], "shared_object_id": 69}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_22", "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}]]], "shared_object_id": 72}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["conv2d_22", 0, 0, {}]]], "shared_object_id": 73}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_34", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_34", "inbound_nodes": [["dropout_3", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_17", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_17", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"name": null}]], "shared_object_id": 75}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_17", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_17", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.stop_gradient_17", 0, 0], "name": null}]], "shared_object_id": 76}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_35", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_35", "inbound_nodes": [["tf.math.squared_difference_17", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_34", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_34", "inbound_nodes": [["tf.math.reduce_mean_35", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_17", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_17", "inbound_nodes": [["tf.__operators__.add_34", 0, 0, {}]], "shared_object_id": 79}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_51", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_51", "inbound_nodes": [["tf.math.rsqrt_17", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_53", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_53", "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"y": ["tf.math.multiply_51", 0, 0], "name": null}]], "shared_object_id": 81}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_34", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_34", "inbound_nodes": [["tf.math.multiply_51", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_17", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_17", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_53", 0, 0], "name": null}]], "shared_object_id": 83}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_52", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_52", "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.cast_34", 0, 0], "name": null}]], "shared_object_id": 84}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_35", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_35", "inbound_nodes": [["tf.math.subtract_17", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_35", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_35", "inbound_nodes": [["tf.math.multiply_52", 0, 0, {"y": ["tf.cast_35", 0, 0], "name": null}]], "shared_object_id": 86}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["tf.__operators__.add_35", 0, 0, {}], ["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 87}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_5", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 88}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_23", "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}]]], "shared_object_id": 91}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_4", "inbound_nodes": [[["conv2d_23", 0, 0, {}]]], "shared_object_id": 92}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_36", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_36", "inbound_nodes": [["dropout_4", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_18", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_18", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"name": null}]], "shared_object_id": 94}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_18", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_18", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.stop_gradient_18", 0, 0], "name": null}]], "shared_object_id": 95}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_37", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_37", "inbound_nodes": [["tf.math.squared_difference_18", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_36", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_36", "inbound_nodes": [["tf.math.reduce_mean_37", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_18", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_18", "inbound_nodes": [["tf.__operators__.add_36", 0, 0, {}]], "shared_object_id": 98}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_54", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_54", "inbound_nodes": [["tf.math.rsqrt_18", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_56", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_56", "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"y": ["tf.math.multiply_54", 0, 0], "name": null}]], "shared_object_id": 100}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_36", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_36", "inbound_nodes": [["tf.math.multiply_54", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_18", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_18", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_56", 0, 0], "name": null}]], "shared_object_id": 102}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_55", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_55", "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.cast_36", 0, 0], "name": null}]], "shared_object_id": 103}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_37", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_37", "inbound_nodes": [["tf.math.subtract_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_37", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_37", "inbound_nodes": [["tf.math.multiply_55", 0, 0, {"y": ["tf.cast_37", 0, 0], "name": null}]], "shared_object_id": 105}, {"class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_4", "inbound_nodes": [[["tf.__operators__.add_37", 0, 0, {}], ["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 106}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_6", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 107}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_24", "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]], "shared_object_id": 110}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_5", "inbound_nodes": [[["conv2d_24", 0, 0, {}]]], "shared_object_id": 111}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_38", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_38", "inbound_nodes": [["dropout_5", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_19", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_19", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"name": null}]], "shared_object_id": 113}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_19", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_19", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.stop_gradient_19", 0, 0], "name": null}]], "shared_object_id": 114}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_39", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_39", "inbound_nodes": [["tf.math.squared_difference_19", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_38", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_38", "inbound_nodes": [["tf.math.reduce_mean_39", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_19", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_19", "inbound_nodes": [["tf.__operators__.add_38", 0, 0, {}]], "shared_object_id": 117}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_57", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_57", "inbound_nodes": [["tf.math.rsqrt_19", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_59", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_59", "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"y": ["tf.math.multiply_57", 0, 0], "name": null}]], "shared_object_id": 119}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_38", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_38", "inbound_nodes": [["tf.math.multiply_57", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_19", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_19", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_59", 0, 0], "name": null}]], "shared_object_id": 121}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_58", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_58", "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.cast_38", 0, 0], "name": null}]], "shared_object_id": 122}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_39", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_39", "inbound_nodes": [["tf.math.subtract_19", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_39", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_39", "inbound_nodes": [["tf.math.multiply_58", 0, 0, {"y": ["tf.cast_39", 0, 0], "name": null}]], "shared_object_id": 124}, {"class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_5", "inbound_nodes": [[["tf.__operators__.add_39", 0, 0, {}], ["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 125}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_7", "inbound_nodes": [[["concatenate_5", 0, 0, {}]]], "shared_object_id": 126}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]], "shared_object_id": 129}], "input_layers": [["input_4", 0, 0]], "output_layers": [["conv2d_25", 0, 0]]}}}
?"?
_tf_keras_input_layerغ{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}


xkernel
ybias
ztrainable_variables
{	variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layerء	{"name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 132}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
?
~trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 4}
َ
	keras_api"?
_tf_keras_layerء{"name": "tf.math.reduce_mean_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_26", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}
ة
	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_13", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"name": null}]], "shared_object_id": 6}

	keras_api"ِ
_tf_keras_layerض{"name": "tf.math.squared_difference_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_13", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.stop_gradient_13", 0, 0], "name": null}]], "shared_object_id": 7}

	keras_api"َ
_tf_keras_layerش{"name": "tf.math.reduce_mean_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_27", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}
ف
	keras_api"خ
_tf_keras_layer?{"name": "tf.__operators__.add_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_26", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_27", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}
?
	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_13", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_26", 0, 0, {}]], "shared_object_id": 10}
ّ
	keras_api"?
_tf_keras_layerؤ{"name": "tf.math.multiply_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_39", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_13", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}
َ
	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_41", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_26", 0, 0, {"y": ["tf.math.multiply_39", 0, 0], "name": null}]], "shared_object_id": 12}
?
	keras_api"
_tf_keras_layer{"name": "tf.cast_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_26", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_39", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}

	keras_api"?
_tf_keras_layerـ{"name": "tf.math.subtract_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_13", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_41", 0, 0], "name": null}]], "shared_object_id": 14}
?
	keras_api"ت
_tf_keras_layer?{"name": "tf.math.multiply_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_40", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_12", 0, 0, {"y": ["tf.cast_26", 0, 0], "name": null}]], "shared_object_id": 15}
?
	keras_api"
_tf_keras_layer{"name": "tf.cast_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_27", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_13", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}
َ
	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_27", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_40", 0, 0, {"y": ["tf.cast_27", 0, 0], "name": null}]], "shared_object_id": 17}

kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"ِ	
_tf_keras_layerض	{"name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 133}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 32]}}
،
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 21}
ُ
	keras_api"?
_tf_keras_layerآ{"name": "tf.math.reduce_mean_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_28", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}
ت
	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_14", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"name": null}]], "shared_object_id": 23}

	keras_api"ّ
_tf_keras_layerط{"name": "tf.math.squared_difference_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_14", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.stop_gradient_14", 0, 0], "name": null}]], "shared_object_id": 24}

	keras_api"ُ
_tf_keras_layerص{"name": "tf.math.reduce_mean_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_29", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}
ق
	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_28", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_29", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}
?
	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_14", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_28", 0, 0, {}]], "shared_object_id": 27}

	keras_api"?
_tf_keras_layerل{"name": "tf.math.multiply_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_42", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_14", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}
َ
 	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_44", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_28", 0, 0, {"y": ["tf.math.multiply_42", 0, 0], "name": null}]], "shared_object_id": 29}
?
?	keras_api"
_tf_keras_layer{"name": "tf.cast_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_28", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_42", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}
­
?	keras_api"
_tf_keras_layer{"name": "tf.math.subtract_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_14", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_44", 0, 0], "name": null}]], "shared_object_id": 31}
?
?	keras_api"ت
_tf_keras_layer?{"name": "tf.math.multiply_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_43", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_13", 0, 0, {"y": ["tf.cast_28", 0, 0], "name": null}]], "shared_object_id": 32}
?
¤	keras_api"
_tf_keras_layer{"name": "tf.cast_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_29", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_14", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}
َ
?	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_29", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_43", 0, 0, {"y": ["tf.cast_29", 0, 0], "name": null}]], "shared_object_id": 34}

?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"ُ	
_tf_keras_layerص	{"name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 134}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
،
،trainable_variables
­	variables
?regularization_losses
?	keras_api
؛__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_20", 0, 0, {}]]], "shared_object_id": 38}
ُ
?	keras_api"?
_tf_keras_layerآ{"name": "tf.math.reduce_mean_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_30", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}
ت
?	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_15", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"name": null}]], "shared_object_id": 40}

?	keras_api"ّ
_tf_keras_layerط{"name": "tf.math.squared_difference_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_15", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.stop_gradient_15", 0, 0], "name": null}]], "shared_object_id": 41}

?	keras_api"ُ
_tf_keras_layerص{"name": "tf.math.reduce_mean_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_31", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}
ق
?	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_30", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_31", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}
?
?	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_15", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_30", 0, 0, {}]], "shared_object_id": 44}
ر
?	keras_api"?
_tf_keras_layer¤{"name": "tf.math.multiply_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_45", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_15", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}
َ
?	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_47", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_30", 0, 0, {"y": ["tf.math.multiply_45", 0, 0], "name": null}]], "shared_object_id": 46}
?
?	keras_api"
_tf_keras_layer{"name": "tf.cast_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_30", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_45", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}
ٍ
?	keras_api"غ
_tf_keras_layer?{"name": "tf.math.subtract_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_15", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_47", 0, 0], "name": null}]], "shared_object_id": 48}
?
?	keras_api"ت
_tf_keras_layer?{"name": "tf.math.multiply_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_46", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_14", 0, 0, {"y": ["tf.cast_30", 0, 0], "name": null}]], "shared_object_id": 49}
?
؛	keras_api"
_tf_keras_layer{"name": "tf.cast_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_31", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_15", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}
َ
?	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_31", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_46", 0, 0, {"y": ["tf.cast_31", 0, 0], "name": null}]], "shared_object_id": 51}

?kernel
	?bias
؟trainable_variables
?	variables
ءregularization_losses
آ	keras_api
?__call__
+?&call_and_return_all_conditional_losses"ّ	
_tf_keras_layerط	{"name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 135}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
،
أtrainable_variables
ؤ	variables
إregularization_losses
ئ	keras_api
؟__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_21", 0, 0, {}]]], "shared_object_id": 55}
ُ
ا	keras_api"?
_tf_keras_layerآ{"name": "tf.math.reduce_mean_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_32", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}
ت
ب	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_16", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"name": null}]], "shared_object_id": 57}

ة	keras_api"ّ
_tf_keras_layerط{"name": "tf.math.squared_difference_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_16", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.stop_gradient_16", 0, 0], "name": null}]], "shared_object_id": 58}

ت	keras_api"ُ
_tf_keras_layerص{"name": "tf.math.reduce_mean_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_33", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_16", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}
ق
ث	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_32", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_33", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}
?
ج	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_16", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_32", 0, 0, {}]], "shared_object_id": 61}
ر
ح	keras_api"?
_tf_keras_layer¤{"name": "tf.math.multiply_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_48", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_16", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}
َ
خ	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_50", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_32", 0, 0, {"y": ["tf.math.multiply_48", 0, 0], "name": null}]], "shared_object_id": 63}
?
د	keras_api"
_tf_keras_layer{"name": "tf.cast_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_32", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_48", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}
ٍ
ذ	keras_api"غ
_tf_keras_layer?{"name": "tf.math.subtract_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_16", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_50", 0, 0], "name": null}]], "shared_object_id": 65}
?
ر	keras_api"ت
_tf_keras_layer?{"name": "tf.math.multiply_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_49", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_15", 0, 0, {"y": ["tf.cast_32", 0, 0], "name": null}]], "shared_object_id": 66}
?
ز	keras_api"
_tf_keras_layer{"name": "tf.cast_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_33", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_16", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}
َ
س	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_33", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_49", 0, 0, {"y": ["tf.cast_33", 0, 0], "name": null}]], "shared_object_id": 68}
?
شtrainable_variables
ص	variables
ضregularization_losses
ط	keras_api
ء__call__
+آ&call_and_return_all_conditional_losses"?
_tf_keras_layer{"name": "up_sampling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_4", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["tf.__operators__.add_33", 0, 0, {}]]], "shared_object_id": 69, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 136}}

ظkernel
	عbias
غtrainable_variables
?	variables
?regularization_losses
?	keras_api
أ__call__
+ؤ&call_and_return_all_conditional_losses"ه	
_tf_keras_layerح	{"name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_4", 0, 0, {}]]], "shared_object_id": 72, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 137}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 256]}}
?
?trainable_variables
?	variables
ـregularization_losses
ف	keras_api
إ__call__
+ئ&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_22", 0, 0, {}]]], "shared_object_id": 73}
ي
ق	keras_api"ط
_tf_keras_layer?{"name": "tf.math.reduce_mean_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_34", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_3", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}
ت
ك	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_17", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"name": null}]], "shared_object_id": 75}
?
ل	keras_api"ٌ
_tf_keras_layerز{"name": "tf.math.squared_difference_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_17", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.stop_gradient_17", 0, 0], "name": null}]], "shared_object_id": 76}

م	keras_api"ُ
_tf_keras_layerص{"name": "tf.math.reduce_mean_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_35", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_17", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}
ق
ن	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_34", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_35", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}
?
ه	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_17", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_34", 0, 0, {}]], "shared_object_id": 79}
ر
و	keras_api"?
_tf_keras_layer¤{"name": "tf.math.multiply_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_51", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_17", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}
َ
ى	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_53", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_34", 0, 0, {"y": ["tf.math.multiply_51", 0, 0], "name": null}]], "shared_object_id": 81}
?
ي	keras_api"
_tf_keras_layer{"name": "tf.cast_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_34", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_51", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}
ٍ
ً	keras_api"غ
_tf_keras_layer?{"name": "tf.math.subtract_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_17", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_53", 0, 0], "name": null}]], "shared_object_id": 83}
ظ
ٌ	keras_api"إ
_tf_keras_layer?{"name": "tf.math.multiply_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_52", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_3", 0, 0, {"y": ["tf.cast_34", 0, 0], "name": null}]], "shared_object_id": 84}
?
ٍ	keras_api"
_tf_keras_layer{"name": "tf.cast_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_35", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_17", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}
َ
َ	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_35", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_52", 0, 0, {"y": ["tf.cast_35", 0, 0], "name": null}]], "shared_object_id": 86}
ـ
ُtrainable_variables
ِ	variables
ّregularization_losses
ْ	keras_api
ا__call__
+ب&call_and_return_all_conditional_losses"ث
_tf_keras_layer?{"name": "concatenate_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_35", 0, 0, {}], ["tf.__operators__.add_31", 0, 0, {}]]], "shared_object_id": 87, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 128]}, {"class_name": "TensorShape", "items": [null, 32, 32, 128]}]}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
ة__call__
+ت&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "up_sampling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_5", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 88, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 138}}

?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
ث__call__
+ج&call_and_return_all_conditional_losses"ن	
_tf_keras_layerج	{"name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_5", 0, 0, {}]]], "shared_object_id": 91, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 139}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}}
?
?trainable_variables
?	variables
?regularization_losses
	keras_api
ح__call__
+خ&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_23", 0, 0, {}]]], "shared_object_id": 92}
ي
	keras_api"ط
_tf_keras_layer?{"name": "tf.math.reduce_mean_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_36", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_4", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}
ت
	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_18", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"name": null}]], "shared_object_id": 94}
?
	keras_api"ٌ
_tf_keras_layerز{"name": "tf.math.squared_difference_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_18", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.stop_gradient_18", 0, 0], "name": null}]], "shared_object_id": 95}

	keras_api"ُ
_tf_keras_layerص{"name": "tf.math.reduce_mean_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_37", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_18", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}
ق
	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_36", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_37", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}
?
	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_18", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_36", 0, 0, {}]], "shared_object_id": 98}

	keras_api"?
_tf_keras_layerل{"name": "tf.math.multiply_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_54", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_18", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}
ُ
	keras_api"?
_tf_keras_layerآ{"name": "tf.math.multiply_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_56", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_36", 0, 0, {"y": ["tf.math.multiply_54", 0, 0], "name": null}]], "shared_object_id": 100}
?
	keras_api" 
_tf_keras_layer{"name": "tf.cast_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_36", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_54", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}
?
	keras_api"
_tf_keras_layer{"name": "tf.math.subtract_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_18", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_56", 0, 0], "name": null}]], "shared_object_id": 102}
ع
	keras_api"ئ
_tf_keras_layer،{"name": "tf.math.multiply_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_55", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_4", 0, 0, {"y": ["tf.cast_36", 0, 0], "name": null}]], "shared_object_id": 103}
?
	keras_api" 
_tf_keras_layer{"name": "tf.cast_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_37", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}
ُ
	keras_api"?
_tf_keras_layerآ{"name": "tf.__operators__.add_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_37", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_55", 0, 0, {"y": ["tf.cast_37", 0, 0], "name": null}]], "shared_object_id": 105}
?
trainable_variables
	variables
regularization_losses
	keras_api
د__call__
+ذ&call_and_return_all_conditional_losses"ت
_tf_keras_layer?{"name": "concatenate_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_37", 0, 0, {}], ["tf.__operators__.add_29", 0, 0, {}]]], "shared_object_id": 106, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 64, 64, 64]}, {"class_name": "TensorShape", "items": [null, 64, 64, 64]}]}
?
trainable_variables
	variables
regularization_losses
	keras_api
ر__call__
+ز&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "up_sampling2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_6", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 107, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 140}}

kernel
	bias
trainable_variables
	variables
regularization_losses
	keras_api
س__call__
+ش&call_and_return_all_conditional_losses"ً	
_tf_keras_layerر	{"name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_6", 0, 0, {}]]], "shared_object_id": 110, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 141}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 128]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
ص__call__
+ض&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_24", 0, 0, {}]]], "shared_object_id": 111}
ً
 	keras_api"ظ
_tf_keras_layer?{"name": "tf.math.reduce_mean_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_38", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_5", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}
ث
?	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_19", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"name": null}]], "shared_object_id": 113}

?	keras_api"ٍ
_tf_keras_layerس{"name": "tf.math.squared_difference_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_19", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.stop_gradient_19", 0, 0], "name": null}]], "shared_object_id": 114}

?	keras_api"ِ
_tf_keras_layerض{"name": "tf.math.reduce_mean_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_39", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_19", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}
ك
¤	keras_api"ذ
_tf_keras_layer?{"name": "tf.__operators__.add_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_38", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_39", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}
?
?	keras_api"¤
_tf_keras_layer{"name": "tf.math.rsqrt_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_19", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_38", 0, 0, {}]], "shared_object_id": 117}
ْ
?	keras_api"?
_tf_keras_layerإ{"name": "tf.math.multiply_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_57", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_19", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}
ُ
?	keras_api"?
_tf_keras_layerآ{"name": "tf.math.multiply_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_59", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_38", 0, 0, {"y": ["tf.math.multiply_57", 0, 0], "name": null}]], "shared_object_id": 119}
?
?	keras_api" 
_tf_keras_layer{"name": "tf.cast_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_38", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_57", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}

?	keras_api"?
_tf_keras_layerف{"name": "tf.math.subtract_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_19", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_59", 0, 0], "name": null}]], "shared_object_id": 121}
ع
?	keras_api"ئ
_tf_keras_layer،{"name": "tf.math.multiply_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_58", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_5", 0, 0, {"y": ["tf.cast_38", 0, 0], "name": null}]], "shared_object_id": 122}
?
?	keras_api" 
_tf_keras_layer{"name": "tf.cast_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_39", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_19", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}
ُ
،	keras_api"?
_tf_keras_layerآ{"name": "tf.__operators__.add_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_39", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_58", 0, 0, {"y": ["tf.cast_39", 0, 0], "name": null}]], "shared_object_id": 124}
ك
­trainable_variables
?	variables
?regularization_losses
?	keras_api
ط__call__
+ظ&call_and_return_all_conditional_losses"خ
_tf_keras_layer?{"name": "concatenate_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_39", 0, 0, {}], ["tf.__operators__.add_27", 0, 0, {}]]], "shared_object_id": 125, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 128, 32]}, {"class_name": "TensorShape", "items": [null, 128, 128, 32]}]}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
ع__call__
+غ&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "up_sampling2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_7", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_5", 0, 0, {}]]], "shared_object_id": 126, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 142}}

?kernel
	?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"و	
_tf_keras_layerخ	{"name": "conv2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_7", 0, 0, {}]]], "shared_object_id": 129, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 143}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 64]}}
¤
x0
y1
2
3
?4
?5
?6
?7
ظ8
ع9
?10
?11
12
13
?14
?15"
trackable_list_wrapper
¤
x0
y1
2
3
?4
?5
?6
?7
ظ8
ع9
?10
?11
12
13
?14
?15"
trackable_list_wrapper
 "
trackable_list_wrapper
س
 ؛layer_regularization_losses
strainable_variables
?non_trainable_variables
?layer_metrics
?layers
t	variables
uregularization_losses
؟metrics
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
ztrainable_variables
ءnon_trainable_variables
آlayer_metrics
أlayers
{	variables
|regularization_losses
ؤmetrics
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
 إlayer_regularization_losses
~trainable_variables
ئnon_trainable_variables
اlayer_metrics
بlayers
	variables
regularization_losses
ةmetrics
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
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 تlayer_regularization_losses
trainable_variables
ثnon_trainable_variables
جlayer_metrics
حlayers
	variables
regularization_losses
خmetrics
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
 دlayer_regularization_losses
trainable_variables
ذnon_trainable_variables
رlayer_metrics
زlayers
	variables
regularization_losses
سmetrics
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
+:)@2conv2d_20/kernel
:2conv2d_20/bias
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
 شlayer_regularization_losses
?trainable_variables
صnon_trainable_variables
ضlayer_metrics
طlayers
?	variables
?regularization_losses
ظmetrics
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
 عlayer_regularization_losses
،trainable_variables
غnon_trainable_variables
?layer_metrics
?layers
­	variables
?regularization_losses
?metrics
؛__call__
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
,:*2conv2d_21/kernel
:2conv2d_21/bias
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
؟trainable_variables
?non_trainable_variables
ـlayer_metrics
فlayers
?	variables
ءregularization_losses
قmetrics
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
 كlayer_regularization_losses
أtrainable_variables
لnon_trainable_variables
مlayer_metrics
نlayers
ؤ	variables
إregularization_losses
هmetrics
؟__call__
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
 وlayer_regularization_losses
شtrainable_variables
ىnon_trainable_variables
يlayer_metrics
ًlayers
ص	variables
ضregularization_losses
ٌmetrics
ء__call__
+آ&call_and_return_all_conditional_losses
'آ"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_22/kernel
:2conv2d_22/bias
0
ظ0
ع1"
trackable_list_wrapper
0
ظ0
ع1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ٍlayer_regularization_losses
غtrainable_variables
َnon_trainable_variables
ُlayer_metrics
ِlayers
?	variables
?regularization_losses
ّmetrics
أ__call__
+ؤ&call_and_return_all_conditional_losses
'ؤ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ْlayer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
ـregularization_losses
?metrics
إ__call__
+ئ&call_and_return_all_conditional_losses
'ئ"call_and_return_conditional_losses"
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
ُtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
ِ	variables
ّregularization_losses
?metrics
ا__call__
+ب&call_and_return_all_conditional_losses
'ب"call_and_return_conditional_losses"
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
metrics
ة__call__
+ت&call_and_return_all_conditional_losses
'ت"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_23/kernel
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
 layer_regularization_losses
?trainable_variables
non_trainable_variables
layer_metrics
layers
?	variables
?regularization_losses
metrics
ث__call__
+ج&call_and_return_all_conditional_losses
'ج"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 layer_regularization_losses
?trainable_variables
non_trainable_variables
layer_metrics
layers
?	variables
?regularization_losses
metrics
ح__call__
+خ&call_and_return_all_conditional_losses
'خ"call_and_return_conditional_losses"
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
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
د__call__
+ذ&call_and_return_all_conditional_losses
'ذ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
ر__call__
+ز&call_and_return_all_conditional_losses
'ز"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_24/kernel
: 2conv2d_24/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
س__call__
+ش&call_and_return_all_conditional_losses
'ش"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 layer_regularization_losses
trainable_variables
non_trainable_variables
layer_metrics
layers
	variables
regularization_losses
metrics
ص__call__
+ض&call_and_return_all_conditional_losses
'ض"call_and_return_conditional_losses"
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
 layer_regularization_losses
­trainable_variables
 non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
ط__call__
+ظ&call_and_return_all_conditional_losses
'ظ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ¤layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?layers
?	variables
?regularization_losses
?metrics
ع__call__
+غ&call_and_return_all_conditional_losses
'غ"call_and_return_conditional_losses"
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
?trainable_variables
?non_trainable_variables
?layer_metrics
،layers
?	variables
?regularization_losses
­metrics
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
ً2و
#__inference__wrapped_model_13020911?
?
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *0?-
+(
input_4?????????
?2?
*__inference_model_3_layer_call_fn_13021389
*__inference_model_3_layer_call_fn_13022441
*__inference_model_3_layer_call_fn_13022506
*__inference_model_3_layer_call_fn_13021955?
???
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
ق2?
E__inference_model_3_layer_call_and_return_conditional_losses_13022710
E__inference_model_3_layer_call_and_return_conditional_losses_13022935
E__inference_model_3_layer_call_and_return_conditional_losses_13022132
E__inference_model_3_layer_call_and_return_conditional_losses_13022309?
???
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
ض2س
,__inference_conv2d_18_layer_call_fn_13022944?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_18_layer_call_and_return_conditional_losses_13022954?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2ظ
1__inference_leaky_re_lu_12_layer_call_fn_13022959?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_13022964?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ض2س
,__inference_conv2d_19_layer_call_fn_13022973?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_19_layer_call_and_return_conditional_losses_13022983?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2ظ
1__inference_leaky_re_lu_13_layer_call_fn_13022988?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_13022993?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ض2س
,__inference_conv2d_20_layer_call_fn_13023002?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_20_layer_call_and_return_conditional_losses_13023012?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2ظ
1__inference_leaky_re_lu_14_layer_call_fn_13023017?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_13023022?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ض2س
,__inference_conv2d_21_layer_call_fn_13023031?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_21_layer_call_and_return_conditional_losses_13023041?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2ظ
1__inference_leaky_re_lu_15_layer_call_fn_13023046?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_13023051?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
2
2__inference_up_sampling2d_4_layer_call_fn_13020930ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
?2?
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_13020924ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
ض2س
,__inference_conv2d_22_layer_call_fn_13023060?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_22_layer_call_and_return_conditional_losses_13023071?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
2
,__inference_dropout_3_layer_call_fn_13023076
,__inference_dropout_3_layer_call_fn_13023081?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
ج2ة
G__inference_dropout_3_layer_call_and_return_conditional_losses_13023086
G__inference_dropout_3_layer_call_and_return_conditional_losses_13023098?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
غ2ط
0__inference_concatenate_3_layer_call_fn_13023104?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2ْ
K__inference_concatenate_3_layer_call_and_return_conditional_losses_13023111?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
2
2__inference_up_sampling2d_5_layer_call_fn_13020949ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
?2?
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_13020943ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
ض2س
,__inference_conv2d_23_layer_call_fn_13023120?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_23_layer_call_and_return_conditional_losses_13023131?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
2
,__inference_dropout_4_layer_call_fn_13023136
,__inference_dropout_4_layer_call_fn_13023141?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
ج2ة
G__inference_dropout_4_layer_call_and_return_conditional_losses_13023146
G__inference_dropout_4_layer_call_and_return_conditional_losses_13023158?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
غ2ط
0__inference_concatenate_4_layer_call_fn_13023164?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2ْ
K__inference_concatenate_4_layer_call_and_return_conditional_losses_13023171?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
2
2__inference_up_sampling2d_6_layer_call_fn_13020968ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
?2?
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_13020962ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
ض2س
,__inference_conv2d_24_layer_call_fn_13023180?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_24_layer_call_and_return_conditional_losses_13023191?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
2
,__inference_dropout_5_layer_call_fn_13023196
,__inference_dropout_5_layer_call_fn_13023201?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
ج2ة
G__inference_dropout_5_layer_call_and_return_conditional_losses_13023206
G__inference_dropout_5_layer_call_and_return_conditional_losses_13023218?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
غ2ط
0__inference_concatenate_5_layer_call_fn_13023224?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?2ْ
K__inference_concatenate_5_layer_call_and_return_conditional_losses_13023231?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
2
2__inference_up_sampling2d_7_layer_call_fn_13020987ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
?2?
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_13020981ـ
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *@?=
;84????????????????????????????????????
ض2س
,__inference_conv2d_25_layer_call_fn_13023240?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
ّ2َ
G__inference_conv2d_25_layer_call_and_return_conditional_losses_13023251?
?
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
حBت
&__inference_signature_wrapper_13022376input_4"
?
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
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

Const_13ف
#__inference__wrapped_model_13020911?:xy??ـف??قك??لمظعنه??وىيً??:?7
0?-
+(
input_4?????????
? "??<
:
	conv2d_25-*
	conv2d_25?????????
K__inference_concatenate_3_layer_call_and_return_conditional_losses_13023111?~?{
t?q
ol
=:
inputs/0,???????????????????????????
+(
inputs/1?????????  
? ".?+
$!
0?????????  
 ظ
0__inference_concatenate_3_layer_call_fn_13023104?~?{
t?q
ol
=:
inputs/0,???????????????????????????
+(
inputs/1?????????  
? "!?????????  ?
K__inference_concatenate_4_layer_call_and_return_conditional_losses_13023171?|?y
r?o
mj
<9
inputs/0+???????????????????????????@
*'
inputs/1?????????@@@
? ".?+
$!
0?????????@@
 ض
0__inference_concatenate_4_layer_call_fn_13023164?|?y
r?o
mj
<9
inputs/0+???????????????????????????@
*'
inputs/1?????????@@@
? "!?????????@@
K__inference_concatenate_5_layer_call_and_return_conditional_losses_13023231?~?{
t?q
ol
<9
inputs/0+??????????????????????????? 
,)
inputs/1????????? 
? "/?,
%"
0?????????@
 ع
0__inference_concatenate_5_layer_call_fn_13023224¤~?{
t?q
ol
<9
inputs/0+??????????????????????????? 
,)
inputs/1????????? 
? ""?????????@؛
G__inference_conv2d_18_layer_call_and_return_conditional_losses_13022954pxy9?6
/?,
*'
inputs?????????
? "/?,
%"
0????????? 
 
,__inference_conv2d_18_layer_call_fn_13022944cxy9?6
/?,
*'
inputs?????????
? ""????????? ؛
G__inference_conv2d_19_layer_call_and_return_conditional_losses_13022983p9?6
/?,
*'
inputs????????? 
? "-?*
# 
0?????????@@@
 
,__inference_conv2d_19_layer_call_fn_13022973c9?6
/?,
*'
inputs????????? 
? " ?????????@@@?
G__inference_conv2d_20_layer_call_and_return_conditional_losses_13023012o??7?4
-?*
(%
inputs?????????@@@
? ".?+
$!
0?????????  
 
,__inference_conv2d_20_layer_call_fn_13023002b??7?4
-?*
(%
inputs?????????@@@
? "!?????????  ؛
G__inference_conv2d_21_layer_call_and_return_conditional_losses_13023041p??8?5
.?+
)&
inputs?????????  
? ".?+
$!
0?????????
 
,__inference_conv2d_21_layer_call_fn_13023031c??8?5
.?+
)&
inputs?????????  
? "!?????????ـ
G__inference_conv2d_22_layer_call_and_return_conditional_losses_13023071ظعJ?G
@?=
;8
inputs,???????????????????????????
? "@?=
63
0,???????????????????????????
 ?
,__inference_conv2d_22_layer_call_fn_13023060ظعJ?G
@?=
;8
inputs,???????????????????????????
? "30,????????????????????????????
G__inference_conv2d_23_layer_call_and_return_conditional_losses_13023131??J?G
@?=
;8
inputs,???????????????????????????
? "??<
52
0+???????????????????????????@
 ?
,__inference_conv2d_23_layer_call_fn_13023120??J?G
@?=
;8
inputs,???????????????????????????
? "2/+???????????????????????????@?
G__inference_conv2d_24_layer_call_and_return_conditional_losses_13023191J?G
@?=
;8
inputs,???????????????????????????
? "??<
52
0+??????????????????????????? 
 ?
,__inference_conv2d_24_layer_call_fn_13023180J?G
@?=
;8
inputs,???????????????????????????
? "2/+??????????????????????????? ?
G__inference_conv2d_25_layer_call_and_return_conditional_losses_13023251??I?F
??<
:7
inputs+???????????????????????????@
? "??<
52
0+???????????????????????????
 ?
,__inference_conv2d_25_layer_call_fn_13023240??I?F
??<
:7
inputs+???????????????????????????@
? "2/+????????????????????????????
G__inference_dropout_3_layer_call_and_return_conditional_losses_13023086N?K
D?A
;8
inputs,???????????????????????????
p 
? "@?=
63
0,???????????????????????????
 ?
G__inference_dropout_3_layer_call_and_return_conditional_losses_13023098N?K
D?A
;8
inputs,???????????????????????????
p
? "@?=
63
0,???????????????????????????
 ?
,__inference_dropout_3_layer_call_fn_13023076N?K
D?A
;8
inputs,???????????????????????????
p 
? "30,????????????????????????????
,__inference_dropout_3_layer_call_fn_13023081N?K
D?A
;8
inputs,???????????????????????????
p
? "30,????????????????????????????
G__inference_dropout_4_layer_call_and_return_conditional_losses_13023146M?J
C?@
:7
inputs+???????????????????????????@
p 
? "??<
52
0+???????????????????????????@
 ?
G__inference_dropout_4_layer_call_and_return_conditional_losses_13023158M?J
C?@
:7
inputs+???????????????????????????@
p
? "??<
52
0+???????????????????????????@
 ?
,__inference_dropout_4_layer_call_fn_13023136M?J
C?@
:7
inputs+???????????????????????????@
p 
? "2/+???????????????????????????@?
,__inference_dropout_4_layer_call_fn_13023141M?J
C?@
:7
inputs+???????????????????????????@
p
? "2/+???????????????????????????@?
G__inference_dropout_5_layer_call_and_return_conditional_losses_13023206M?J
C?@
:7
inputs+??????????????????????????? 
p 
? "??<
52
0+??????????????????????????? 
 ?
G__inference_dropout_5_layer_call_and_return_conditional_losses_13023218M?J
C?@
:7
inputs+??????????????????????????? 
p
? "??<
52
0+??????????????????????????? 
 ?
,__inference_dropout_5_layer_call_fn_13023196M?J
C?@
:7
inputs+??????????????????????????? 
p 
? "2/+??????????????????????????? ?
,__inference_dropout_5_layer_call_fn_13023201M?J
C?@
:7
inputs+??????????????????????????? 
p
? "2/+??????????????????????????? ?
L__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_13022964l9?6
/?,
*'
inputs????????? 
? "/?,
%"
0????????? 
 
1__inference_leaky_re_lu_12_layer_call_fn_13022959_9?6
/?,
*'
inputs????????? 
? ""????????? ?
L__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_13022993h7?4
-?*
(%
inputs?????????@@@
? "-?*
# 
0?????????@@@
 
1__inference_leaky_re_lu_13_layer_call_fn_13022988[7?4
-?*
(%
inputs?????????@@@
? " ?????????@@@?
L__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_13023022j8?5
.?+
)&
inputs?????????  
? ".?+
$!
0?????????  
 
1__inference_leaky_re_lu_14_layer_call_fn_13023017]8?5
.?+
)&
inputs?????????  
? "!?????????  ?
L__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_13023051j8?5
.?+
)&
inputs?????????
? ".?+
$!
0?????????
 
1__inference_leaky_re_lu_15_layer_call_fn_13023046]8?5
.?+
)&
inputs?????????
? "!?????????
E__inference_model_3_layer_call_and_return_conditional_losses_13022132ء:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_4?????????
p 

 
? "??<
52
0+???????????????????????????
 
E__inference_model_3_layer_call_and_return_conditional_losses_13022309ء:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_4?????????
p

 
? "??<
52
0+???????????????????????????
 ?
E__inference_model_3_layer_call_and_return_conditional_losses_13022710?:xy??ـف??قك??لمظعنه??وىيً??A?>
7?4
*'
inputs?????????
p 

 
? "/?,
%"
0?????????
 ?
E__inference_model_3_layer_call_and_return_conditional_losses_13022935?:xy??ـف??قك??لمظعنه??وىيً??A?>
7?4
*'
inputs?????????
p

 
? "/?,
%"
0?????????
 ك
*__inference_model_3_layer_call_fn_13021389?:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_4?????????
p 

 
? "2/+???????????????????????????ك
*__inference_model_3_layer_call_fn_13021955?:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_4?????????
p

 
? "2/+???????????????????????????ق
*__inference_model_3_layer_call_fn_13022441?:xy??ـف??قك??لمظعنه??وىيً??A?>
7?4
*'
inputs?????????
p 

 
? "2/+???????????????????????????ق
*__inference_model_3_layer_call_fn_13022506?:xy??ـف??قك??لمظعنه??وىيً??A?>
7?4
*'
inputs?????????
p

 
? "2/+???????????????????????????ُ
&__inference_signature_wrapper_13022376ؤ:xy??ـف??قك??لمظعنه??وىيً??E?B
? 
;?8
6
input_4+(
input_4?????????"??<
:
	conv2d_25-*
	conv2d_25?????????ِ
M__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_13020924R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ب
2__inference_up_sampling2d_4_layer_call_fn_13020930R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ِ
M__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_13020943R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ب
2__inference_up_sampling2d_5_layer_call_fn_13020949R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ِ
M__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_13020962R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ب
2__inference_up_sampling2d_6_layer_call_fn_13020968R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ِ
M__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_13020981R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ب
2__inference_up_sampling2d_7_layer_call_fn_13020987R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????