#
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
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718?؟

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

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

conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_12/kernel
~
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*'
_output_shapes
:@*
dtype0
u
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_12/bias
n
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes	
:*
dtype0

conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_13/kernel

$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*(
_output_shapes
:*
dtype0
u
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_13/bias
n
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes	
:*
dtype0

conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_14/kernel

$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*(
_output_shapes
:*
dtype0
u
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_14/bias
n
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes	
:*
dtype0

conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_15/kernel
~
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*'
_output_shapes
:@*
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

conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_16/kernel
~
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*'
_output_shapes
: *
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

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
	variables
trainable_variables
regularization_losses
	keras_api
V
	variables
trainable_variables
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
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
،	variables
­trainable_variables
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
؟	variables
?trainable_variables
ءregularization_losses
آ	keras_api
V
أ	variables
ؤtrainable_variables
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
ش	variables
صtrainable_variables
ضregularization_losses
ط	keras_api
n
ظkernel
	عbias
غ	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
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
ُ	variables
ِtrainable_variables
ّregularization_losses
ْ	keras_api
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
	variables
trainable_variables
regularization_losses
	keras_api
V
	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
V
	variables
trainable_variables
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
­	variables
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
?layer_metrics
?layers
?metrics
s	variables
؟non_trainable_variables
ttrainable_variables
uregularization_losses
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
ءlayer_metrics
آlayers
أmetrics
z	variables
ؤnon_trainable_variables
{trainable_variables
|regularization_losses
 
 
 
?
 إlayer_regularization_losses
ئlayer_metrics
اlayers
بmetrics
~	variables
ةnon_trainable_variables
trainable_variables
regularization_losses
 
 
 
 
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
0
1

0
1
 
?
 تlayer_regularization_losses
ثlayer_metrics
جlayers
حmetrics
	variables
خnon_trainable_variables
trainable_variables
regularization_losses
 
 
 
?
 دlayer_regularization_losses
ذlayer_metrics
رlayers
زmetrics
	variables
سnon_trainable_variables
trainable_variables
regularization_losses
 
 
 
 
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
 شlayer_regularization_losses
صlayer_metrics
ضlayers
طmetrics
?	variables
ظnon_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 عlayer_regularization_losses
غlayer_metrics
?layers
?metrics
،	variables
?non_trainable_variables
­trainable_variables
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
?layer_metrics
ـlayers
فmetrics
؟	variables
قnon_trainable_variables
?trainable_variables
ءregularization_losses
 
 
 
?
 كlayer_regularization_losses
لlayer_metrics
مlayers
نmetrics
أ	variables
هnon_trainable_variables
ؤtrainable_variables
إregularization_losses
 
 
 
 
 
 
 
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
ىlayer_metrics
يlayers
ًmetrics
ش	variables
ٌnon_trainable_variables
صtrainable_variables
ضregularization_losses
\Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

ظ0
ع1

ظ0
ع1
 
?
 ٍlayer_regularization_losses
َlayer_metrics
ُlayers
ِmetrics
غ	variables
ّnon_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ْlayer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
ـregularization_losses
 
 
 
 
 
 
 
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
ُ	variables
?non_trainable_variables
ِtrainable_variables
ّregularization_losses
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
non_trainable_variables
?trainable_variables
?regularization_losses
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
 layer_regularization_losses
layer_metrics
layers
metrics
?	variables
non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 layer_regularization_losses
layer_metrics
layers
metrics
?	variables
non_trainable_variables
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
 layer_regularization_losses
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
 
 
 
?
 layer_regularization_losses
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
 layer_regularization_losses
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
 
 
 
?
 layer_regularization_losses
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
 
 
 
 
 
 
 
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
 layer_metrics
?layers
?metrics
­	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
 
 
 
?
 ¤layer_regularization_losses
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
،metrics
?	variables
­non_trainable_variables
?trainable_variables
?regularization_losses
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
 

serving_default_input_3Placeholder*1
_output_shapes
:?????????*
dtype0*&
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_10/kernelconv2d_10/biasConstConst_1conv2d_11/kernelconv2d_11/biasConst_2Const_3conv2d_12/kernelconv2d_12/biasConst_4Const_5conv2d_13/kernelconv2d_13/biasConst_6Const_7conv2d_14/kernelconv2d_14/biasConst_8Const_9conv2d_15/kernelconv2d_15/biasConst_10Const_11conv2d_16/kernelconv2d_16/biasConst_12Const_13conv2d_17/kernelconv2d_17/bias**
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
GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_8734409
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_8735369
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_8735427?
?
؟
)__inference_model_2_layer_call_fn_8734474

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
identity?StatefulPartitionedCall
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
GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_87333592
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


F__inference_conv2d_15_layer_call_and_return_conditional_losses_8733250

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
?


F__inference_conv2d_13_layer_call_and_return_conditional_losses_8733157

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
?
?

D__inference_model_2_layer_call_and_return_conditional_losses_8733359

inputs+
conv2d_10_8733038: 
conv2d_10_8733040: 
tf_math_multiply_18_mul_y
unknown+
conv2d_11_8733078: @
conv2d_11_8733080:@
tf_math_multiply_21_mul_y
	unknown_0,
conv2d_12_8733118:@ 
conv2d_12_8733120:	
tf_math_multiply_24_mul_y
	unknown_1-
conv2d_13_8733158: 
conv2d_13_8733160:	
tf_math_multiply_27_mul_y
	unknown_2-
conv2d_14_8733200: 
conv2d_14_8733202:	
tf_math_multiply_30_mul_y
	unknown_3,
conv2d_15_8733251:@
conv2d_15_8733253:@
tf_math_multiply_33_mul_y
	unknown_4,
conv2d_16_8733302: 
conv2d_16_8733304: 
tf_math_multiply_36_mul_y
	unknown_5+
conv2d_17_8733353:@
conv2d_17_8733355:
identity?!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_8733038conv2d_10_8733040*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_87330372#
!conv2d_10/StatefulPartitionedCall
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_87330482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indicesٍ
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
tf.stop_gradient_6/StopGradient
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:????????? 20
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
 *o:2
tf.__operators__.add_12/yث
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2
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
tf.math.multiply_20/Mul
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_13/AddV2آ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_8733078conv2d_11_8733080*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_87330772#
!conv2d_11/StatefulPartitionedCall
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_87330882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indicesٍ
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
tf.stop_gradient_7/StopGradient
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
 *o:2
tf.__operators__.add_14/yث
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2
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
tf.math.multiply_23/Mul
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
tf.__operators__.add_15/AddV2أ
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_8733118conv2d_12_8733120*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_87331172#
!conv2d_12/StatefulPartitionedCall
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_87331282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indicesُ
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_8/StopGradient
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_16/yج
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_16/AddV2
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_26/Mul
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_25/Mul؛
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_17/AddV2أ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_8733158conv2d_13_8733160*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_87331572#
!conv2d_13/StatefulPartitionedCall
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_87331682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indicesُ
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_9/StopGradient
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:?????????20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_18/yج
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_18/AddV2
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_29/Mul
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_28/Mul؛
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_19/AddV2
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
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
GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_87329572
up_sampling2d/PartitionedCallغ
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_8733200conv2d_14_8733202*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_87331992#
!conv2d_14/StatefulPartitionedCall
dropout/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_87332102
dropout/PartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indicesو
tf.math.reduce_mean_20/MeanMean dropout/PartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_10/StopGradient
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference dropout/PartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_20/yج
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_20/AddV2
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_32/Mul
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_10/Subإ
tf.math.multiply_31/MulMul dropout/PartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_31/Mulخ
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_87332362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_87329762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_8733251conv2d_15_8733253*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_87332502#
!conv2d_15/StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_87332612
dropout_1/PartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indicesى
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
 tf.stop_gradient_11/StopGradient
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
 *o:2
tf.__operators__.add_22/yث
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2
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
tf.math.multiply_35/Mul
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Subئ
tf.math.multiply_34/MulMul"dropout_1/PartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_87332872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_87329952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_8733302conv2d_16_8733304*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_87333012#
!conv2d_16/StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_87333122
dropout_2/PartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indicesى
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
 tf.stop_gradient_12/StopGradient
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
 *o:2
tf.__operators__.add_24/yث
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2
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
tf.math.multiply_38/Mul
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Subئ
tf.math.multiply_37/MulMul"dropout_2/PartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_87333382
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_87330142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_8733353conv2d_17_8733355*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_87333522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
ظ
K
/__inference_up_sampling2d_layer_call_fn_8732963

inputs
identityَ
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
GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_87329572
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
،
[
/__inference_concatenate_2_layer_call_fn_8735257
inputs_0
inputs_1
identityق
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
GPU2*0J 8 *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_87333382
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
?
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_8732957

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
?
t
J__inference_concatenate_2_layer_call_and_return_conditional_losses_8733338

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
?
?
D__inference_model_2_layer_call_and_return_conditional_losses_8734342
input_3+
conv2d_10_8734168: 
conv2d_10_8734170: 
tf_math_multiply_18_mul_y
unknown+
conv2d_11_8734191: @
conv2d_11_8734193:@
tf_math_multiply_21_mul_y
	unknown_0,
conv2d_12_8734214:@ 
conv2d_12_8734216:	
tf_math_multiply_24_mul_y
	unknown_1-
conv2d_13_8734237: 
conv2d_13_8734239:	
tf_math_multiply_27_mul_y
	unknown_2-
conv2d_14_8734261: 
conv2d_14_8734263:	
tf_math_multiply_30_mul_y
	unknown_3,
conv2d_15_8734286:@
conv2d_15_8734288:@
tf_math_multiply_33_mul_y
	unknown_4,
conv2d_16_8734311: 
conv2d_16_8734313: 
tf_math_multiply_36_mul_y
	unknown_5+
conv2d_17_8734336:@
conv2d_17_8734338:
identity?!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_10_8734168conv2d_10_8734170*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_87330372#
!conv2d_10/StatefulPartitionedCall
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_87330482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indicesٍ
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
tf.stop_gradient_6/StopGradient
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:????????? 20
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
 *o:2
tf.__operators__.add_12/yث
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2
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
tf.math.multiply_20/Mul
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_13/AddV2آ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_8734191conv2d_11_8734193*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_87330772#
!conv2d_11/StatefulPartitionedCall
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_87330882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indicesٍ
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
tf.stop_gradient_7/StopGradient
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
 *o:2
tf.__operators__.add_14/yث
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2
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
tf.math.multiply_23/Mul
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
tf.__operators__.add_15/AddV2أ
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_8734214conv2d_12_8734216*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_87331172#
!conv2d_12/StatefulPartitionedCall
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_87331282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indicesُ
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_8/StopGradient
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_16/yج
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_16/AddV2
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_26/Mul
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_25/Mul؛
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_17/AddV2أ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_8734237conv2d_13_8734239*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_87331572#
!conv2d_13/StatefulPartitionedCall
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_87331682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indicesُ
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_9/StopGradient
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:?????????20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_18/yج
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_18/AddV2
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_29/Mul
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_28/Mul؛
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_19/AddV2
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
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
GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_87329572
up_sampling2d/PartitionedCallغ
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_8734261conv2d_14_8734263*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_87331992#
!conv2d_14/StatefulPartitionedCall،
dropout/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_87335392!
dropout/StatefulPartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indicesِ
tf.math.reduce_mean_20/MeanMean(dropout/StatefulPartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_10/StopGradient
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference(dropout/StatefulPartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_20/yج
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_20/AddV2
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_32/Mul
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_10/Subح
tf.math.multiply_31/MulMul(dropout/StatefulPartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_31/Mulخ
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_87332362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_87329762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_8734286conv2d_15_8734288*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_87332502#
!conv2d_15/StatefulPartitionedCallس
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_87334992#
!dropout_1/StatefulPartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indicesّ
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
 tf.stop_gradient_11/StopGradient
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
 *o:2
tf.__operators__.add_22/yث
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2
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
tf.math.multiply_35/Mul
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Subخ
tf.math.multiply_34/MulMul*dropout_1/StatefulPartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_87332872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_87329952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_8734311conv2d_16_8734313*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_87333012#
!conv2d_16/StatefulPartitionedCallص
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_87334592#
!dropout_2/StatefulPartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indicesّ
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
 tf.stop_gradient_12/StopGradient
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
 *o:2
tf.__operators__.add_24/yث
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2
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
tf.math.multiply_38/Mul
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Subخ
tf.math.multiply_37/MulMul*dropout_2/StatefulPartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_87333382
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_87330142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_8734336conv2d_17_8734338*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_87333522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
:?????????
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
ء
t
H__inference_concatenate_layer_call_and_return_conditional_losses_8735144
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
?
M
1__inference_up_sampling2d_2_layer_call_fn_8733001

inputs
identityِ
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_87329952
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

?
+__inference_conv2d_16_layer_call_fn_8735213

inputs"
unknown: 
	unknown_0: 
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_87333012
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
?
?
D__inference_model_2_layer_call_and_return_conditional_losses_8733860

inputs+
conv2d_10_8733686: 
conv2d_10_8733688: 
tf_math_multiply_18_mul_y
unknown+
conv2d_11_8733709: @
conv2d_11_8733711:@
tf_math_multiply_21_mul_y
	unknown_0,
conv2d_12_8733732:@ 
conv2d_12_8733734:	
tf_math_multiply_24_mul_y
	unknown_1-
conv2d_13_8733755: 
conv2d_13_8733757:	
tf_math_multiply_27_mul_y
	unknown_2-
conv2d_14_8733779: 
conv2d_14_8733781:	
tf_math_multiply_30_mul_y
	unknown_3,
conv2d_15_8733804:@
conv2d_15_8733806:@
tf_math_multiply_33_mul_y
	unknown_4,
conv2d_16_8733829: 
conv2d_16_8733831: 
tf_math_multiply_36_mul_y
	unknown_5+
conv2d_17_8733854:@
conv2d_17_8733856:
identity?!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_8733686conv2d_10_8733688*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_87330372#
!conv2d_10/StatefulPartitionedCall
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_87330482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indicesٍ
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
tf.stop_gradient_6/StopGradient
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:????????? 20
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
 *o:2
tf.__operators__.add_12/yث
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2
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
tf.math.multiply_20/Mul
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_13/AddV2آ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_8733709conv2d_11_8733711*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_87330772#
!conv2d_11/StatefulPartitionedCall
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_87330882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indicesٍ
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
tf.stop_gradient_7/StopGradient
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
 *o:2
tf.__operators__.add_14/yث
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2
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
tf.math.multiply_23/Mul
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
tf.__operators__.add_15/AddV2أ
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_8733732conv2d_12_8733734*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_87331172#
!conv2d_12/StatefulPartitionedCall
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_87331282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indicesُ
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_8/StopGradient
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_16/yج
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_16/AddV2
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_26/Mul
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_25/Mul؛
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_17/AddV2أ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_8733755conv2d_13_8733757*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_87331572#
!conv2d_13/StatefulPartitionedCall
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_87331682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indicesُ
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_9/StopGradient
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:?????????20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_18/yج
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_18/AddV2
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_29/Mul
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_28/Mul؛
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_19/AddV2
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
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
GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_87329572
up_sampling2d/PartitionedCallغ
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_8733779conv2d_14_8733781*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_87331992#
!conv2d_14/StatefulPartitionedCall،
dropout/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_87335392!
dropout/StatefulPartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indicesِ
tf.math.reduce_mean_20/MeanMean(dropout/StatefulPartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_10/StopGradient
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference(dropout/StatefulPartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_20/yج
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_20/AddV2
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_32/Mul
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_10/Subح
tf.math.multiply_31/MulMul(dropout/StatefulPartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_31/Mulخ
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_87332362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_87329762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_8733804conv2d_15_8733806*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_87332502#
!conv2d_15/StatefulPartitionedCallس
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_87334992#
!dropout_1/StatefulPartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indicesّ
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
 tf.stop_gradient_11/StopGradient
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
 *o:2
tf.__operators__.add_22/yث
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2
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
tf.math.multiply_35/Mul
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Subخ
tf.math.multiply_34/MulMul*dropout_1/StatefulPartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_87332872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_87329952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_8733829conv2d_16_8733831*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_87333012#
!conv2d_16/StatefulPartitionedCallص
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_87334592#
!dropout_2/StatefulPartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indicesّ
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
 tf.stop_gradient_12/StopGradient
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
 *o:2
tf.__operators__.add_24/yث
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2
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
tf.math.multiply_38/Mul
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Subخ
tf.math.multiply_37/MulMul*dropout_2/StatefulPartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_87333382
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_87330142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_8733854conv2d_17_8733856*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_87333522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
،
E
)__inference_dropout_layer_call_fn_8735109

inputs
identityـ
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
GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_87332102
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


F__inference_conv2d_16_layer_call_and_return_conditional_losses_8735224

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
ا­
?
D__inference_model_2_layer_call_and_return_conditional_losses_8734968

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
tf_math_multiply_18_mul_y
unknownB
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
tf_math_multiply_21_mul_y
	unknown_0C
(conv2d_12_conv2d_readvariableop_resource:@8
)conv2d_12_biasadd_readvariableop_resource:	
tf_math_multiply_24_mul_y
	unknown_1D
(conv2d_13_conv2d_readvariableop_resource:8
)conv2d_13_biasadd_readvariableop_resource:	
tf_math_multiply_27_mul_y
	unknown_2D
(conv2d_14_conv2d_readvariableop_resource:8
)conv2d_14_biasadd_readvariableop_resource:	
tf_math_multiply_30_mul_y
	unknown_3C
(conv2d_15_conv2d_readvariableop_resource:@7
)conv2d_15_biasadd_readvariableop_resource:@
tf_math_multiply_33_mul_y
	unknown_4C
(conv2d_16_conv2d_readvariableop_resource: 7
)conv2d_16_biasadd_readvariableop_resource: 
tf_math_multiply_36_mul_y
	unknown_5B
(conv2d_17_conv2d_readvariableop_resource:@7
)conv2d_17_biasadd_readvariableop_resource:
identity? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpأ
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_10/BiasAdd
leaky_re_lu_8/LeakyRelu	LeakyReluconv2d_10/BiasAdd:output:0*1
_output_shapes
:????????? 2
leaky_re_lu_8/LeakyRelu?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indicesٌ
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
tf.stop_gradient_6/StopGradient
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference%leaky_re_lu_8/LeakyRelu:activations:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:????????? 20
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
 *o:2
tf.__operators__.add_12/yث
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2
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
tf.math.multiply_20/Mul
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul%leaky_re_lu_8/LeakyRelu:activations:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:????????? 2
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
conv2d_11/BiasAdd
leaky_re_lu_9/LeakyRelu	LeakyReluconv2d_11/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_9/LeakyRelu?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indicesٌ
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
tf.stop_gradient_7/StopGradient
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
 *o:2
tf.__operators__.add_14/yث
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2
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
tf.math.multiply_23/Mul
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
:@*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2D!tf.__operators__.add_15/AddV2:z:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_12/BiasAdd
leaky_re_lu_10/LeakyRelu	LeakyReluconv2d_12/BiasAdd:output:0*0
_output_shapes
:?????????  2
leaky_re_lu_10/LeakyRelu?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indicesَ
tf.math.reduce_mean_16/MeanMean&leaky_re_lu_10/LeakyRelu:activations:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_8/StopGradient
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference&leaky_re_lu_10/LeakyRelu:activations:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_16/yج
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_16/AddV2
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_26/Mul
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul&leaky_re_lu_10/LeakyRelu:activations:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_25/Mul؛
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_17/AddV2?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2D!tf.__operators__.add_17/AddV2:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
conv2d_13/BiasAdd
leaky_re_lu_11/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:?????????2
leaky_re_lu_11/LeakyRelu?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indicesَ
tf.math.reduce_mean_18/MeanMean&leaky_re_lu_11/LeakyRelu:activations:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_9/StopGradient
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference&leaky_re_lu_11/LeakyRelu:activations:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:?????????20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_18/yج
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_18/AddV2
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_29/Mul
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul&leaky_re_lu_11/LeakyRelu:activations:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_28/Mul؛
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:?????????2
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
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_19/AddV2:z:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  2
conv2d_14/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/dropout/Const?
dropout/dropout/MulMulconv2d_14/Relu:activations:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:?????????  2
dropout/dropout/Mulz
dropout/dropout/ShapeShapeconv2d_14/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeص
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????  *
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2 
dropout/dropout/GreaterEqual/yه
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????  2
dropout/dropout/GreaterEqual 
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????  2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????  2
dropout/dropout/Mul_1?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indicesف
tf.math.reduce_mean_20/MeanMeandropout/dropout/Mul_1:z:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifferencedropout/dropout/Mul_1:z:0)tf.stop_gradient_10/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_20/yج
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_20/AddV2
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_32/Mul
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_10/Sub،
tf.math.multiply_31/MulMuldropout/dropout/Mul_1:z:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_21/AddV2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisـ
concatenate/concatConcatV2!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
concatenate/concat
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:@*
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
 *   ?2
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
dropout_1/dropout/Shapeغ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2"
 dropout_1/dropout/GreaterEqual/yَ
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
-tf.math.reduce_mean_22/Mean/reduction_indicesق
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
 *o:2
tf.__operators__.add_22/yث
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2
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
tf.math.multiply_35/Mul
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub­
tf.math.multiply_34/MulMuldropout_1/dropout/Mul_1:z:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_34/Mul؛
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
concatenate_1/concat/axisن
concatenate_1/concatConcatV2!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
concatenate_1/concat
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_2/Const
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:?????????*
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2D=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_16/BiasAdd
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:????????? 2
conv2d_16/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/dropout/Const?
dropout_2/dropout/MulMulconv2d_16/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*1
_output_shapes
:????????? 2
dropout_2/dropout/Mul~
dropout_2/dropout/ShapeShapeconv2d_16/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*1
_output_shapes
:????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *حجL>2"
 dropout_2/dropout/GreaterEqual/yِ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:????????? 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:????????? 2
dropout_2/dropout/Cast،
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*1
_output_shapes
:????????? 2
dropout_2/dropout/Mul_1?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indicesق
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
:????????? 21
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
 *o:2
tf.__operators__.add_24/yث
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2
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
tf.math.multiply_38/Mul
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMuldropout_2/dropout/Mul_1:z:0tf.math.multiply_36/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_25/AddV2x
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisه
concatenate_2/concatConcatV2!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0"concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
concatenate_2/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:?????????@*
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
:?????????*
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
:?????????2
conv2d_17/BiasAdd
conv2d_17/TanhTanhconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:?????????2
conv2d_17/Tanh
IdentityIdentityconv2d_17/Tanh:y:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2D
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

f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8735026

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
b
D__inference_dropout_layer_call_and_return_conditional_losses_8733210

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
ر
?
+__inference_conv2d_13_layer_call_fn_8735064

inputs#
unknown:
	unknown_0:	
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_87331572
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
?
d
+__inference_dropout_2_layer_call_fn_8735234

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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_87334592
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
ز
 
+__inference_conv2d_10_layer_call_fn_8734977

inputs!
unknown: 
	unknown_0: 
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_87330372
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
?
M
1__inference_up_sampling2d_1_layer_call_fn_8732982

inputs
identityِ
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_87329762
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
ّ
L
0__inference_leaky_re_lu_11_layer_call_fn_8735079

inputs
identityص
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_87331682
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
?
?
)__inference_model_2_layer_call_fn_8733988
input_3!
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
GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_87338602
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

?
D__inference_model_2_layer_call_and_return_conditional_losses_8734743

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: 
tf_math_multiply_18_mul_y
unknownB
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@
tf_math_multiply_21_mul_y
	unknown_0C
(conv2d_12_conv2d_readvariableop_resource:@8
)conv2d_12_biasadd_readvariableop_resource:	
tf_math_multiply_24_mul_y
	unknown_1D
(conv2d_13_conv2d_readvariableop_resource:8
)conv2d_13_biasadd_readvariableop_resource:	
tf_math_multiply_27_mul_y
	unknown_2D
(conv2d_14_conv2d_readvariableop_resource:8
)conv2d_14_biasadd_readvariableop_resource:	
tf_math_multiply_30_mul_y
	unknown_3C
(conv2d_15_conv2d_readvariableop_resource:@7
)conv2d_15_biasadd_readvariableop_resource:@
tf_math_multiply_33_mul_y
	unknown_4C
(conv2d_16_conv2d_readvariableop_resource: 7
)conv2d_16_biasadd_readvariableop_resource: 
tf_math_multiply_36_mul_y
	unknown_5B
(conv2d_17_conv2d_readvariableop_resource:@7
)conv2d_17_biasadd_readvariableop_resource:
identity? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpأ
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_10/BiasAdd
leaky_re_lu_8/LeakyRelu	LeakyReluconv2d_10/BiasAdd:output:0*1
_output_shapes
:????????? 2
leaky_re_lu_8/LeakyRelu?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indicesٌ
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
tf.stop_gradient_6/StopGradient
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference%leaky_re_lu_8/LeakyRelu:activations:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:????????? 20
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
 *o:2
tf.__operators__.add_12/yث
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2
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
tf.math.multiply_20/Mul
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul%leaky_re_lu_8/LeakyRelu:activations:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:????????? 2
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
conv2d_11/BiasAdd
leaky_re_lu_9/LeakyRelu	LeakyReluconv2d_11/BiasAdd:output:0*/
_output_shapes
:?????????@@@2
leaky_re_lu_9/LeakyRelu?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indicesٌ
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
tf.stop_gradient_7/StopGradient
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
 *o:2
tf.__operators__.add_14/yث
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2
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
tf.math.multiply_23/Mul
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
:@*
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2D!tf.__operators__.add_15/AddV2:z:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_12/BiasAdd
leaky_re_lu_10/LeakyRelu	LeakyReluconv2d_12/BiasAdd:output:0*0
_output_shapes
:?????????  2
leaky_re_lu_10/LeakyRelu?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indicesَ
tf.math.reduce_mean_16/MeanMean&leaky_re_lu_10/LeakyRelu:activations:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_8/StopGradient
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference&leaky_re_lu_10/LeakyRelu:activations:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_16/yج
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_16/AddV2
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_26/Mul
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul&leaky_re_lu_10/LeakyRelu:activations:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_25/Mul؛
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_17/AddV2?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2D!tf.__operators__.add_17/AddV2:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
conv2d_13/BiasAdd
leaky_re_lu_11/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:?????????2
leaky_re_lu_11/LeakyRelu?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indicesَ
tf.math.reduce_mean_18/MeanMean&leaky_re_lu_11/LeakyRelu:activations:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_9/StopGradient
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference&leaky_re_lu_11/LeakyRelu:activations:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:?????????20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_18/yج
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_18/AddV2
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_29/Mul
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul&leaky_re_lu_11/LeakyRelu:activations:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_28/Mul؛
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:?????????2
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
up_sampling2d/Const_1
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor!tf.__operators__.add_19/AddV2:z:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  2
conv2d_14/Relu
dropout/IdentityIdentityconv2d_14/Relu:activations:0*
T0*0
_output_shapes
:?????????  2
dropout/Identity?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indicesف
tf.math.reduce_mean_20/MeanMeandropout/Identity:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_10/StopGradient?
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifferencedropout/Identity:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*0
_output_shapes
:?????????  21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_20/yج
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_20/AddV2
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_32/Mul
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_10/Sub،
tf.math.multiply_31/MulMuldropout/Identity:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_31/Mul?
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_21/AddV2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisـ
concatenate/concatConcatV2!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
concatenate/concat
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_1/Const
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:@*
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
conv2d_15/Relu
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
-tf.math.reduce_mean_22/Mean/reduction_indicesق
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
 *o:2
tf.__operators__.add_22/yث
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2
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
tf.math.multiply_35/Mul
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Sub­
tf.math.multiply_34/MulMuldropout_1/Identity:output:0tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2
tf.math.multiply_34/Mul؛
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
concatenate_1/concat/axisن
concatenate_1/concatConcatV2!tf.__operators__.add_23/AddV2:z:0!tf.__operators__.add_15/AddV2:z:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
concatenate_1/concat
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
up_sampling2d_2/Const
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const_1
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:?????????*
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2D=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
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
:????????? 2
conv2d_16/BiasAdd
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:????????? 2
conv2d_16/Relu
dropout_2/IdentityIdentityconv2d_16/Relu:activations:0*
T0*1
_output_shapes
:????????? 2
dropout_2/Identity?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indicesق
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
:????????? 21
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
 *o:2
tf.__operators__.add_24/yث
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2
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
tf.math.multiply_38/Mul
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Sub?
tf.math.multiply_37/MulMuldropout_2/Identity:output:0tf.math.multiply_36/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_37/Mul?
tf.__operators__.add_25/AddV2AddV2tf.math.multiply_37/Mul:z:0tf.math.subtract_12/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_25/AddV2x
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisه
concatenate_2/concatConcatV2!tf.__operators__.add_25/AddV2:z:0!tf.__operators__.add_13/AddV2:z:0"concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
concatenate_2/concat
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const_1
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:?????????@*
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
:?????????*
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
:?????????2
conv2d_17/BiasAdd
conv2d_17/TanhTanhconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:?????????2
conv2d_17/Tanh
IdentityIdentityconv2d_17/Tanh:y:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2D
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

?
F__inference_conv2d_10_layer_call_and_return_conditional_losses_8733037

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
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_8735191

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

?
+__inference_conv2d_14_layer_call_fn_8735093

inputs#
unknown:
	unknown_0:	
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_87331992
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
?


F__inference_conv2d_12_layer_call_and_return_conditional_losses_8735045

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
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_8733261

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
?
t
J__inference_concatenate_1_layer_call_and_return_conditional_losses_8733287

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
?
?
)__inference_model_2_layer_call_fn_8733422
input_3!
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
GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_87333592
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

?
F__inference_conv2d_11_layer_call_and_return_conditional_losses_8733077

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

g
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_8733168

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
ّ
L
0__inference_leaky_re_lu_10_layer_call_fn_8735050

inputs
identityص
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_87331282
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
?
؟
)__inference_model_2_layer_call_fn_8734539

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
identity?StatefulPartitionedCall
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
GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_87338602
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
?
Y
-__inference_concatenate_layer_call_fn_8735137
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
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_87332362
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


F__inference_conv2d_16_layer_call_and_return_conditional_losses_8733301

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
??

"__inference__wrapped_model_8732944
input_3J
0model_2_conv2d_10_conv2d_readvariableop_resource: ?
1model_2_conv2d_10_biasadd_readvariableop_resource: %
!model_2_tf_math_multiply_18_mul_y
model_2_8732762J
0model_2_conv2d_11_conv2d_readvariableop_resource: @?
1model_2_conv2d_11_biasadd_readvariableop_resource:@%
!model_2_tf_math_multiply_21_mul_y
model_2_8732786K
0model_2_conv2d_12_conv2d_readvariableop_resource:@@
1model_2_conv2d_12_biasadd_readvariableop_resource:	%
!model_2_tf_math_multiply_24_mul_y
model_2_8732810L
0model_2_conv2d_13_conv2d_readvariableop_resource:@
1model_2_conv2d_13_biasadd_readvariableop_resource:	%
!model_2_tf_math_multiply_27_mul_y
model_2_8732834L
0model_2_conv2d_14_conv2d_readvariableop_resource:@
1model_2_conv2d_14_biasadd_readvariableop_resource:	%
!model_2_tf_math_multiply_30_mul_y
model_2_8732863K
0model_2_conv2d_15_conv2d_readvariableop_resource:@?
1model_2_conv2d_15_biasadd_readvariableop_resource:@%
!model_2_tf_math_multiply_33_mul_y
model_2_8732894K
0model_2_conv2d_16_conv2d_readvariableop_resource: ?
1model_2_conv2d_16_biasadd_readvariableop_resource: %
!model_2_tf_math_multiply_36_mul_y
model_2_8732925J
0model_2_conv2d_17_conv2d_readvariableop_resource:@?
1model_2_conv2d_17_biasadd_readvariableop_resource:
identity?(model_2/conv2d_10/BiasAdd/ReadVariableOp?'model_2/conv2d_10/Conv2D/ReadVariableOp?(model_2/conv2d_11/BiasAdd/ReadVariableOp?'model_2/conv2d_11/Conv2D/ReadVariableOp?(model_2/conv2d_12/BiasAdd/ReadVariableOp?'model_2/conv2d_12/Conv2D/ReadVariableOp?(model_2/conv2d_13/BiasAdd/ReadVariableOp?'model_2/conv2d_13/Conv2D/ReadVariableOp?(model_2/conv2d_14/BiasAdd/ReadVariableOp?'model_2/conv2d_14/Conv2D/ReadVariableOp?(model_2/conv2d_15/BiasAdd/ReadVariableOp?'model_2/conv2d_15/Conv2D/ReadVariableOp?(model_2/conv2d_16/BiasAdd/ReadVariableOp?'model_2/conv2d_16/Conv2D/ReadVariableOp?(model_2/conv2d_17/BiasAdd/ReadVariableOp?'model_2/conv2d_17/Conv2D/ReadVariableOpث
'model_2/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_2/conv2d_10/Conv2D/ReadVariableOp?
model_2/conv2d_10/Conv2DConv2Dinput_3/model_2/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
2
model_2/conv2d_10/Conv2Dآ
(model_2/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_2/conv2d_10/BiasAdd/ReadVariableOpز
model_2/conv2d_10/BiasAddBiasAdd!model_2/conv2d_10/Conv2D:output:00model_2/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? 2
model_2/conv2d_10/BiasAdd?
model_2/leaky_re_lu_8/LeakyRelu	LeakyRelu"model_2/conv2d_10/BiasAdd:output:0*1
_output_shapes
:????????? 2!
model_2/leaky_re_lu_8/LeakyRelu؟
5model_2/tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_12/Mean/reduction_indices
#model_2/tf.math.reduce_mean_12/MeanMean-model_2/leaky_re_lu_8/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_12/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_12/Meanت
'model_2/tf.stop_gradient_6/StopGradientStopGradient,model_2/tf.math.reduce_mean_12/Mean:output:0*
T0*/
_output_shapes
:????????? 2)
'model_2/tf.stop_gradient_6/StopGradient?
6model_2/tf.math.squared_difference_6/SquaredDifferenceSquaredDifference-model_2/leaky_re_lu_8/LeakyRelu:activations:00model_2/tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:????????? 28
6model_2/tf.math.squared_difference_6/SquaredDifference؟
5model_2/tf.math.reduce_mean_13/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_13/Mean/reduction_indices
#model_2/tf.math.reduce_mean_13/MeanMean:model_2/tf.math.squared_difference_6/SquaredDifference:z:0>model_2/tf.math.reduce_mean_13/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_13/Mean
!model_2/tf.__operators__.add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_2/tf.__operators__.add_12/yً
%model_2/tf.__operators__.add_12/AddV2AddV2,model_2/tf.math.reduce_mean_13/Mean:output:0*model_2/tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_2/tf.__operators__.add_12/AddV2،
model_2/tf.math.rsqrt_6/RsqrtRsqrt)model_2/tf.__operators__.add_12/AddV2:z:0*
T0*/
_output_shapes
:????????? 2
model_2/tf.math.rsqrt_6/Rsqrtة
model_2/tf.math.multiply_18/MulMul!model_2/tf.math.rsqrt_6/Rsqrt:y:0!model_2_tf_math_multiply_18_mul_y*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_18/Mulض
model_2/tf.math.multiply_20/MulMul,model_2/tf.math.reduce_mean_12/Mean:output:0#model_2/tf.math.multiply_18/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_20/Mul?
model_2/tf.math.subtract_6/SubSubmodel_2_8732762#model_2/tf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2 
model_2/tf.math.subtract_6/Subع
model_2/tf.math.multiply_19/MulMul-model_2/leaky_re_lu_8/LeakyRelu:activations:0#model_2/tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:????????? 2!
model_2/tf.math.multiply_19/Mul?
%model_2/tf.__operators__.add_13/AddV2AddV2#model_2/tf.math.multiply_19/Mul:z:0"model_2/tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:????????? 2'
%model_2/tf.__operators__.add_13/AddV2ث
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
model_2/conv2d_11/Conv2Dآ
(model_2/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_2/conv2d_11/BiasAdd/ReadVariableOpذ
model_2/conv2d_11/BiasAddBiasAdd!model_2/conv2d_11/Conv2D:output:00model_2/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_2/conv2d_11/BiasAdd¤
model_2/leaky_re_lu_9/LeakyRelu	LeakyRelu"model_2/conv2d_11/BiasAdd:output:0*/
_output_shapes
:?????????@@@2!
model_2/leaky_re_lu_9/LeakyRelu؟
5model_2/tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_14/Mean/reduction_indices
#model_2/tf.math.reduce_mean_14/MeanMean-model_2/leaky_re_lu_9/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_14/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_14/Meanت
'model_2/tf.stop_gradient_7/StopGradientStopGradient,model_2/tf.math.reduce_mean_14/Mean:output:0*
T0*/
_output_shapes
:?????????@2)
'model_2/tf.stop_gradient_7/StopGradient 
6model_2/tf.math.squared_difference_7/SquaredDifferenceSquaredDifference-model_2/leaky_re_lu_9/LeakyRelu:activations:00model_2/tf.stop_gradient_7/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@28
6model_2/tf.math.squared_difference_7/SquaredDifference؟
5model_2/tf.math.reduce_mean_15/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_15/Mean/reduction_indices
#model_2/tf.math.reduce_mean_15/MeanMean:model_2/tf.math.squared_difference_7/SquaredDifference:z:0>model_2/tf.math.reduce_mean_15/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_15/Mean
!model_2/tf.__operators__.add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_2/tf.__operators__.add_14/yً
%model_2/tf.__operators__.add_14/AddV2AddV2,model_2/tf.math.reduce_mean_15/Mean:output:0*model_2/tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_2/tf.__operators__.add_14/AddV2،
model_2/tf.math.rsqrt_7/RsqrtRsqrt)model_2/tf.__operators__.add_14/AddV2:z:0*
T0*/
_output_shapes
:?????????@2
model_2/tf.math.rsqrt_7/Rsqrtة
model_2/tf.math.multiply_21/MulMul!model_2/tf.math.rsqrt_7/Rsqrt:y:0!model_2_tf_math_multiply_21_mul_y*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_21/Mulض
model_2/tf.math.multiply_23/MulMul,model_2/tf.math.reduce_mean_14/Mean:output:0#model_2/tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_23/Mul?
model_2/tf.math.subtract_7/SubSubmodel_2_8732786#model_2/tf.math.multiply_23/Mul:z:0*
T0*/
_output_shapes
:?????????@2 
model_2/tf.math.subtract_7/Subط
model_2/tf.math.multiply_22/MulMul-model_2/leaky_re_lu_9/LeakyRelu:activations:0#model_2/tf.math.multiply_21/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_2/tf.math.multiply_22/Mulغ
%model_2/tf.__operators__.add_15/AddV2AddV2#model_2/tf.math.multiply_22/Mul:z:0"model_2/tf.math.subtract_7/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_2/tf.__operators__.add_15/AddV2ج
'model_2/conv2d_12/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_12_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02)
'model_2/conv2d_12/Conv2D/ReadVariableOp?
model_2/conv2d_12/Conv2DConv2D)model_2/tf.__operators__.add_15/AddV2:z:0/model_2/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_2/conv2d_12/Conv2Dأ
(model_2/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_2/conv2d_12/BiasAdd/ReadVariableOpر
model_2/conv2d_12/BiasAddBiasAdd!model_2/conv2d_12/Conv2D:output:00model_2/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
model_2/conv2d_12/BiasAdd?
 model_2/leaky_re_lu_10/LeakyRelu	LeakyRelu"model_2/conv2d_12/BiasAdd:output:0*0
_output_shapes
:?????????  2"
 model_2/leaky_re_lu_10/LeakyRelu؟
5model_2/tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_16/Mean/reduction_indices
#model_2/tf.math.reduce_mean_16/MeanMean.model_2/leaky_re_lu_10/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_16/Meanث
'model_2/tf.stop_gradient_8/StopGradientStopGradient,model_2/tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:?????????2)
'model_2/tf.stop_gradient_8/StopGradient?
6model_2/tf.math.squared_difference_8/SquaredDifferenceSquaredDifference.model_2/leaky_re_lu_10/LeakyRelu:activations:00model_2/tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  28
6model_2/tf.math.squared_difference_8/SquaredDifference؟
5model_2/tf.math.reduce_mean_17/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_17/Mean/reduction_indices
#model_2/tf.math.reduce_mean_17/MeanMean:model_2/tf.math.squared_difference_8/SquaredDifference:z:0>model_2/tf.math.reduce_mean_17/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_17/Mean
!model_2/tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_2/tf.__operators__.add_16/yٌ
%model_2/tf.__operators__.add_16/AddV2AddV2,model_2/tf.math.reduce_mean_17/Mean:output:0*model_2/tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:?????????2'
%model_2/tf.__operators__.add_16/AddV2­
model_2/tf.math.rsqrt_8/RsqrtRsqrt)model_2/tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:?????????2
model_2/tf.math.rsqrt_8/Rsqrtت
model_2/tf.math.multiply_24/MulMul!model_2/tf.math.rsqrt_8/Rsqrt:y:0!model_2_tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.multiply_24/Mulط
model_2/tf.math.multiply_26/MulMul,model_2/tf.math.reduce_mean_16/Mean:output:0#model_2/tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.multiply_26/Mul?
model_2/tf.math.subtract_8/SubSubmodel_2_8732810#model_2/tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:?????????2 
model_2/tf.math.subtract_8/Subع
model_2/tf.math.multiply_25/MulMul.model_2/leaky_re_lu_10/LeakyRelu:activations:0#model_2/tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  2!
model_2/tf.math.multiply_25/Mul?
%model_2/tf.__operators__.add_17/AddV2AddV2#model_2/tf.math.multiply_25/Mul:z:0"model_2/tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  2'
%model_2/tf.__operators__.add_17/AddV2ح
'model_2/conv2d_13/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'model_2/conv2d_13/Conv2D/ReadVariableOp?
model_2/conv2d_13/Conv2DConv2D)model_2/tf.__operators__.add_17/AddV2:z:0/model_2/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
2
model_2/conv2d_13/Conv2Dأ
(model_2/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_2/conv2d_13/BiasAdd/ReadVariableOpر
model_2/conv2d_13/BiasAddBiasAdd!model_2/conv2d_13/Conv2D:output:00model_2/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????2
model_2/conv2d_13/BiasAdd?
 model_2/leaky_re_lu_11/LeakyRelu	LeakyRelu"model_2/conv2d_13/BiasAdd:output:0*0
_output_shapes
:?????????2"
 model_2/leaky_re_lu_11/LeakyRelu؟
5model_2/tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_18/Mean/reduction_indices
#model_2/tf.math.reduce_mean_18/MeanMean.model_2/leaky_re_lu_11/LeakyRelu:activations:0>model_2/tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_18/Meanث
'model_2/tf.stop_gradient_9/StopGradientStopGradient,model_2/tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:?????????2)
'model_2/tf.stop_gradient_9/StopGradient?
6model_2/tf.math.squared_difference_9/SquaredDifferenceSquaredDifference.model_2/leaky_re_lu_11/LeakyRelu:activations:00model_2/tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:?????????28
6model_2/tf.math.squared_difference_9/SquaredDifference؟
5model_2/tf.math.reduce_mean_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_19/Mean/reduction_indices
#model_2/tf.math.reduce_mean_19/MeanMean:model_2/tf.math.squared_difference_9/SquaredDifference:z:0>model_2/tf.math.reduce_mean_19/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_19/Mean
!model_2/tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_2/tf.__operators__.add_18/yٌ
%model_2/tf.__operators__.add_18/AddV2AddV2,model_2/tf.math.reduce_mean_19/Mean:output:0*model_2/tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:?????????2'
%model_2/tf.__operators__.add_18/AddV2­
model_2/tf.math.rsqrt_9/RsqrtRsqrt)model_2/tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:?????????2
model_2/tf.math.rsqrt_9/Rsqrtت
model_2/tf.math.multiply_27/MulMul!model_2/tf.math.rsqrt_9/Rsqrt:y:0!model_2_tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.multiply_27/Mulط
model_2/tf.math.multiply_29/MulMul,model_2/tf.math.reduce_mean_18/Mean:output:0#model_2/tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.multiply_29/Mul?
model_2/tf.math.subtract_9/SubSubmodel_2_8732834#model_2/tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:?????????2 
model_2/tf.math.subtract_9/Subع
model_2/tf.math.multiply_28/MulMul.model_2/leaky_re_lu_11/LeakyRelu:activations:0#model_2/tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.multiply_28/Mul?
%model_2/tf.__operators__.add_19/AddV2AddV2#model_2/tf.math.multiply_28/Mul:z:0"model_2/tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:?????????2'
%model_2/tf.__operators__.add_19/AddV2
model_2/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
model_2/up_sampling2d/Const
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
model_2/up_sampling2d/mul 
2model_2/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor)model_2/tf.__operators__.add_19/AddV2:z:0model_2/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(24
2model_2/up_sampling2d/resize/ResizeNearestNeighborح
'model_2/conv2d_14/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'model_2/conv2d_14/Conv2D/ReadVariableOp
model_2/conv2d_14/Conv2DConv2DCmodel_2/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_2/conv2d_14/Conv2Dأ
(model_2/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_2/conv2d_14/BiasAdd/ReadVariableOpر
model_2/conv2d_14/BiasAddBiasAdd!model_2/conv2d_14/Conv2D:output:00model_2/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  2
model_2/conv2d_14/BiasAdd
model_2/conv2d_14/ReluRelu"model_2/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  2
model_2/conv2d_14/Relu?
model_2/dropout/IdentityIdentity$model_2/conv2d_14/Relu:activations:0*
T0*0
_output_shapes
:?????????  2
model_2/dropout/Identity؟
5model_2/tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_20/Mean/reduction_indices
#model_2/tf.math.reduce_mean_20/MeanMean!model_2/dropout/Identity:output:0>model_2/tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_20/Meanح
(model_2/tf.stop_gradient_10/StopGradientStopGradient,model_2/tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:?????????2*
(model_2/tf.stop_gradient_10/StopGradient
7model_2/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference!model_2/dropout/Identity:output:01model_2/tf.stop_gradient_10/StopGradient:output:0*
T0*0
_output_shapes
:?????????  29
7model_2/tf.math.squared_difference_10/SquaredDifference؟
5model_2/tf.math.reduce_mean_21/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_21/Mean/reduction_indices
#model_2/tf.math.reduce_mean_21/MeanMean;model_2/tf.math.squared_difference_10/SquaredDifference:z:0>model_2/tf.math.reduce_mean_21/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2%
#model_2/tf.math.reduce_mean_21/Mean
!model_2/tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_2/tf.__operators__.add_20/yٌ
%model_2/tf.__operators__.add_20/AddV2AddV2,model_2/tf.math.reduce_mean_21/Mean:output:0*model_2/tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:?????????2'
%model_2/tf.__operators__.add_20/AddV2?
model_2/tf.math.rsqrt_10/RsqrtRsqrt)model_2/tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:?????????2 
model_2/tf.math.rsqrt_10/Rsqrtث
model_2/tf.math.multiply_30/MulMul"model_2/tf.math.rsqrt_10/Rsqrt:y:0!model_2_tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.multiply_30/Mulط
model_2/tf.math.multiply_32/MulMul,model_2/tf.math.reduce_mean_20/Mean:output:0#model_2/tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.multiply_32/Mul?
model_2/tf.math.subtract_10/SubSubmodel_2_8732863#model_2/tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:?????????2!
model_2/tf.math.subtract_10/Subج
model_2/tf.math.multiply_31/MulMul!model_2/dropout/Identity:output:0#model_2/tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????  2!
model_2/tf.math.multiply_31/Mul?
%model_2/tf.__operators__.add_21/AddV2AddV2#model_2/tf.math.multiply_31/Mul:z:0#model_2/tf.math.subtract_10/Sub:z:0*
T0*0
_output_shapes
:?????????  2'
%model_2/tf.__operators__.add_21/AddV2
model_2/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model_2/concatenate/concat/axis
model_2/concatenate/concatConcatV2)model_2/tf.__operators__.add_21/AddV2:z:0)model_2/tf.__operators__.add_17/AddV2:z:0(model_2/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????  2
model_2/concatenate/concat
model_2/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
model_2/up_sampling2d_1/Const
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
model_2/up_sampling2d_1/mul 
4model_2/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor#model_2/concatenate/concat:output:0model_2/up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(26
4model_2/up_sampling2d_1/resize/ResizeNearestNeighborج
'model_2/conv2d_15/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02)
'model_2/conv2d_15/Conv2D/ReadVariableOp
model_2/conv2d_15/Conv2DConv2DEmodel_2/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
model_2/conv2d_15/Conv2Dآ
(model_2/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_2/conv2d_15/BiasAdd/ReadVariableOpذ
model_2/conv2d_15/BiasAddBiasAdd!model_2/conv2d_15/Conv2D:output:00model_2/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
model_2/conv2d_15/BiasAdd
model_2/conv2d_15/ReluRelu"model_2/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
model_2/conv2d_15/Relu¤
model_2/dropout_1/IdentityIdentity$model_2/conv2d_15/Relu:activations:0*
T0*/
_output_shapes
:?????????@@@2
model_2/dropout_1/Identity؟
5model_2/tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_22/Mean/reduction_indices
#model_2/tf.math.reduce_mean_22/MeanMean#model_2/dropout_1/Identity:output:0>model_2/tf.math.reduce_mean_22/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_22/Meanج
(model_2/tf.stop_gradient_11/StopGradientStopGradient,model_2/tf.math.reduce_mean_22/Mean:output:0*
T0*/
_output_shapes
:?????????@2*
(model_2/tf.stop_gradient_11/StopGradient
7model_2/tf.math.squared_difference_11/SquaredDifferenceSquaredDifference#model_2/dropout_1/Identity:output:01model_2/tf.stop_gradient_11/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@29
7model_2/tf.math.squared_difference_11/SquaredDifference؟
5model_2/tf.math.reduce_mean_23/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_23/Mean/reduction_indices
#model_2/tf.math.reduce_mean_23/MeanMean;model_2/tf.math.squared_difference_11/SquaredDifference:z:0>model_2/tf.math.reduce_mean_23/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2%
#model_2/tf.math.reduce_mean_23/Mean
!model_2/tf.__operators__.add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_2/tf.__operators__.add_22/yً
%model_2/tf.__operators__.add_22/AddV2AddV2,model_2/tf.math.reduce_mean_23/Mean:output:0*model_2/tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2'
%model_2/tf.__operators__.add_22/AddV2?
model_2/tf.math.rsqrt_11/RsqrtRsqrt)model_2/tf.__operators__.add_22/AddV2:z:0*
T0*/
_output_shapes
:?????????@2 
model_2/tf.math.rsqrt_11/Rsqrtت
model_2/tf.math.multiply_33/MulMul"model_2/tf.math.rsqrt_11/Rsqrt:y:0!model_2_tf_math_multiply_33_mul_y*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_33/Mulض
model_2/tf.math.multiply_35/MulMul,model_2/tf.math.reduce_mean_22/Mean:output:0#model_2/tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.multiply_35/Mul?
model_2/tf.math.subtract_11/SubSubmodel_2_8732894#model_2/tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2!
model_2/tf.math.subtract_11/Subح
model_2/tf.math.multiply_34/MulMul#model_2/dropout_1/Identity:output:0#model_2/tf.math.multiply_33/Mul:z:0*
T0*/
_output_shapes
:?????????@@@2!
model_2/tf.math.multiply_34/Mul?
%model_2/tf.__operators__.add_23/AddV2AddV2#model_2/tf.math.multiply_34/Mul:z:0#model_2/tf.math.subtract_11/Sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%model_2/tf.__operators__.add_23/AddV2
!model_2/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_2/concatenate_1/concat/axis
model_2/concatenate_1/concatConcatV2)model_2/tf.__operators__.add_23/AddV2:z:0)model_2/tf.__operators__.add_15/AddV2:z:0*model_2/concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????@@2
model_2/concatenate_1/concat
model_2/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
model_2/up_sampling2d_2/Const
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
model_2/up_sampling2d_2/mul¤
4model_2/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor%model_2/concatenate_1/concat:output:0model_2/up_sampling2d_2/mul:z:0*
T0*2
_output_shapes 
:?????????*
half_pixel_centers(26
4model_2/up_sampling2d_2/resize/ResizeNearestNeighborج
'model_2/conv2d_16/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype02)
'model_2/conv2d_16/Conv2D/ReadVariableOp
model_2/conv2d_16/Conv2DConv2DEmodel_2/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? *
paddingSAME*
strides
2
model_2/conv2d_16/Conv2Dآ
(model_2/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_2/conv2d_16/BiasAdd/ReadVariableOpز
model_2/conv2d_16/BiasAddBiasAdd!model_2/conv2d_16/Conv2D:output:00model_2/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????? 2
model_2/conv2d_16/BiasAdd
model_2/conv2d_16/ReluRelu"model_2/conv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:????????? 2
model_2/conv2d_16/Relu?
model_2/dropout_2/IdentityIdentity$model_2/conv2d_16/Relu:activations:0*
T0*1
_output_shapes
:????????? 2
model_2/dropout_2/Identity؟
5model_2/tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_24/Mean/reduction_indices
#model_2/tf.math.reduce_mean_24/MeanMean#model_2/dropout_2/Identity:output:0>model_2/tf.math.reduce_mean_24/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_24/Meanج
(model_2/tf.stop_gradient_12/StopGradientStopGradient,model_2/tf.math.reduce_mean_24/Mean:output:0*
T0*/
_output_shapes
:????????? 2*
(model_2/tf.stop_gradient_12/StopGradient
7model_2/tf.math.squared_difference_12/SquaredDifferenceSquaredDifference#model_2/dropout_2/Identity:output:01model_2/tf.stop_gradient_12/StopGradient:output:0*
T0*1
_output_shapes
:????????? 29
7model_2/tf.math.squared_difference_12/SquaredDifference؟
5model_2/tf.math.reduce_mean_25/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model_2/tf.math.reduce_mean_25/Mean/reduction_indices
#model_2/tf.math.reduce_mean_25/MeanMean;model_2/tf.math.squared_difference_12/SquaredDifference:z:0>model_2/tf.math.reduce_mean_25/Mean/reduction_indices:output:0*
T0*/
_output_shapes
:????????? *
	keep_dims(2%
#model_2/tf.math.reduce_mean_25/Mean
!model_2/tf.__operators__.add_24/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2#
!model_2/tf.__operators__.add_24/yً
%model_2/tf.__operators__.add_24/AddV2AddV2,model_2/tf.math.reduce_mean_25/Mean:output:0*model_2/tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2'
%model_2/tf.__operators__.add_24/AddV2?
model_2/tf.math.rsqrt_12/RsqrtRsqrt)model_2/tf.__operators__.add_24/AddV2:z:0*
T0*/
_output_shapes
:????????? 2 
model_2/tf.math.rsqrt_12/Rsqrtت
model_2/tf.math.multiply_36/MulMul"model_2/tf.math.rsqrt_12/Rsqrt:y:0!model_2_tf_math_multiply_36_mul_y*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_36/Mulض
model_2/tf.math.multiply_38/MulMul,model_2/tf.math.reduce_mean_24/Mean:output:0#model_2/tf.math.multiply_36/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.multiply_38/Mul?
model_2/tf.math.subtract_12/SubSubmodel_2_8732925#model_2/tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2!
model_2/tf.math.subtract_12/Subد
model_2/tf.math.multiply_37/MulMul#model_2/dropout_2/Identity:output:0#model_2/tf.math.multiply_36/Mul:z:0*
T0*1
_output_shapes
:????????? 2!
model_2/tf.math.multiply_37/Mul?
%model_2/tf.__operators__.add_25/AddV2AddV2#model_2/tf.math.multiply_37/Mul:z:0#model_2/tf.math.subtract_12/Sub:z:0*
T0*1
_output_shapes
:????????? 2'
%model_2/tf.__operators__.add_25/AddV2
!model_2/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_2/concatenate_2/concat/axis
model_2/concatenate_2/concatConcatV2)model_2/tf.__operators__.add_25/AddV2:z:0)model_2/tf.__operators__.add_13/AddV2:z:0*model_2/concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:?????????@2
model_2/concatenate_2/concat
model_2/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
model_2/up_sampling2d_3/Const
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
:?????????@*
half_pixel_centers(26
4model_2/up_sampling2d_3/resize/ResizeNearestNeighborث
'model_2/conv2d_17/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'model_2/conv2d_17/Conv2D/ReadVariableOp
model_2/conv2d_17/Conv2DConv2DEmodel_2/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0/model_2/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????*
paddingSAME*
strides
2
model_2/conv2d_17/Conv2Dآ
(model_2/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_2/conv2d_17/BiasAdd/ReadVariableOpز
model_2/conv2d_17/BiasAddBiasAdd!model_2/conv2d_17/Conv2D:output:00model_2/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????2
model_2/conv2d_17/BiasAdd
model_2/conv2d_17/TanhTanh"model_2/conv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:?????????2
model_2/conv2d_17/Tanh 
IdentityIdentitymodel_2/conv2d_17/Tanh:y:0)^model_2/conv2d_10/BiasAdd/ReadVariableOp(^model_2/conv2d_10/Conv2D/ReadVariableOp)^model_2/conv2d_11/BiasAdd/ReadVariableOp(^model_2/conv2d_11/Conv2D/ReadVariableOp)^model_2/conv2d_12/BiasAdd/ReadVariableOp(^model_2/conv2d_12/Conv2D/ReadVariableOp)^model_2/conv2d_13/BiasAdd/ReadVariableOp(^model_2/conv2d_13/Conv2D/ReadVariableOp)^model_2/conv2d_14/BiasAdd/ReadVariableOp(^model_2/conv2d_14/Conv2D/ReadVariableOp)^model_2/conv2d_15/BiasAdd/ReadVariableOp(^model_2/conv2d_15/Conv2D/ReadVariableOp)^model_2/conv2d_16/BiasAdd/ReadVariableOp(^model_2/conv2d_16/Conv2D/ReadVariableOp)^model_2/conv2d_17/BiasAdd/ReadVariableOp(^model_2/conv2d_17/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2T
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
:?????????
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
d
+__inference_dropout_1_layer_call_fn_8735174

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
GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_87334992
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
?
r
H__inference_concatenate_layer_call_and_return_conditional_losses_8733236

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


F__inference_conv2d_14_layer_call_and_return_conditional_losses_8733199

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
?
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_8733459

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
خ
?
+__inference_conv2d_12_layer_call_fn_8735035

inputs"
unknown:@
	unknown_0:	
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_87331172
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
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_8735179

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

c
D__inference_dropout_layer_call_and_return_conditional_losses_8733539

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
؟
v
J__inference_concatenate_1_layer_call_and_return_conditional_losses_8735204
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
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_8733312

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

f
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_8734997

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
،
G
+__inference_dropout_1_layer_call_fn_8735169

inputs
identityف
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_87332612
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

f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8733088

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


F__inference_conv2d_12_layer_call_and_return_conditional_losses_8733117

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
?
K
/__inference_leaky_re_lu_8_layer_call_fn_8734992

inputs
identityص
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_87330482
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

?
+__inference_conv2d_15_layer_call_fn_8735153

inputs"
unknown:@
	unknown_0:@
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_87332502
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
إ
v
J__inference_concatenate_2_layer_call_and_return_conditional_losses_8735264
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
?
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_8735251

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

 
+__inference_conv2d_17_layer_call_fn_8735273

inputs!
unknown:@
	unknown_0:
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_87333522
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

g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8733128

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

f
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_8733048

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


F__inference_conv2d_15_layer_call_and_return_conditional_losses_8735164

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
?
b
)__inference_dropout_layer_call_fn_8735114

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
GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_87335392
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
?
[
/__inference_concatenate_1_layer_call_fn_8735197
inputs_0
inputs_1
identityف
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
GPU2*0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_87332872
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
،
G
+__inference_dropout_2_layer_call_fn_8735229

inputs
identityف
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_87333122
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
,
ِ
 __inference__traced_save_8735369
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
?
?
F__inference_conv2d_17_layer_call_and_return_conditional_losses_8735284

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
ً
K
/__inference_leaky_re_lu_9_layer_call_fn_8735021

inputs
identityس
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_87330882
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

g
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_8735084

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
h
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_8732995

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

g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8735055

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
h
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8733014

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
?
F__inference_conv2d_17_layer_call_and_return_conditional_losses_8733352

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
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_8733499

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
?
?

D__inference_model_2_layer_call_and_return_conditional_losses_8734165
input_3+
conv2d_10_8733991: 
conv2d_10_8733993: 
tf_math_multiply_18_mul_y
unknown+
conv2d_11_8734014: @
conv2d_11_8734016:@
tf_math_multiply_21_mul_y
	unknown_0,
conv2d_12_8734037:@ 
conv2d_12_8734039:	
tf_math_multiply_24_mul_y
	unknown_1-
conv2d_13_8734060: 
conv2d_13_8734062:	
tf_math_multiply_27_mul_y
	unknown_2-
conv2d_14_8734084: 
conv2d_14_8734086:	
tf_math_multiply_30_mul_y
	unknown_3,
conv2d_15_8734109:@
conv2d_15_8734111:@
tf_math_multiply_33_mul_y
	unknown_4,
conv2d_16_8734134: 
conv2d_16_8734136: 
tf_math_multiply_36_mul_y
	unknown_5+
conv2d_17_8734159:@
conv2d_17_8734161:
identity?!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_10_8733991conv2d_10_8733993*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_87330372#
!conv2d_10/StatefulPartitionedCall
leaky_re_lu_8/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_87330482
leaky_re_lu_8/PartitionedCall?
-tf.math.reduce_mean_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_12/Mean/reduction_indicesٍ
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
tf.stop_gradient_6/StopGradient
.tf.math.squared_difference_6/SquaredDifferenceSquaredDifference&leaky_re_lu_8/PartitionedCall:output:0(tf.stop_gradient_6/StopGradient:output:0*
T0*1
_output_shapes
:????????? 20
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
 *o:2
tf.__operators__.add_12/yث
tf.__operators__.add_12/AddV2AddV2$tf.math.reduce_mean_13/Mean:output:0"tf.__operators__.add_12/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_12/AddV2
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
tf.math.multiply_20/Mul
tf.math.subtract_6/SubSubunknowntf.math.multiply_20/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_6/Sub?
tf.math.multiply_19/MulMul&leaky_re_lu_8/PartitionedCall:output:0tf.math.multiply_18/Mul:z:0*
T0*1
_output_shapes
:????????? 2
tf.math.multiply_19/Mul?
tf.__operators__.add_13/AddV2AddV2tf.math.multiply_19/Mul:z:0tf.math.subtract_6/Sub:z:0*
T0*1
_output_shapes
:????????? 2
tf.__operators__.add_13/AddV2آ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_13/AddV2:z:0conv2d_11_8734014conv2d_11_8734016*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_87330772#
!conv2d_11/StatefulPartitionedCall
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
GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_87330882
leaky_re_lu_9/PartitionedCall?
-tf.math.reduce_mean_14/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_14/Mean/reduction_indicesٍ
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
tf.stop_gradient_7/StopGradient
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
 *o:2
tf.__operators__.add_14/yث
tf.__operators__.add_14/AddV2AddV2$tf.math.reduce_mean_15/Mean:output:0"tf.__operators__.add_14/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_14/AddV2
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
tf.math.multiply_23/Mul
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
tf.__operators__.add_15/AddV2أ
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_15/AddV2:z:0conv2d_12_8734037conv2d_12_8734039*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_87331172#
!conv2d_12/StatefulPartitionedCall
leaky_re_lu_10/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_87331282 
leaky_re_lu_10/PartitionedCall?
-tf.math.reduce_mean_16/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_16/Mean/reduction_indicesُ
tf.math.reduce_mean_16/MeanMean'leaky_re_lu_10/PartitionedCall:output:06tf.math.reduce_mean_16/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_16/Mean?
tf.stop_gradient_8/StopGradientStopGradient$tf.math.reduce_mean_16/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_8/StopGradient
.tf.math.squared_difference_8/SquaredDifferenceSquaredDifference'leaky_re_lu_10/PartitionedCall:output:0(tf.stop_gradient_8/StopGradient:output:0*
T0*0
_output_shapes
:?????????  20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_17/Mean{
tf.__operators__.add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_16/yج
tf.__operators__.add_16/AddV2AddV2$tf.math.reduce_mean_17/Mean:output:0"tf.__operators__.add_16/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_16/AddV2
tf.math.rsqrt_8/RsqrtRsqrt!tf.__operators__.add_16/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_8/Rsqrt?
tf.math.multiply_24/MulMultf.math.rsqrt_8/Rsqrt:y:0tf_math_multiply_24_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_24/Mul?
tf.math.multiply_26/MulMul$tf.math.reduce_mean_16/Mean:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_26/Mul
tf.math.subtract_8/SubSub	unknown_1tf.math.multiply_26/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_8/Sub?
tf.math.multiply_25/MulMul'leaky_re_lu_10/PartitionedCall:output:0tf.math.multiply_24/Mul:z:0*
T0*0
_output_shapes
:?????????  2
tf.math.multiply_25/Mul؛
tf.__operators__.add_17/AddV2AddV2tf.math.multiply_25/Mul:z:0tf.math.subtract_8/Sub:z:0*
T0*0
_output_shapes
:?????????  2
tf.__operators__.add_17/AddV2أ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall!tf.__operators__.add_17/AddV2:z:0conv2d_13_8734060conv2d_13_8734062*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_87331572#
!conv2d_13/StatefulPartitionedCall
leaky_re_lu_11/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_87331682 
leaky_re_lu_11/PartitionedCall?
-tf.math.reduce_mean_18/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_18/Mean/reduction_indicesُ
tf.math.reduce_mean_18/MeanMean'leaky_re_lu_11/PartitionedCall:output:06tf.math.reduce_mean_18/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_18/Mean?
tf.stop_gradient_9/StopGradientStopGradient$tf.math.reduce_mean_18/Mean:output:0*
T0*0
_output_shapes
:?????????2!
tf.stop_gradient_9/StopGradient
.tf.math.squared_difference_9/SquaredDifferenceSquaredDifference'leaky_re_lu_11/PartitionedCall:output:0(tf.stop_gradient_9/StopGradient:output:0*
T0*0
_output_shapes
:?????????20
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_19/Mean{
tf.__operators__.add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_18/yج
tf.__operators__.add_18/AddV2AddV2$tf.math.reduce_mean_19/Mean:output:0"tf.__operators__.add_18/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_18/AddV2
tf.math.rsqrt_9/RsqrtRsqrt!tf.__operators__.add_18/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_9/Rsqrt?
tf.math.multiply_27/MulMultf.math.rsqrt_9/Rsqrt:y:0tf_math_multiply_27_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_27/Mul?
tf.math.multiply_29/MulMul$tf.math.reduce_mean_18/Mean:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_29/Mul
tf.math.subtract_9/SubSub	unknown_2tf.math.multiply_29/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_9/Sub?
tf.math.multiply_28/MulMul'leaky_re_lu_11/PartitionedCall:output:0tf.math.multiply_27/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_28/Mul؛
tf.__operators__.add_19/AddV2AddV2tf.math.multiply_28/Mul:z:0tf.math.subtract_9/Sub:z:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_19/AddV2
up_sampling2d/PartitionedCallPartitionedCall!tf.__operators__.add_19/AddV2:z:0*
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
GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_87329572
up_sampling2d/PartitionedCallغ
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_14_8734084conv2d_14_8734086*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_87331992#
!conv2d_14/StatefulPartitionedCall
dropout/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_87332102
dropout/PartitionedCall?
-tf.math.reduce_mean_20/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_20/Mean/reduction_indicesو
tf.math.reduce_mean_20/MeanMean dropout/PartitionedCall:output:06tf.math.reduce_mean_20/Mean/reduction_indices:output:0*
T0*0
_output_shapes
:?????????*
	keep_dims(2
tf.math.reduce_mean_20/Mean?
 tf.stop_gradient_10/StopGradientStopGradient$tf.math.reduce_mean_20/Mean:output:0*
T0*0
_output_shapes
:?????????2"
 tf.stop_gradient_10/StopGradient
/tf.math.squared_difference_10/SquaredDifferenceSquaredDifference dropout/PartitionedCall:output:0)tf.stop_gradient_10/StopGradient:output:0*
T0*B
_output_shapes0
.:,???????????????????????????21
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
:?????????*
	keep_dims(2
tf.math.reduce_mean_21/Mean{
tf.__operators__.add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
tf.__operators__.add_20/yج
tf.__operators__.add_20/AddV2AddV2$tf.math.reduce_mean_21/Mean:output:0"tf.__operators__.add_20/y:output:0*
T0*0
_output_shapes
:?????????2
tf.__operators__.add_20/AddV2
tf.math.rsqrt_10/RsqrtRsqrt!tf.__operators__.add_20/AddV2:z:0*
T0*0
_output_shapes
:?????????2
tf.math.rsqrt_10/Rsqrt?
tf.math.multiply_30/MulMultf.math.rsqrt_10/Rsqrt:y:0tf_math_multiply_30_mul_y*
T0*0
_output_shapes
:?????????2
tf.math.multiply_30/Mul?
tf.math.multiply_32/MulMul$tf.math.reduce_mean_20/Mean:output:0tf.math.multiply_30/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.multiply_32/Mul
tf.math.subtract_10/SubSub	unknown_3tf.math.multiply_32/Mul:z:0*
T0*0
_output_shapes
:?????????2
tf.math.subtract_10/Subإ
tf.math.multiply_31/MulMul dropout/PartitionedCall:output:0tf.math.multiply_30/Mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.math.multiply_31/Mulخ
tf.__operators__.add_21/AddV2AddV2tf.math.multiply_31/Mul:z:0tf.math.subtract_10/Sub:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
tf.__operators__.add_21/AddV2?
concatenate/PartitionedCallPartitionedCall!tf.__operators__.add_21/AddV2:z:0!tf.__operators__.add_17/AddV2:z:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_87332362
concatenate/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_87329762!
up_sampling2d_1/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_15_8734109conv2d_15_8734111*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_87332502#
!conv2d_15/StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_87332612
dropout_1/PartitionedCall?
-tf.math.reduce_mean_22/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_22/Mean/reduction_indicesى
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
 tf.stop_gradient_11/StopGradient
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
 *o:2
tf.__operators__.add_22/yث
tf.__operators__.add_22/AddV2AddV2$tf.math.reduce_mean_23/Mean:output:0"tf.__operators__.add_22/y:output:0*
T0*/
_output_shapes
:?????????@2
tf.__operators__.add_22/AddV2
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
tf.math.multiply_35/Mul
tf.math.subtract_11/SubSub	unknown_4tf.math.multiply_35/Mul:z:0*
T0*/
_output_shapes
:?????????@2
tf.math.subtract_11/Subئ
tf.math.multiply_34/MulMul"dropout_1/PartitionedCall:output:0tf.math.multiply_33/Mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
tf.math.multiply_34/Mulح
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
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_87332872
concatenate_1/PartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_87329952!
up_sampling2d_2/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_16_8734134conv2d_16_8734136*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_87333012#
!conv2d_16/StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_87333122
dropout_2/PartitionedCall?
-tf.math.reduce_mean_24/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2/
-tf.math.reduce_mean_24/Mean/reduction_indicesى
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
 tf.stop_gradient_12/StopGradient
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
 *o:2
tf.__operators__.add_24/yث
tf.__operators__.add_24/AddV2AddV2$tf.math.reduce_mean_25/Mean:output:0"tf.__operators__.add_24/y:output:0*
T0*/
_output_shapes
:????????? 2
tf.__operators__.add_24/AddV2
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
tf.math.multiply_38/Mul
tf.math.subtract_12/SubSub	unknown_5tf.math.multiply_38/Mul:z:0*
T0*/
_output_shapes
:????????? 2
tf.math.subtract_12/Subئ
tf.math.multiply_37/MulMul"dropout_2/PartitionedCall:output:0tf.math.multiply_36/Mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
tf.math.multiply_37/Mulح
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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_87333382
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_87330142!
up_sampling2d_3/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_17_8734159conv2d_17_8734161*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_87333522#
!conv2d_17/StatefulPartitionedCall?
IdentityIdentity*conv2d_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ش
_input_shapesآ
؟:?????????: : : : : : :@:@: : ::: : ::: : ::: : :@:@: : : : : : 2F
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
:?????????
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

?
F__inference_conv2d_11_layer_call_and_return_conditional_losses_8735016

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

?
F__inference_conv2d_10_layer_call_and_return_conditional_losses_8734987

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
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_8735119

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
?
h
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_8732976

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
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_8735239

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


F__inference_conv2d_14_layer_call_and_return_conditional_losses_8735104

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
خ
 
+__inference_conv2d_11_layer_call_fn_8735006

inputs!
unknown: @
	unknown_0:@
identity?StatefulPartitionedCall
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_87330772
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
و
?
%__inference_signature_wrapper_8734409
input_3!
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
identity?StatefulPartitionedCallر
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_87329442
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
M
1__inference_up_sampling2d_3_layer_call_fn_8733020

inputs
identityِ
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
GPU2*0J 8 *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_87330142
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

c
D__inference_dropout_layer_call_and_return_conditional_losses_8735131

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
?


F__inference_conv2d_13_layer_call_and_return_conditional_losses_8735074

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
G
،

#__inference__traced_restore_8735427
file_prefix;
!assignvariableop_conv2d_10_kernel: /
!assignvariableop_1_conv2d_10_bias: =
#assignvariableop_2_conv2d_11_kernel: @/
!assignvariableop_3_conv2d_11_bias:@>
#assignvariableop_4_conv2d_12_kernel:@0
!assignvariableop_5_conv2d_12_bias:	?
#assignvariableop_6_conv2d_13_kernel:0
!assignvariableop_7_conv2d_13_bias:	?
#assignvariableop_8_conv2d_14_kernel:0
!assignvariableop_9_conv2d_14_bias:	?
$assignvariableop_10_conv2d_15_kernel:@0
"assignvariableop_11_conv2d_15_bias:@?
$assignvariableop_12_conv2d_16_kernel: 0
"assignvariableop_13_conv2d_16_bias: >
$assignvariableop_14_conv2d_17_kernel:@0
"assignvariableop_15_conv2d_17_bias:
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
Identity_10،
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
Identity_12،
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
Identity_14،
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
_user_specified_namefile_prefix"جL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default،
E
input_3:
serving_default_input_3:0?????????G
	conv2d_17:
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
¤
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
+?&call_and_return_all_conditional_losses"آ
_tf_keras_network?{"name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_8", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_12", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_12", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_6", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_6", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_6", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_6", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.stop_gradient_6", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_13", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_13", "inbound_nodes": [["tf.math.squared_difference_6", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_12", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_12", "inbound_nodes": [["tf.math.reduce_mean_13", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_6", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_6", "inbound_nodes": [["tf.__operators__.add_12", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_18", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_18", "inbound_nodes": [["tf.math.rsqrt_6", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_20", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_20", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"y": ["tf.math.multiply_18", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_12", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_12", "inbound_nodes": [["tf.math.multiply_18", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_6", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_6", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_20", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_19", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_19", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.cast_12", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_13", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_13", "inbound_nodes": [["tf.math.subtract_6", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_13", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_13", "inbound_nodes": [["tf.math.multiply_19", 0, 0, {"y": ["tf.cast_13", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["tf.__operators__.add_13", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_9", "inbound_nodes": [[["conv2d_11", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_14", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_14", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_7", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_7", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_7", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.stop_gradient_7", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_15", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_15", "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_14", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_14", "inbound_nodes": [["tf.math.reduce_mean_15", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_7", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_7", "inbound_nodes": [["tf.__operators__.add_14", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_21", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_21", "inbound_nodes": [["tf.math.rsqrt_7", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_23", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_23", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"y": ["tf.math.multiply_21", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_14", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_14", "inbound_nodes": [["tf.math.multiply_21", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_7", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_23", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_22", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_22", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.cast_14", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_15", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_15", "inbound_nodes": [["tf.math.subtract_7", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_15", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_15", "inbound_nodes": [["tf.math.multiply_22", 0, 0, {"y": ["tf.cast_15", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["tf.__operators__.add_15", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_10", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_16", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_16", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_8", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_8", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_8", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_8", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.stop_gradient_8", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_17", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_17", "inbound_nodes": [["tf.math.squared_difference_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_16", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_16", "inbound_nodes": [["tf.math.reduce_mean_17", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_8", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_8", "inbound_nodes": [["tf.__operators__.add_16", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_24", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_24", "inbound_nodes": [["tf.math.rsqrt_8", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_26", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_26", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"y": ["tf.math.multiply_24", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_16", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_16", "inbound_nodes": [["tf.math.multiply_24", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_8", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_8", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_26", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_25", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_25", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.cast_16", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_17", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_17", "inbound_nodes": [["tf.math.subtract_8", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_17", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_17", "inbound_nodes": [["tf.math.multiply_25", 0, 0, {"y": ["tf.cast_17", 0, 0], "name": null}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["tf.__operators__.add_17", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_11", "inbound_nodes": [[["conv2d_13", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_18", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_18", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_9", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_9", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_9", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_9", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.stop_gradient_9", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_19", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_19", "inbound_nodes": [["tf.math.squared_difference_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_18", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_18", "inbound_nodes": [["tf.math.reduce_mean_19", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_9", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_9", "inbound_nodes": [["tf.__operators__.add_18", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_27", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_27", "inbound_nodes": [["tf.math.rsqrt_9", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_29", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_29", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"y": ["tf.math.multiply_27", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_18", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_18", "inbound_nodes": [["tf.math.multiply_27", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_9", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_9", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_29", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_28", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_28", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.cast_18", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_19", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_19", "inbound_nodes": [["tf.math.subtract_9", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_19", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_19", "inbound_nodes": [["tf.math.multiply_28", 0, 0, {"y": ["tf.cast_19", 0, 0], "name": null}]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d", "inbound_nodes": [[["tf.__operators__.add_19", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["up_sampling2d", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_20", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_20", "inbound_nodes": [["dropout", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_10", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_10", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_10", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_10", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.stop_gradient_10", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_21", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_21", "inbound_nodes": [["tf.math.squared_difference_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_20", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_20", "inbound_nodes": [["tf.math.reduce_mean_21", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_10", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_10", "inbound_nodes": [["tf.__operators__.add_20", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_30", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_30", "inbound_nodes": [["tf.math.rsqrt_10", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_32", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_32", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"y": ["tf.math.multiply_30", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_20", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_20", "inbound_nodes": [["tf.math.multiply_30", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_10", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_10", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_32", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_31", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_31", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.cast_20", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_21", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_21", "inbound_nodes": [["tf.math.subtract_10", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_21", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_21", "inbound_nodes": [["tf.math.multiply_31", 0, 0, {"y": ["tf.cast_21", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["tf.__operators__.add_21", 0, 0, {}], ["tf.__operators__.add_17", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_22", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_22", "inbound_nodes": [["dropout_1", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_11", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_11", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_11", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_11", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.stop_gradient_11", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_23", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_23", "inbound_nodes": [["tf.math.squared_difference_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_22", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_22", "inbound_nodes": [["tf.math.reduce_mean_23", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_11", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_11", "inbound_nodes": [["tf.__operators__.add_22", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_33", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_33", "inbound_nodes": [["tf.math.rsqrt_11", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_35", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_35", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"y": ["tf.math.multiply_33", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_22", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_22", "inbound_nodes": [["tf.math.multiply_33", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_11", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_11", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_35", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_34", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_34", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.cast_22", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_23", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_23", "inbound_nodes": [["tf.math.subtract_11", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_23", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_23", "inbound_nodes": [["tf.math.multiply_34", 0, 0, {"y": ["tf.cast_23", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["tf.__operators__.add_23", 0, 0, {}], ["tf.__operators__.add_15", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["conv2d_16", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_24", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_24", "inbound_nodes": [["dropout_2", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_12", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_12", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_12", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_12", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.stop_gradient_12", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_25", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_25", "inbound_nodes": [["tf.math.squared_difference_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_24", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_24", "inbound_nodes": [["tf.math.reduce_mean_25", 0, 0, {"y": 0.001, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_12", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_12", "inbound_nodes": [["tf.__operators__.add_24", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_36", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_36", "inbound_nodes": [["tf.math.rsqrt_12", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_38", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_38", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"y": ["tf.math.multiply_36", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_24", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_24", "inbound_nodes": [["tf.math.multiply_36", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_12", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_12", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_38", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_37", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_37", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.cast_24", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_25", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_25", "inbound_nodes": [["tf.math.subtract_12", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_25", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_25", "inbound_nodes": [["tf.math.multiply_37", 0, 0, {"y": ["tf.cast_25", 0, 0], "name": null}]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["tf.__operators__.add_25", 0, 0, {}], ["tf.__operators__.add_13", 0, 0, {}]]]}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_3", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["conv2d_17", 0, 0]]}, "shared_object_id": 130, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "input_3"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_8", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_12", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_12", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_6", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_6", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"name": null}]], "shared_object_id": 6}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_6", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_6", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.stop_gradient_6", 0, 0], "name": null}]], "shared_object_id": 7}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_13", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_13", "inbound_nodes": [["tf.math.squared_difference_6", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_12", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_12", "inbound_nodes": [["tf.math.reduce_mean_13", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_6", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_6", "inbound_nodes": [["tf.__operators__.add_12", 0, 0, {}]], "shared_object_id": 10}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_18", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_18", "inbound_nodes": [["tf.math.rsqrt_6", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_20", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_20", "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"y": ["tf.math.multiply_18", 0, 0], "name": null}]], "shared_object_id": 12}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_12", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_12", "inbound_nodes": [["tf.math.multiply_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_6", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_6", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_20", 0, 0], "name": null}]], "shared_object_id": 14}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_19", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_19", "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.cast_12", 0, 0], "name": null}]], "shared_object_id": 15}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_13", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_13", "inbound_nodes": [["tf.math.subtract_6", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_13", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_13", "inbound_nodes": [["tf.math.multiply_19", 0, 0, {"y": ["tf.cast_13", 0, 0], "name": null}]], "shared_object_id": 17}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_9", "inbound_nodes": [[["conv2d_11", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_14", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_14", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_7", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_7", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"name": null}]], "shared_object_id": 23}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_7", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.stop_gradient_7", 0, 0], "name": null}]], "shared_object_id": 24}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_15", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_15", "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_14", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_14", "inbound_nodes": [["tf.math.reduce_mean_15", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_7", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_7", "inbound_nodes": [["tf.__operators__.add_14", 0, 0, {}]], "shared_object_id": 27}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_21", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_21", "inbound_nodes": [["tf.math.rsqrt_7", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_23", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_23", "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"y": ["tf.math.multiply_21", 0, 0], "name": null}]], "shared_object_id": 29}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_14", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_14", "inbound_nodes": [["tf.math.multiply_21", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_7", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_23", 0, 0], "name": null}]], "shared_object_id": 31}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_22", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_22", "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.cast_14", 0, 0], "name": null}]], "shared_object_id": 32}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_15", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_15", "inbound_nodes": [["tf.math.subtract_7", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_15", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_15", "inbound_nodes": [["tf.math.multiply_22", 0, 0, {"y": ["tf.cast_15", 0, 0], "name": null}]], "shared_object_id": 34}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_10", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]], "shared_object_id": 38}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_16", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_16", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_8", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_8", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"name": null}]], "shared_object_id": 40}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_8", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_8", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.stop_gradient_8", 0, 0], "name": null}]], "shared_object_id": 41}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_17", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_17", "inbound_nodes": [["tf.math.squared_difference_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_16", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_16", "inbound_nodes": [["tf.math.reduce_mean_17", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_8", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_8", "inbound_nodes": [["tf.__operators__.add_16", 0, 0, {}]], "shared_object_id": 44}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_24", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_24", "inbound_nodes": [["tf.math.rsqrt_8", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_26", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_26", "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"y": ["tf.math.multiply_24", 0, 0], "name": null}]], "shared_object_id": 46}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_16", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_16", "inbound_nodes": [["tf.math.multiply_24", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_8", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_8", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_26", 0, 0], "name": null}]], "shared_object_id": 48}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_25", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_25", "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.cast_16", 0, 0], "name": null}]], "shared_object_id": 49}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_17", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_17", "inbound_nodes": [["tf.math.subtract_8", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_17", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_17", "inbound_nodes": [["tf.math.multiply_25", 0, 0, {"y": ["tf.cast_17", 0, 0], "name": null}]], "shared_object_id": 51}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 54}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "name": "leaky_re_lu_11", "inbound_nodes": [[["conv2d_13", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_18", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_18", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_9", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_9", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"name": null}]], "shared_object_id": 57}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_9", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_9", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.stop_gradient_9", 0, 0], "name": null}]], "shared_object_id": 58}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_19", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_19", "inbound_nodes": [["tf.math.squared_difference_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_18", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_18", "inbound_nodes": [["tf.math.reduce_mean_19", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_9", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_9", "inbound_nodes": [["tf.__operators__.add_18", 0, 0, {}]], "shared_object_id": 61}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_27", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_27", "inbound_nodes": [["tf.math.rsqrt_9", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_29", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_29", "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"y": ["tf.math.multiply_27", 0, 0], "name": null}]], "shared_object_id": 63}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_18", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_18", "inbound_nodes": [["tf.math.multiply_27", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_9", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_9", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_29", 0, 0], "name": null}]], "shared_object_id": 65}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_28", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_28", "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.cast_18", 0, 0], "name": null}]], "shared_object_id": 66}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_19", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_19", "inbound_nodes": [["tf.math.subtract_9", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_19", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_19", "inbound_nodes": [["tf.math.multiply_28", 0, 0, {"y": ["tf.cast_19", 0, 0], "name": null}]], "shared_object_id": 68}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d", "inbound_nodes": [[["tf.__operators__.add_19", 0, 0, {}]]], "shared_object_id": 69}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["up_sampling2d", 0, 0, {}]]], "shared_object_id": 72}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 73}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_20", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_20", "inbound_nodes": [["dropout", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_10", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_10", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"name": null}]], "shared_object_id": 75}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_10", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_10", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.stop_gradient_10", 0, 0], "name": null}]], "shared_object_id": 76}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_21", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_21", "inbound_nodes": [["tf.math.squared_difference_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_20", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_20", "inbound_nodes": [["tf.math.reduce_mean_21", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_10", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_10", "inbound_nodes": [["tf.__operators__.add_20", 0, 0, {}]], "shared_object_id": 79}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_30", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_30", "inbound_nodes": [["tf.math.rsqrt_10", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_32", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_32", "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"y": ["tf.math.multiply_30", 0, 0], "name": null}]], "shared_object_id": 81}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_20", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_20", "inbound_nodes": [["tf.math.multiply_30", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_10", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_10", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_32", 0, 0], "name": null}]], "shared_object_id": 83}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_31", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_31", "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.cast_20", 0, 0], "name": null}]], "shared_object_id": 84}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_21", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_21", "inbound_nodes": [["tf.math.subtract_10", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_21", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_21", "inbound_nodes": [["tf.math.multiply_31", 0, 0, {"y": ["tf.cast_21", 0, 0], "name": null}]], "shared_object_id": 86}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["tf.__operators__.add_21", 0, 0, {}], ["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 87}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_1", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 88}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}]]], "shared_object_id": 91}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 92}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_22", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_22", "inbound_nodes": [["dropout_1", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_11", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_11", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"name": null}]], "shared_object_id": 94}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_11", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_11", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.stop_gradient_11", 0, 0], "name": null}]], "shared_object_id": 95}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_23", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_23", "inbound_nodes": [["tf.math.squared_difference_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_22", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_22", "inbound_nodes": [["tf.math.reduce_mean_23", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_11", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_11", "inbound_nodes": [["tf.__operators__.add_22", 0, 0, {}]], "shared_object_id": 98}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_33", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_33", "inbound_nodes": [["tf.math.rsqrt_11", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_35", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_35", "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"y": ["tf.math.multiply_33", 0, 0], "name": null}]], "shared_object_id": 100}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_22", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_22", "inbound_nodes": [["tf.math.multiply_33", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_11", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_11", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_35", 0, 0], "name": null}]], "shared_object_id": 102}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_34", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_34", "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.cast_22", 0, 0], "name": null}]], "shared_object_id": 103}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_23", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_23", "inbound_nodes": [["tf.math.subtract_11", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_23", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_23", "inbound_nodes": [["tf.math.multiply_34", 0, 0, {"y": ["tf.cast_23", 0, 0], "name": null}]], "shared_object_id": 105}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["tf.__operators__.add_23", 0, 0, {}], ["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 106}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 107}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]], "shared_object_id": 110}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["conv2d_16", 0, 0, {}]]], "shared_object_id": 111}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_24", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_24", "inbound_nodes": [["dropout_2", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}, {"class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_12", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "name": "tf.stop_gradient_12", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"name": null}]], "shared_object_id": 113}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_12", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "name": "tf.math.squared_difference_12", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.stop_gradient_12", 0, 0], "name": null}]], "shared_object_id": 114}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_25", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_25", "inbound_nodes": [["tf.math.squared_difference_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_24", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_24", "inbound_nodes": [["tf.math.reduce_mean_25", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_12", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "name": "tf.math.rsqrt_12", "inbound_nodes": [["tf.__operators__.add_24", 0, 0, {}]], "shared_object_id": 117}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_36", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_36", "inbound_nodes": [["tf.math.rsqrt_12", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_38", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_38", "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"y": ["tf.math.multiply_36", 0, 0], "name": null}]], "shared_object_id": 119}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_24", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_24", "inbound_nodes": [["tf.math.multiply_36", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_12", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_12", "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_38", 0, 0], "name": null}]], "shared_object_id": 121}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_37", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_37", "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.cast_24", 0, 0], "name": null}]], "shared_object_id": 122}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_25", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_25", "inbound_nodes": [["tf.math.subtract_12", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_25", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_25", "inbound_nodes": [["tf.math.multiply_37", 0, 0, {"y": ["tf.cast_25", 0, 0], "name": null}]], "shared_object_id": 124}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["tf.__operators__.add_25", 0, 0, {}], ["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 125}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "name": "up_sampling2d_3", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 126}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]], "shared_object_id": 129}], "input_layers": [["input_3", 0, 0]], "output_layers": [["conv2d_17", 0, 0]]}}}
?"?
_tf_keras_input_layerغ{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}


xkernel
ybias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layerء	{"name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 132}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
?
~	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 4}
ٍ
	keras_api"غ
_tf_keras_layer?{"name": "tf.math.reduce_mean_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_12", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 5}
ا
	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_6", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"name": null}]], "shared_object_id": 6}
?
	keras_api"ٌ
_tf_keras_layerز{"name": "tf.math.squared_difference_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_6", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.stop_gradient_6", 0, 0], "name": null}]], "shared_object_id": 7}

	keras_api"ٍ
_tf_keras_layerس{"name": "tf.math.reduce_mean_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_13", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_6", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 8}
ف
	keras_api"خ
_tf_keras_layer?{"name": "tf.__operators__.add_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_12", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_13", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 9}
?
	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_6", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_12", 0, 0, {}]], "shared_object_id": 10}
ِ
	keras_api"?
_tf_keras_layerأ{"name": "tf.math.multiply_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_18", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_6", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 11}
َ
	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_20", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_12", 0, 0, {"y": ["tf.math.multiply_18", 0, 0], "name": null}]], "shared_object_id": 12}
?
	keras_api"
_tf_keras_layer{"name": "tf.cast_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_12", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_18", 0, 0, {"dtype": "float32"}]], "shared_object_id": 13}

	keras_api"?
_tf_keras_layer?{"name": "tf.math.subtract_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_6", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_20", 0, 0], "name": null}]], "shared_object_id": 14}
?
	keras_api"ة
_tf_keras_layer?{"name": "tf.math.multiply_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_19", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_8", 0, 0, {"y": ["tf.cast_12", 0, 0], "name": null}]], "shared_object_id": 15}
?
	keras_api"
_tf_keras_layer{"name": "tf.cast_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_13", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_6", 0, 0, {"dtype": "float32"}]], "shared_object_id": 16}
َ
	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_13", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_19", 0, 0, {"y": ["tf.cast_13", 0, 0], "name": null}]], "shared_object_id": 17}

kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"ِ	
_tf_keras_layerض	{"name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 133}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 32]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_11", 0, 0, {}]]], "shared_object_id": 21}
َ
	keras_api"?
_tf_keras_layerء{"name": "tf.math.reduce_mean_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_14", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 22}
ب
	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_7", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"name": null}]], "shared_object_id": 23}

	keras_api"ٍ
_tf_keras_layerس{"name": "tf.math.squared_difference_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_7", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.stop_gradient_7", 0, 0], "name": null}]], "shared_object_id": 24}

	keras_api"َ
_tf_keras_layerش{"name": "tf.math.reduce_mean_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_15", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_7", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 25}
ق
	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_14", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_15", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 26}
?
	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_7", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_14", 0, 0, {}]], "shared_object_id": 27}

	keras_api"?
_tf_keras_layerك{"name": "tf.math.multiply_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_21", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_7", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 28}
َ
 	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_23", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_14", 0, 0, {"y": ["tf.math.multiply_21", 0, 0], "name": null}]], "shared_object_id": 29}
?
?	keras_api"
_tf_keras_layer{"name": "tf.cast_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_14", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_21", 0, 0, {"dtype": "float32"}]], "shared_object_id": 30}
?
?	keras_api"
_tf_keras_layer?{"name": "tf.math.subtract_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_23", 0, 0], "name": null}]], "shared_object_id": 31}
?
?	keras_api"ة
_tf_keras_layer?{"name": "tf.math.multiply_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_22", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_9", 0, 0, {"y": ["tf.cast_14", 0, 0], "name": null}]], "shared_object_id": 32}
?
¤	keras_api"
_tf_keras_layer{"name": "tf.cast_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_15", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_7", 0, 0, {"dtype": "float32"}]], "shared_object_id": 33}
َ
?	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_15", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_22", 0, 0, {"y": ["tf.cast_15", 0, 0], "name": null}]], "shared_object_id": 34}

?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"ُ	
_tf_keras_layerص	{"name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 134}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
،
،	variables
­trainable_variables
?regularization_losses
?	keras_api
؛__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_12", 0, 0, {}]]], "shared_object_id": 38}
ُ
?	keras_api"?
_tf_keras_layerآ{"name": "tf.math.reduce_mean_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_16", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 39}
ب
?	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_8", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"name": null}]], "shared_object_id": 40}

?	keras_api"َ
_tf_keras_layerش{"name": "tf.math.squared_difference_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_8", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.stop_gradient_8", 0, 0], "name": null}]], "shared_object_id": 41}

?	keras_api"َ
_tf_keras_layerش{"name": "tf.math.reduce_mean_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_17", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_8", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 42}
ق
?	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_16", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_17", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 43}
?
?	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_8", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_16", 0, 0, {}]], "shared_object_id": 44}
ذ
?	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_24", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_8", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 45}
َ
?	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_26", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_16", 0, 0, {"y": ["tf.math.multiply_24", 0, 0], "name": null}]], "shared_object_id": 46}
?
?	keras_api"
_tf_keras_layer{"name": "tf.cast_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_16", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_24", 0, 0, {"dtype": "float32"}]], "shared_object_id": 47}
ً
?	keras_api"ظ
_tf_keras_layer?{"name": "tf.math.subtract_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_8", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_26", 0, 0], "name": null}]], "shared_object_id": 48}
?
?	keras_api"ت
_tf_keras_layer?{"name": "tf.math.multiply_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_25", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_10", 0, 0, {"y": ["tf.cast_16", 0, 0], "name": null}]], "shared_object_id": 49}
?
؛	keras_api"
_tf_keras_layer{"name": "tf.cast_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_17", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_8", 0, 0, {"dtype": "float32"}]], "shared_object_id": 50}
َ
?	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_17", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_25", 0, 0, {"y": ["tf.cast_17", 0, 0], "name": null}]], "shared_object_id": 51}

?kernel
	?bias
؟	variables
?trainable_variables
ءregularization_losses
آ	keras_api
?__call__
+?&call_and_return_all_conditional_losses"ّ	
_tf_keras_layerط	{"name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 52}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 135}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
،
أ	variables
ؤtrainable_variables
إregularization_losses
ئ	keras_api
؟__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "leaky_re_lu_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "inbound_nodes": [[["conv2d_13", 0, 0, {}]]], "shared_object_id": 55}
ُ
ا	keras_api"?
_tf_keras_layerآ{"name": "tf.math.reduce_mean_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_18", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 56}
ب
ب	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_9", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"name": null}]], "shared_object_id": 57}

ة	keras_api"َ
_tf_keras_layerش{"name": "tf.math.squared_difference_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_9", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.stop_gradient_9", 0, 0], "name": null}]], "shared_object_id": 58}

ت	keras_api"َ
_tf_keras_layerش{"name": "tf.math.reduce_mean_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_19", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_9", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 59}
ق
ث	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_18", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_19", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 60}
?
ج	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_9", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_18", 0, 0, {}]], "shared_object_id": 61}
ذ
ح	keras_api"?
_tf_keras_layer?{"name": "tf.math.multiply_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_27", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_9", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 62}
َ
خ	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_29", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_18", 0, 0, {"y": ["tf.math.multiply_27", 0, 0], "name": null}]], "shared_object_id": 63}
?
د	keras_api"
_tf_keras_layer{"name": "tf.cast_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_18", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_27", 0, 0, {"dtype": "float32"}]], "shared_object_id": 64}
ً
ذ	keras_api"ظ
_tf_keras_layer?{"name": "tf.math.subtract_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_9", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_29", 0, 0], "name": null}]], "shared_object_id": 65}
?
ر	keras_api"ت
_tf_keras_layer?{"name": "tf.math.multiply_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_28", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["leaky_re_lu_11", 0, 0, {"y": ["tf.cast_18", 0, 0], "name": null}]], "shared_object_id": 66}
?
ز	keras_api"
_tf_keras_layer{"name": "tf.cast_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_19", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_9", 0, 0, {"dtype": "float32"}]], "shared_object_id": 67}
َ
س	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_19", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_28", 0, 0, {"y": ["tf.cast_19", 0, 0], "name": null}]], "shared_object_id": 68}
?
ش	variables
صtrainable_variables
ضregularization_losses
ط	keras_api
ء__call__
+آ&call_and_return_all_conditional_losses"?
_tf_keras_layer{"name": "up_sampling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["tf.__operators__.add_19", 0, 0, {}]]], "shared_object_id": 69, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 136}}

ظkernel
	عbias
غ	variables
?trainable_variables
?regularization_losses
?	keras_api
أ__call__
+ؤ&call_and_return_all_conditional_losses"م	
_tf_keras_layerث	{"name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d", 0, 0, {}]]], "shared_object_id": 72, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 137}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 256]}}
­
?	variables
?trainable_variables
ـregularization_losses
ف	keras_api
إ__call__
+ئ&call_and_return_all_conditional_losses"
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 73}
و
ق	keras_api"ص
_tf_keras_layer؛{"name": "tf.math.reduce_mean_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_20", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 74}
ت
ك	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_10", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"name": null}]], "shared_object_id": 75}
?
ل	keras_api"ي
_tf_keras_layerذ{"name": "tf.math.squared_difference_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_10", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.stop_gradient_10", 0, 0], "name": null}]], "shared_object_id": 76}

م	keras_api"ُ
_tf_keras_layerص{"name": "tf.math.reduce_mean_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_21", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_10", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 77}
ق
ن	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_20", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_21", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 78}
?
ه	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_10", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_20", 0, 0, {}]], "shared_object_id": 79}
ر
و	keras_api"?
_tf_keras_layer¤{"name": "tf.math.multiply_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_30", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_10", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 80}
َ
ى	keras_api"?
_tf_keras_layerء{"name": "tf.math.multiply_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_32", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_20", 0, 0, {"y": ["tf.math.multiply_30", 0, 0], "name": null}]], "shared_object_id": 81}
?
ي	keras_api"
_tf_keras_layer{"name": "tf.cast_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_20", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_30", 0, 0, {"dtype": "float32"}]], "shared_object_id": 82}
ٍ
ً	keras_api"غ
_tf_keras_layer?{"name": "tf.math.subtract_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_10", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_32", 0, 0], "name": null}]], "shared_object_id": 83}
ض
ٌ	keras_api"أ
_tf_keras_layer?{"name": "tf.math.multiply_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_31", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout", 0, 0, {"y": ["tf.cast_20", 0, 0], "name": null}]], "shared_object_id": 84}
?
ٍ	keras_api"
_tf_keras_layer{"name": "tf.cast_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_21", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_10", 0, 0, {"dtype": "float32"}]], "shared_object_id": 85}
َ
َ	keras_api"?
_tf_keras_layerء{"name": "tf.__operators__.add_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_21", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_31", 0, 0, {"y": ["tf.cast_21", 0, 0], "name": null}]], "shared_object_id": 86}
?
ُ	variables
ِtrainable_variables
ّregularization_losses
ْ	keras_api
ا__call__
+ب&call_and_return_all_conditional_losses"ا
_tf_keras_layer­{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_21", 0, 0, {}], ["tf.__operators__.add_17", 0, 0, {}]]], "shared_object_id": 87, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 128]}, {"class_name": "TensorShape", "items": [null, 32, 32, 128]}]}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
ة__call__
+ت&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "up_sampling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 88, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 138}}

?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
ث__call__
+ج&call_and_return_all_conditional_losses"ن	
_tf_keras_layerج	{"name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 89}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 90}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_1", 0, 0, {}]]], "shared_object_id": 91, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 139}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}}
?
?	variables
?trainable_variables
?regularization_losses
	keras_api
ح__call__
+خ&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 92}
ي
	keras_api"ط
_tf_keras_layer?{"name": "tf.math.reduce_mean_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_22", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_1", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 93}
ت
	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_11", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"name": null}]], "shared_object_id": 94}
?
	keras_api"ٌ
_tf_keras_layerز{"name": "tf.math.squared_difference_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_11", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.stop_gradient_11", 0, 0], "name": null}]], "shared_object_id": 95}

	keras_api"ُ
_tf_keras_layerص{"name": "tf.math.reduce_mean_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_23", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_11", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 96}
ق
	keras_api"د
_tf_keras_layer?{"name": "tf.__operators__.add_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_22", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_23", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 97}
?
	keras_api"?
_tf_keras_layer{"name": "tf.math.rsqrt_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_11", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_22", 0, 0, {}]], "shared_object_id": 98}

	keras_api"?
_tf_keras_layerل{"name": "tf.math.multiply_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_33", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_11", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 99}
ُ
	keras_api"?
_tf_keras_layerآ{"name": "tf.math.multiply_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_35", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_22", 0, 0, {"y": ["tf.math.multiply_33", 0, 0], "name": null}]], "shared_object_id": 100}
?
	keras_api" 
_tf_keras_layer{"name": "tf.cast_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_22", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_33", 0, 0, {"dtype": "float32"}]], "shared_object_id": 101}
?
	keras_api"
_tf_keras_layer{"name": "tf.math.subtract_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_11", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_35", 0, 0], "name": null}]], "shared_object_id": 102}
ع
	keras_api"ئ
_tf_keras_layer،{"name": "tf.math.multiply_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_34", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_1", 0, 0, {"y": ["tf.cast_22", 0, 0], "name": null}]], "shared_object_id": 103}
?
	keras_api" 
_tf_keras_layer{"name": "tf.cast_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_23", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_11", 0, 0, {"dtype": "float32"}]], "shared_object_id": 104}
ُ
	keras_api"?
_tf_keras_layerآ{"name": "tf.__operators__.add_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_23", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_34", 0, 0, {"y": ["tf.cast_23", 0, 0], "name": null}]], "shared_object_id": 105}
?
	variables
trainable_variables
regularization_losses
	keras_api
د__call__
+ذ&call_and_return_all_conditional_losses"ت
_tf_keras_layer?{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_23", 0, 0, {}], ["tf.__operators__.add_15", 0, 0, {}]]], "shared_object_id": 106, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 64, 64, 64]}, {"class_name": "TensorShape", "items": [null, 64, 64, 64]}]}
?
	variables
trainable_variables
regularization_losses
	keras_api
ر__call__
+ز&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "up_sampling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 107, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 140}}

kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
س__call__
+ش&call_and_return_all_conditional_losses"ً	
_tf_keras_layerر	{"name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 108}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 109}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_2", 0, 0, {}]]], "shared_object_id": 110, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 141}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 128]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
ص__call__
+ض&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_16", 0, 0, {}]]], "shared_object_id": 111}
ً
 	keras_api"ظ
_tf_keras_layer?{"name": "tf.math.reduce_mean_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_24", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["dropout_2", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "mean"}]], "shared_object_id": 112}
ث
?	keras_api"?
_tf_keras_layer{"name": "tf.stop_gradient_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.stop_gradient_12", "trainable": true, "dtype": "float32", "function": "stop_gradient"}, "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"name": null}]], "shared_object_id": 113}

?	keras_api"ٍ
_tf_keras_layerس{"name": "tf.math.squared_difference_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.squared_difference_12", "trainable": true, "dtype": "float32", "function": "math.squared_difference"}, "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.stop_gradient_12", 0, 0], "name": null}]], "shared_object_id": 114}

?	keras_api"ِ
_tf_keras_layerض{"name": "tf.math.reduce_mean_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_25", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["tf.math.squared_difference_12", 0, 0, {"axis": [1, 2], "keepdims": true, "name": "variance"}]], "shared_object_id": 115}
ك
¤	keras_api"ذ
_tf_keras_layer?{"name": "tf.__operators__.add_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_24", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.reduce_mean_25", 0, 0, {"y": 0.001, "name": null}]], "shared_object_id": 116}
?
?	keras_api"¤
_tf_keras_layer{"name": "tf.math.rsqrt_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.rsqrt_12", "trainable": true, "dtype": "float32", "function": "math.rsqrt"}, "inbound_nodes": [["tf.__operators__.add_24", 0, 0, {}]], "shared_object_id": 117}
ْ
?	keras_api"?
_tf_keras_layerإ{"name": "tf.math.multiply_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_36", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.rsqrt_12", 0, 0, {"y": [[[[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]]]], "name": null}]], "shared_object_id": 118}
ُ
?	keras_api"?
_tf_keras_layerآ{"name": "tf.math.multiply_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_38", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["tf.math.reduce_mean_24", 0, 0, {"y": ["tf.math.multiply_36", 0, 0], "name": null}]], "shared_object_id": 119}
?
?	keras_api" 
_tf_keras_layer{"name": "tf.cast_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_24", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.multiply_36", 0, 0, {"dtype": "float32"}]], "shared_object_id": 120}

?	keras_api"?
_tf_keras_layerف{"name": "tf.math.subtract_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_12", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["_CONSTANT_VALUE", -1, [[[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]]], {"y": ["tf.math.multiply_38", 0, 0], "name": null}]], "shared_object_id": 121}
ع
?	keras_api"ئ
_tf_keras_layer،{"name": "tf.math.multiply_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_37", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["dropout_2", 0, 0, {"y": ["tf.cast_24", 0, 0], "name": null}]], "shared_object_id": 122}
?
?	keras_api" 
_tf_keras_layer{"name": "tf.cast_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.cast_25", "trainable": true, "dtype": "float32", "function": "cast"}, "inbound_nodes": [["tf.math.subtract_12", 0, 0, {"dtype": "float32"}]], "shared_object_id": 123}
ُ
،	keras_api"?
_tf_keras_layerآ{"name": "tf.__operators__.add_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_25", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["tf.math.multiply_37", 0, 0, {"y": ["tf.cast_25", 0, 0], "name": null}]], "shared_object_id": 124}
ك
­	variables
?trainable_variables
?regularization_losses
?	keras_api
ط__call__
+ظ&call_and_return_all_conditional_losses"خ
_tf_keras_layer?{"name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["tf.__operators__.add_25", 0, 0, {}], ["tf.__operators__.add_13", 0, 0, {}]]], "shared_object_id": 125, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 128, 32]}, {"class_name": "TensorShape", "items": [null, 128, 128, 32]}]}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
ع__call__
+غ&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "up_sampling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 126, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 142}}

?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"و	
_tf_keras_layerخ	{"name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 127}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 128}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["up_sampling2d_3", 0, 0, {}]]], "shared_object_id": 129, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 143}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 64]}}
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
?layer_metrics
?layers
?metrics
s	variables
؟non_trainable_variables
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
ءlayer_metrics
آlayers
أmetrics
z	variables
ؤnon_trainable_variables
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
 إlayer_regularization_losses
ئlayer_metrics
اlayers
بmetrics
~	variables
ةnon_trainable_variables
trainable_variables
regularization_losses
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
ثlayer_metrics
جlayers
حmetrics
	variables
خnon_trainable_variables
trainable_variables
regularization_losses
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
ذlayer_metrics
رlayers
زmetrics
	variables
سnon_trainable_variables
trainable_variables
regularization_losses
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
+:)@2conv2d_12/kernel
:2conv2d_12/bias
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
صlayer_metrics
ضlayers
طmetrics
?	variables
ظnon_trainable_variables
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
 عlayer_regularization_losses
غlayer_metrics
?layers
?metrics
،	variables
?non_trainable_variables
­trainable_variables
?regularization_losses
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
,:*2conv2d_13/kernel
:2conv2d_13/bias
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
ـlayers
فmetrics
؟	variables
قnon_trainable_variables
?trainable_variables
ءregularization_losses
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
لlayer_metrics
مlayers
نmetrics
أ	variables
هnon_trainable_variables
ؤtrainable_variables
إregularization_losses
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
ىlayer_metrics
يlayers
ًmetrics
ش	variables
ٌnon_trainable_variables
صtrainable_variables
ضregularization_losses
ء__call__
+آ&call_and_return_all_conditional_losses
'آ"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_14/kernel
:2conv2d_14/bias
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
َlayer_metrics
ُlayers
ِmetrics
غ	variables
ّnon_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
ـregularization_losses
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
?layer_metrics
?layers
?metrics
ُ	variables
?non_trainable_variables
ِtrainable_variables
ّregularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
non_trainable_variables
?trainable_variables
?regularization_losses
ة__call__
+ت&call_and_return_all_conditional_losses
'ت"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_15/kernel
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
 layer_regularization_losses
layer_metrics
layers
metrics
?	variables
non_trainable_variables
?trainable_variables
?regularization_losses
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
layer_metrics
layers
metrics
?	variables
non_trainable_variables
?trainable_variables
?regularization_losses
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
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
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
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
ر__call__
+ز&call_and_return_all_conditional_losses
'ز"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_16/kernel
: 2conv2d_16/bias
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
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
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
layer_metrics
layers
metrics
	variables
non_trainable_variables
trainable_variables
regularization_losses
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
 layer_metrics
?layers
?metrics
­	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
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
?layer_metrics
?layers
?metrics
?	variables
?non_trainable_variables
?trainable_variables
?regularization_losses
ع__call__
+غ&call_and_return_all_conditional_losses
'غ"call_and_return_conditional_losses"
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
?layer_metrics
?layers
،metrics
?	variables
­non_trainable_variables
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
ي2ه
"__inference__wrapped_model_8732944?
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
input_3?????????
ْ2ُ
)__inference_model_2_layer_call_fn_8733422
)__inference_model_2_layer_call_fn_8734474
)__inference_model_2_layer_call_fn_8734539
)__inference_model_2_layer_call_fn_8733988?
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
?2?
D__inference_model_2_layer_call_and_return_conditional_losses_8734743
D__inference_model_2_layer_call_and_return_conditional_losses_8734968
D__inference_model_2_layer_call_and_return_conditional_losses_8734165
D__inference_model_2_layer_call_and_return_conditional_losses_8734342?
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
ص2ز
+__inference_conv2d_10_layer_call_fn_8734977?
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
ِ2ٍ
F__inference_conv2d_10_layer_call_and_return_conditional_losses_8734987?
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
ع2ض
/__inference_leaky_re_lu_8_layer_call_fn_8734992?
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
?2ّ
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_8734997?
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
ص2ز
+__inference_conv2d_11_layer_call_fn_8735006?
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
ِ2ٍ
F__inference_conv2d_11_layer_call_and_return_conditional_losses_8735016?
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
ع2ض
/__inference_leaky_re_lu_9_layer_call_fn_8735021?
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
?2ّ
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8735026?
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
ص2ز
+__inference_conv2d_12_layer_call_fn_8735035?
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
ِ2ٍ
F__inference_conv2d_12_layer_call_and_return_conditional_losses_8735045?
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
غ2ط
0__inference_leaky_re_lu_10_layer_call_fn_8735050?
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
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8735055?
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
ص2ز
+__inference_conv2d_13_layer_call_fn_8735064?
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
ِ2ٍ
F__inference_conv2d_13_layer_call_and_return_conditional_losses_8735074?
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
غ2ط
0__inference_leaky_re_lu_11_layer_call_fn_8735079?
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
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_8735084?
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
2
/__inference_up_sampling2d_layer_call_fn_8732963ـ
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
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_8732957ـ
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
ص2ز
+__inference_conv2d_14_layer_call_fn_8735093?
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
ِ2ٍ
F__inference_conv2d_14_layer_call_and_return_conditional_losses_8735104?
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
2
)__inference_dropout_layer_call_fn_8735109
)__inference_dropout_layer_call_fn_8735114?
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
ئ2أ
D__inference_dropout_layer_call_and_return_conditional_losses_8735119
D__inference_dropout_layer_call_and_return_conditional_losses_8735131?
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
ط2ش
-__inference_concatenate_layer_call_fn_8735137?
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
ْ2ُ
H__inference_concatenate_layer_call_and_return_conditional_losses_8735144?
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
2
1__inference_up_sampling2d_1_layer_call_fn_8732982ـ
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
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_8732976ـ
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
ص2ز
+__inference_conv2d_15_layer_call_fn_8735153?
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
ِ2ٍ
F__inference_conv2d_15_layer_call_and_return_conditional_losses_8735164?
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
2
+__inference_dropout_1_layer_call_fn_8735169
+__inference_dropout_1_layer_call_fn_8735174?
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
ت2ا
F__inference_dropout_1_layer_call_and_return_conditional_losses_8735179
F__inference_dropout_1_layer_call_and_return_conditional_losses_8735191?
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
ع2ض
/__inference_concatenate_1_layer_call_fn_8735197?
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
?2ّ
J__inference_concatenate_1_layer_call_and_return_conditional_losses_8735204?
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
2
1__inference_up_sampling2d_2_layer_call_fn_8733001ـ
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
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_8732995ـ
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
ص2ز
+__inference_conv2d_16_layer_call_fn_8735213?
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
ِ2ٍ
F__inference_conv2d_16_layer_call_and_return_conditional_losses_8735224?
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
2
+__inference_dropout_2_layer_call_fn_8735229
+__inference_dropout_2_layer_call_fn_8735234?
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
ت2ا
F__inference_dropout_2_layer_call_and_return_conditional_losses_8735239
F__inference_dropout_2_layer_call_and_return_conditional_losses_8735251?
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
ع2ض
/__inference_concatenate_2_layer_call_fn_8735257?
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
?2ّ
J__inference_concatenate_2_layer_call_and_return_conditional_losses_8735264?
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
2
1__inference_up_sampling2d_3_layer_call_fn_8733020ـ
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
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8733014ـ
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
ص2ز
+__inference_conv2d_17_layer_call_fn_8735273?
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
ِ2ٍ
F__inference_conv2d_17_layer_call_and_return_conditional_losses_8735284?
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
جBة
%__inference_signature_wrapper_8734409input_3"
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

Const_13ـ
"__inference__wrapped_model_8732944?:xy??ـف??قك??لمظعنه??وىيً??:?7
0?-
+(
input_3?????????
? "??<
:
	conv2d_17-*
	conv2d_17??????????
J__inference_concatenate_1_layer_call_and_return_conditional_losses_8735204?|?y
r?o
mj
<9
inputs/0+???????????????????????????@
*'
inputs/1?????????@@@
? ".?+
$!
0?????????@@
 ص
/__inference_concatenate_1_layer_call_fn_8735197?|?y
r?o
mj
<9
inputs/0+???????????????????????????@
*'
inputs/1?????????@@@
? "!?????????@@
J__inference_concatenate_2_layer_call_and_return_conditional_losses_8735264?~?{
t?q
ol
<9
inputs/0+??????????????????????????? 
,)
inputs/1????????? 
? "/?,
%"
0?????????@
 ظ
/__inference_concatenate_2_layer_call_fn_8735257¤~?{
t?q
ol
<9
inputs/0+??????????????????????????? 
,)
inputs/1????????? 
? ""?????????@?
H__inference_concatenate_layer_call_and_return_conditional_losses_8735144?~?{
t?q
ol
=:
inputs/0,???????????????????????????
+(
inputs/1?????????  
? ".?+
$!
0?????????  
 ص
-__inference_concatenate_layer_call_fn_8735137?~?{
t?q
ol
=:
inputs/0,???????????????????????????
+(
inputs/1?????????  
? "!?????????  ?
F__inference_conv2d_10_layer_call_and_return_conditional_losses_8734987pxy9?6
/?,
*'
inputs?????????
? "/?,
%"
0????????? 
 
+__inference_conv2d_10_layer_call_fn_8734977cxy9?6
/?,
*'
inputs?????????
? ""????????? ?
F__inference_conv2d_11_layer_call_and_return_conditional_losses_8735016p9?6
/?,
*'
inputs????????? 
? "-?*
# 
0?????????@@@
 
+__inference_conv2d_11_layer_call_fn_8735006c9?6
/?,
*'
inputs????????? 
? " ?????????@@@?
F__inference_conv2d_12_layer_call_and_return_conditional_losses_8735045o??7?4
-?*
(%
inputs?????????@@@
? ".?+
$!
0?????????  
 
+__inference_conv2d_12_layer_call_fn_8735035b??7?4
-?*
(%
inputs?????????@@@
? "!?????????  ?
F__inference_conv2d_13_layer_call_and_return_conditional_losses_8735074p??8?5
.?+
)&
inputs?????????  
? ".?+
$!
0?????????
 
+__inference_conv2d_13_layer_call_fn_8735064c??8?5
.?+
)&
inputs?????????  
? "!??????????
F__inference_conv2d_14_layer_call_and_return_conditional_losses_8735104ظعJ?G
@?=
;8
inputs,???????????????????????????
? "@?=
63
0,???????????????????????????
 ?
+__inference_conv2d_14_layer_call_fn_8735093ظعJ?G
@?=
;8
inputs,???????????????????????????
? "30,????????????????????????????
F__inference_conv2d_15_layer_call_and_return_conditional_losses_8735164??J?G
@?=
;8
inputs,???????????????????????????
? "??<
52
0+???????????????????????????@
 ?
+__inference_conv2d_15_layer_call_fn_8735153??J?G
@?=
;8
inputs,???????????????????????????
? "2/+???????????????????????????@?
F__inference_conv2d_16_layer_call_and_return_conditional_losses_8735224J?G
@?=
;8
inputs,???????????????????????????
? "??<
52
0+??????????????????????????? 
 ?
+__inference_conv2d_16_layer_call_fn_8735213J?G
@?=
;8
inputs,???????????????????????????
? "2/+??????????????????????????? ?
F__inference_conv2d_17_layer_call_and_return_conditional_losses_8735284??I?F
??<
:7
inputs+???????????????????????????@
? "??<
52
0+???????????????????????????
 ?
+__inference_conv2d_17_layer_call_fn_8735273??I?F
??<
:7
inputs+???????????????????????????@
? "2/+????????????????????????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_8735179M?J
C?@
:7
inputs+???????????????????????????@
p 
? "??<
52
0+???????????????????????????@
 ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_8735191M?J
C?@
:7
inputs+???????????????????????????@
p
? "??<
52
0+???????????????????????????@
 ?
+__inference_dropout_1_layer_call_fn_8735169M?J
C?@
:7
inputs+???????????????????????????@
p 
? "2/+???????????????????????????@?
+__inference_dropout_1_layer_call_fn_8735174M?J
C?@
:7
inputs+???????????????????????????@
p
? "2/+???????????????????????????@?
F__inference_dropout_2_layer_call_and_return_conditional_losses_8735239M?J
C?@
:7
inputs+??????????????????????????? 
p 
? "??<
52
0+??????????????????????????? 
 ?
F__inference_dropout_2_layer_call_and_return_conditional_losses_8735251M?J
C?@
:7
inputs+??????????????????????????? 
p
? "??<
52
0+??????????????????????????? 
 ?
+__inference_dropout_2_layer_call_fn_8735229M?J
C?@
:7
inputs+??????????????????????????? 
p 
? "2/+??????????????????????????? ?
+__inference_dropout_2_layer_call_fn_8735234M?J
C?@
:7
inputs+??????????????????????????? 
p
? "2/+??????????????????????????? ?
D__inference_dropout_layer_call_and_return_conditional_losses_8735119N?K
D?A
;8
inputs,???????????????????????????
p 
? "@?=
63
0,???????????????????????????
 ?
D__inference_dropout_layer_call_and_return_conditional_losses_8735131N?K
D?A
;8
inputs,???????????????????????????
p
? "@?=
63
0,???????????????????????????
 ?
)__inference_dropout_layer_call_fn_8735109N?K
D?A
;8
inputs,???????????????????????????
p 
? "30,????????????????????????????
)__inference_dropout_layer_call_fn_8735114N?K
D?A
;8
inputs,???????????????????????????
p
? "30,????????????????????????????
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8735055j8?5
.?+
)&
inputs?????????  
? ".?+
$!
0?????????  
 
0__inference_leaky_re_lu_10_layer_call_fn_8735050]8?5
.?+
)&
inputs?????????  
? "!?????????  ?
K__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_8735084j8?5
.?+
)&
inputs?????????
? ".?+
$!
0?????????
 
0__inference_leaky_re_lu_11_layer_call_fn_8735079]8?5
.?+
)&
inputs?????????
? "!??????????
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_8734997l9?6
/?,
*'
inputs????????? 
? "/?,
%"
0????????? 
 
/__inference_leaky_re_lu_8_layer_call_fn_8734992_9?6
/?,
*'
inputs????????? 
? ""????????? ?
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8735026h7?4
-?*
(%
inputs?????????@@@
? "-?*
# 
0?????????@@@
 
/__inference_leaky_re_lu_9_layer_call_fn_8735021[7?4
-?*
(%
inputs?????????@@@
? " ?????????@@@
D__inference_model_2_layer_call_and_return_conditional_losses_8734165ء:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_3?????????
p 

 
? "??<
52
0+???????????????????????????
 
D__inference_model_2_layer_call_and_return_conditional_losses_8734342ء:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_3?????????
p

 
? "??<
52
0+???????????????????????????
 ?
D__inference_model_2_layer_call_and_return_conditional_losses_8734743?:xy??ـف??قك??لمظعنه??وىيً??A?>
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
D__inference_model_2_layer_call_and_return_conditional_losses_8734968?:xy??ـف??قك??لمظعنه??وىيً??A?>
7?4
*'
inputs?????????
p

 
? "/?,
%"
0?????????
 ق
)__inference_model_2_layer_call_fn_8733422?:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_3?????????
p 

 
? "2/+???????????????????????????ق
)__inference_model_2_layer_call_fn_8733988?:xy??ـف??قك??لمظعنه??وىيً??B??
8?5
+(
input_3?????????
p

 
? "2/+???????????????????????????ف
)__inference_model_2_layer_call_fn_8734474?:xy??ـف??قك??لمظعنه??وىيً??A?>
7?4
*'
inputs?????????
p 

 
? "2/+???????????????????????????ف
)__inference_model_2_layer_call_fn_8734539?:xy??ـف??قك??لمظعنه??وىيً??A?>
7?4
*'
inputs?????????
p

 
? "2/+???????????????????????????َ
%__inference_signature_wrapper_8734409ؤ:xy??ـف??قك??لمظعنه??وىيً??E?B
? 
;?8
6
input_3+(
input_3?????????"??<
:
	conv2d_17-*
	conv2d_17?????????ُ
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_8732976R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ا
1__inference_up_sampling2d_1_layer_call_fn_8732982R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ُ
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_8732995R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ا
1__inference_up_sampling2d_2_layer_call_fn_8733001R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ُ
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_8733014R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ا
1__inference_up_sampling2d_3_layer_call_fn_8733020R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ٍ
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_8732957R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 إ
/__inference_up_sampling2d_layer_call_fn_8732963R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????