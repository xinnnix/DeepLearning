σπ
δ΄
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
ϋ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%·Ρ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Α
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
χ
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
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
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Ω
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_7/kernel
|
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*'
_output_shapes
:*
dtype0

layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_3/beta

.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes	
:*
dtype0

layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_3/gamma

/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes	
:*
dtype0
s
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
}
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*(
_output_shapes
:*
dtype0

layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_2/beta

.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes	
:*
dtype0

layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_2/gamma

/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes	
:*
dtype0
s
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
l
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes	
:*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
}
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:*
dtype0

layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_1/beta

.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes	
:*
dtype0

layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_1/gamma

/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes	
:*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:*
dtype0

layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelayer_normalization/beta

,layer_normalization/beta/Read/ReadVariableOpReadVariableOplayer_normalization/beta*
_output_shapes

:*
dtype0

layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelayer_normalization/gamma

-layer_normalization/gamma/Read/ReadVariableOpReadVariableOplayer_normalization/gamma*
_output_shapes

:*
dtype0
r
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
k
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes

:*
dtype0
{
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/kernel
t
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_output_shapes
:*
dtype0
|
serving_default_input_2Placeholder*(
_output_shapes
:?????????*
dtype0*
shape:?????????
α
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2dense_1/kerneldense_1/biaslayer_normalization/gammalayer_normalization/betaconv2d_4/kernelconv2d_4/biaslayer_normalization_1/gammalayer_normalization_1/betaconv2d_5/kernelconv2d_5/biaslayer_normalization_2/gammalayer_normalization_2/betaconv2d_6/kernelconv2d_6/biaslayer_normalization_3/gammalayer_normalization_3/betaconv2d_7/kernelconv2d_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_12708952

NoOpNoOp
h
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ψg
valueΞgBΛg BΔg

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias*
―
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)axis
	*gamma
+beta*

,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 

2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
Θ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op*
―
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
Maxis
	Ngamma
Obeta*

P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 

V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
Θ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op*
―
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta*

n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 

t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
Λ
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
Έ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ρ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
! _jit_compiled_convolution_op*

!0
"1
*2
+3
D4
E5
N6
O7
b8
c9
l10
m11
12
13
14
15
16
17*

!0
"1
*2
+3
D4
E5
N6
O7
b8
c9
l10
m11
12
13
14
15
16
17*
* 
΅
‘non_trainable_variables
’layers
£metrics
 €layer_regularization_losses
₯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
¦trace_0
§trace_1
¨trace_2
©trace_3* 
:
ͺtrace_0
«trace_1
¬trace_2
­trace_3* 
* 

?serving_default* 

!0
"1*

!0
"1*
* 

―non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

΄trace_0* 

΅trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

*0
+1*

*0
+1*
* 

Άnon_trainable_variables
·layers
Έmetrics
 Ήlayer_regularization_losses
Ίlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

»trace_0* 

Όtrace_0* 
* 
hb
VARIABLE_VALUElayer_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUElayer_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

½non_trainable_variables
Ύlayers
Ώmetrics
 ΐlayer_regularization_losses
Αlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

Βtrace_0* 

Γtrace_0* 
* 
* 
* 

Δnon_trainable_variables
Εlayers
Ζmetrics
 Ηlayer_regularization_losses
Θlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

Ιtrace_0* 

Κtrace_0* 
* 
* 
* 

Λnon_trainable_variables
Μlayers
Νmetrics
 Ξlayer_regularization_losses
Οlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

Πtrace_0* 

Ρtrace_0* 

D0
E1*

D0
E1*
* 

?non_trainable_variables
Σlayers
Τmetrics
 Υlayer_regularization_losses
Φlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

Χtrace_0* 

Ψtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

N0
O1*

N0
O1*
* 

Ωnon_trainable_variables
Ϊlayers
Ϋmetrics
 άlayer_regularization_losses
έlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

ήtrace_0* 

ίtrace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ΰnon_trainable_variables
αlayers
βmetrics
 γlayer_regularization_losses
δlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

εtrace_0* 

ζtrace_0* 
* 
* 
* 

ηnon_trainable_variables
θlayers
ιmetrics
 κlayer_regularization_losses
λlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

μtrace_0* 

νtrace_0* 

b0
c1*

b0
c1*
* 

ξnon_trainable_variables
οlayers
πmetrics
 ρlayer_regularization_losses
ςlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

σtrace_0* 

τtrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

l0
m1*

l0
m1*
* 

υnon_trainable_variables
φlayers
χmetrics
 ψlayer_regularization_losses
ωlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

ϊtrace_0* 

ϋtrace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

όnon_trainable_variables
ύlayers
ώmetrics
 ?layer_regularization_losses
layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
 layers
‘metrics
 ’layer_regularization_losses
£layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

€trace_0* 

₯trace_0* 

0
1*

0
1*
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

«trace_0* 

¬trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

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
17*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp-layer_normalization/gamma/Read/ReadVariableOp,layer_normalization/beta/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp/layer_normalization_1/gamma/Read/ReadVariableOp.layer_normalization_1/beta/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp/layer_normalization_2/gamma/Read/ReadVariableOp.layer_normalization_2/beta/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp/layer_normalization_3/gamma/Read/ReadVariableOp.layer_normalization_3/beta/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOpConst*
Tin
2*
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
!__inference__traced_save_12710062
«
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biaslayer_normalization/gammalayer_normalization/betaconv2d_4/kernelconv2d_4/biaslayer_normalization_1/gammalayer_normalization_1/betaconv2d_5/kernelconv2d_5/biaslayer_normalization_2/gammalayer_normalization_2/betaconv2d_6/kernelconv2d_6/biaslayer_normalization_3/gammalayer_normalization_3/betaconv2d_7/kernelconv2d_7/bias*
Tin
2*
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
$__inference__traced_restore_12710126£·
»
L
0__inference_up_sampling2d_layer_call_fn_12709632

inputs
identityά
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
GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12708034
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
μ

F__inference_conv2d_7_layer_call_and_return_conditional_losses_12709985

inputs9
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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

F
*__inference_re_lu_2_layer_call_fn_12709836

inputs
identityΞ
PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12708350{
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs

i
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12709751

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Η*
ψ
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12708421

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????q
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
μ

F__inference_conv2d_7_layer_call_and_return_conditional_losses_12708446

inputs9
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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

F
*__inference_re_lu_1_layer_call_fn_12709729

inputs
identityΞ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12708268{
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
΅
a
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12709948

inputs
identitya
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????u
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs


F__inference_conv2d_5_layer_call_and_return_conditional_losses_12709770

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Η*
ψ
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12709831

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????q
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
¨

G__inference_Generator_layer_call_and_return_conditional_losses_12709528

inputs;
&dense_1_matmul_readvariableop_resource:7
'dense_1_biasadd_readvariableop_resource:
A
1layer_normalization_mul_2_readvariableop_resource:
?
/layer_normalization_add_readvariableop_resource:
C
'conv2d_4_conv2d_readvariableop_resource:7
(conv2d_4_biasadd_readvariableop_resource:	B
3layer_normalization_1_mul_4_readvariableop_resource:	@
1layer_normalization_1_add_readvariableop_resource:	C
'conv2d_5_conv2d_readvariableop_resource:7
(conv2d_5_biasadd_readvariableop_resource:	B
3layer_normalization_2_mul_4_readvariableop_resource:	@
1layer_normalization_2_add_readvariableop_resource:	C
'conv2d_6_conv2d_readvariableop_resource:7
(conv2d_6_biasadd_readvariableop_resource:	B
3layer_normalization_3_mul_4_readvariableop_resource:	@
1layer_normalization_3_add_readvariableop_resource:	B
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:
identity’conv2d_4/BiasAdd/ReadVariableOp’conv2d_4/Conv2D/ReadVariableOp’conv2d_5/BiasAdd/ReadVariableOp’conv2d_5/Conv2D/ReadVariableOp’conv2d_6/BiasAdd/ReadVariableOp’conv2d_6/Conv2D/ReadVariableOp’conv2d_7/BiasAdd/ReadVariableOp’conv2d_7/Conv2D/ReadVariableOp’dense_1/BiasAdd/ReadVariableOp’dense_1/MatMul/ReadVariableOp’&layer_normalization/add/ReadVariableOp’(layer_normalization/mul_2/ReadVariableOp’(layer_normalization_1/add/ReadVariableOp’*layer_normalization_1/mul_4/ReadVariableOp’(layer_normalization_2/add/ReadVariableOp’*layer_normalization_2/mul_4/ReadVariableOp’(layer_normalization_3/add/ReadVariableOp’*layer_normalization_3/mul_4/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0{
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????a
layer_normalization/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:q
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: s
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization/mul_1Mul$layer_normalization/mul_1/x:output:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: e
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :e
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ο
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul:z:0layer_normalization/mul_1:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¨
layer_normalization/ReshapeReshapedense_1/BiasAdd:output:0*layer_normalization/Reshape/shape:output:0*
T0*1
_output_shapes
:?????????r
layer_normalization/ones/packedPacklayer_normalization/mul:z:0*
N*
T0*
_output_shapes
:c
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?‘
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:?????????s
 layer_normalization/zeros/packedPacklayer_normalization/mul:z:0*
N*
T0*
_output_shapes
:d
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    €
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:?????????\
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB ^
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*q
_output_shapes_
]:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:ͺ
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*)
_output_shapes
:?????????
(layer_normalization/mul_2/ReadVariableOpReadVariableOp1layer_normalization_mul_2_readvariableop_resource*
_output_shapes

:*
dtype0?
layer_normalization/mul_2Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_2/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes

:*
dtype0£
layer_normalization/addAddV2layer_normalization/mul_2:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????c

re_lu/ReluRelulayer_normalization/add:z:0*
T0*)
_output_shapes
:?????????U
reshape/ShapeShapere_lu/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ρ
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape/ReshapeReshapere_lu/Relu:activations:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:»
#up_sampling2d/resize/ResizeBilinearResizeBilinearreshape/Reshape:output:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????*
half_pixel_centers(
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ϊ
conv2d_4/Conv2DConv2D4up_sampling2d/resize/ResizeBilinear:resized_images:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????d
layer_normalization_1/ShapeShapeconv2d_4/BiasAdd:output:0*
T0*
_output_shapes
:s
)layer_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_1/strided_sliceStridedSlice$layer_normalization_1/Shape:output:02layer_normalization_1/strided_slice/stack:output:04layer_normalization_1/strided_slice/stack_1:output:04layer_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_1/mulMul$layer_normalization_1/mul/x:output:0,layer_normalization_1/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_1/strided_slice_1StridedSlice$layer_normalization_1/Shape:output:04layer_normalization_1/strided_slice_1/stack:output:06layer_normalization_1/strided_slice_1/stack_1:output:06layer_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_1/mul_1Mullayer_normalization_1/mul:z:0.layer_normalization_1/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_1/strided_slice_2StridedSlice$layer_normalization_1/Shape:output:04layer_normalization_1/strided_slice_2/stack:output:06layer_normalization_1/strided_slice_2/stack_1:output:06layer_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_1/mul_2Mullayer_normalization_1/mul_1:z:0.layer_normalization_1/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_1/strided_slice_3StridedSlice$layer_normalization_1/Shape:output:04layer_normalization_1/strided_slice_3/stack:output:06layer_normalization_1/strided_slice_3/stack_1:output:06layer_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_1/mul_3Mul&layer_normalization_1/mul_3/x:output:0.layer_normalization_1/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_1/Reshape/shapePack.layer_normalization_1/Reshape/shape/0:output:0layer_normalization_1/mul_2:z:0layer_normalization_1/mul_3:z:0.layer_normalization_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¬
layer_normalization_1/ReshapeReshapeconv2d_4/BiasAdd:output:0,layer_normalization_1/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_1/ones/packedPacklayer_normalization_1/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_1/onesFill*layer_normalization_1/ones/packed:output:0)layer_normalization_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_1/zeros/packedPacklayer_normalization_1/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_1/zerosFill+layer_normalization_1/zeros/packed:output:0*layer_normalization_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_1/FusedBatchNormV3FusedBatchNormV3&layer_normalization_1/Reshape:output:0#layer_normalization_1/ones:output:0$layer_normalization_1/zeros:output:0$layer_normalization_1/Const:output:0&layer_normalization_1/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_1/Reshape_1Reshape*layer_normalization_1/FusedBatchNormV3:y:0$layer_normalization_1/Shape:output:0*
T0*0
_output_shapes
:?????????
*layer_normalization_1/mul_4/ReadVariableOpReadVariableOp3layer_normalization_1_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_1/mul_4Mul(layer_normalization_1/Reshape_1:output:02layer_normalization_1/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
(layer_normalization_1/add/ReadVariableOpReadVariableOp1layer_normalization_1_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_1/addAddV2layer_normalization_1/mul_4:z:00layer_normalization_1/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????n
re_lu_1/ReluRelulayer_normalization_1/add:z:0*
T0*0
_output_shapes
:?????????f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:Α
%up_sampling2d_1/resize/ResizeBilinearResizeBilinearre_lu_1/Relu:activations:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????*
half_pixel_centers(
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ά
conv2d_5/Conv2DConv2D6up_sampling2d_1/resize/ResizeBilinear:resized_images:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????d
layer_normalization_2/ShapeShapeconv2d_5/BiasAdd:output:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_2/mul_2Mullayer_normalization_2/mul_1:z:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_2/strided_slice_3StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_3/stack:output:06layer_normalization_2/strided_slice_3/stack_1:output:06layer_normalization_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_2/mul_3Mul&layer_normalization_2/mul_3/x:output:0.layer_normalization_2/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_2:z:0layer_normalization_2/mul_3:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¬
layer_normalization_2/ReshapeReshapeconv2d_5/BiasAdd:output:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*0
_output_shapes
:?????????
*layer_normalization_2/mul_4/ReadVariableOpReadVariableOp3layer_normalization_2_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_2/mul_4Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_2/addAddV2layer_normalization_2/mul_4:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????n
re_lu_2/ReluRelulayer_normalization_2/add:z:0*
T0*0
_output_shapes
:?????????f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:Α
%up_sampling2d_2/resize/ResizeBilinearResizeBilinearre_lu_2/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ά
conv2d_6/Conv2DConv2D6up_sampling2d_2/resize/ResizeBilinear:resized_images:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  d
layer_normalization_3/ShapeShapeconv2d_6/BiasAdd:output:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_3/mul_2Mullayer_normalization_3/mul_1:z:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_3/strided_slice_3StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_3/stack:output:06layer_normalization_3/strided_slice_3/stack_1:output:06layer_normalization_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_3/mul_3Mul&layer_normalization_3/mul_3/x:output:0.layer_normalization_3/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_2:z:0layer_normalization_3/mul_3:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¬
layer_normalization_3/ReshapeReshapeconv2d_6/BiasAdd:output:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*0
_output_shapes
:?????????  
*layer_normalization_3/mul_4/ReadVariableOpReadVariableOp3layer_normalization_3_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_3/mul_4Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_3/addAddV2layer_normalization_3/mul_4:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  n
re_lu_3/ReluRelulayer_normalization_3/add:z:0*
T0*0
_output_shapes
:?????????  f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Α
%up_sampling2d_3/resize/ResizeBilinearResizeBilinearre_lu_3/Relu:activations:0up_sampling2d_3/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0Ϋ
conv2d_7/Conv2DConv2D6up_sampling2d_3/resize/ResizeBilinear:resized_images:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@j
conv2d_7/TanhTanhconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@h
IdentityIdentityconv2d_7/Tanh:y:0^NoOp*
T0*/
_output_shapes
:?????????@@ο
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_2/ReadVariableOp)^layer_normalization_1/add/ReadVariableOp+^layer_normalization_1/mul_4/ReadVariableOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_4/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_2/ReadVariableOp(layer_normalization/mul_2/ReadVariableOp2T
(layer_normalization_1/add/ReadVariableOp(layer_normalization_1/add/ReadVariableOp2X
*layer_normalization_1/mul_4/ReadVariableOp*layer_normalization_1/mul_4/ReadVariableOp2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_4/ReadVariableOp*layer_normalization_2/mul_4/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_4/ReadVariableOp*layer_normalization_3/mul_4/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ΠJ
ξ
$__inference__traced_restore_12710126
file_prefix4
assignvariableop_dense_1_kernel:/
assignvariableop_1_dense_1_bias:
<
,assignvariableop_2_layer_normalization_gamma:
;
+assignvariableop_3_layer_normalization_beta:
>
"assignvariableop_4_conv2d_4_kernel:/
 assignvariableop_5_conv2d_4_bias:	=
.assignvariableop_6_layer_normalization_1_gamma:	<
-assignvariableop_7_layer_normalization_1_beta:	>
"assignvariableop_8_conv2d_5_kernel:/
 assignvariableop_9_conv2d_5_bias:	>
/assignvariableop_10_layer_normalization_2_gamma:	=
.assignvariableop_11_layer_normalization_2_beta:	?
#assignvariableop_12_conv2d_6_kernel:0
!assignvariableop_13_conv2d_6_bias:	>
/assignvariableop_14_layer_normalization_3_gamma:	=
.assignvariableop_15_layer_normalization_3_beta:	>
#assignvariableop_16_conv2d_7_kernel:/
!assignvariableop_17_conv2d_7_bias:
identity_19’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_2’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9η
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ύ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp,assignvariableop_2_layer_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp+assignvariableop_3_layer_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp.assignvariableop_6_layer_normalization_1_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp-assignvariableop_7_layer_normalization_1_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_layer_normalization_2_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp.assignvariableop_11_layer_normalization_2_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_14AssignVariableOp/assignvariableop_14_layer_normalization_3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp.assignvariableop_15_layer_normalization_3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_7_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_7_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ϋ
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: Θ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
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
΅
a
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12708268

inputs
identitya
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????u
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Σ
a
E__inference_reshape_layer_call_and_return_conditional_losses_12709627

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
 
ψ
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12708159

inputs-
mul_2_readvariableop_resource:
+
add_readvariableop_resource:

identity’add/ReadVariableOp’mul_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:n
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:?????????J
ones/packedPackmul:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????K
zeros/packedPackmul:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ₯
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*q
_output_shapes_
]:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:n
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*)
_output_shapes
:?????????p
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes

:*
dtype0r
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????l
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes

:*
dtype0g
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????X
IdentityIdentityadd:z:0^NoOp*
T0*)
_output_shapes
:?????????r
NoOpNoOp^add/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
ά
ϊ
,__inference_Generator_layer_call_fn_12708793
input_2
unknown:
	unknown_0:

	unknown_1:

	unknown_2:
%
	unknown_3:
	unknown_4:	
	unknown_5:	
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	%

unknown_15:

unknown_16:
identity’StatefulPartitionedCallΡ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_Generator_layer_call_and_return_conditional_losses_12708713
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:?????????
!
_user_specified_name	input_2
Ο
_
C__inference_re_lu_layer_call_and_return_conditional_losses_12709608

inputs
identityH
ReluReluinputs*
T0*)
_output_shapes
:?????????\
IdentityIdentityRelu:activations:0*
T0*)
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
Έ
F
*__inference_reshape_layer_call_fn_12709613

inputs
identityΌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12708186i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
½P
Σ	
G__inference_Generator_layer_call_and_return_conditional_losses_12708453

inputs%
dense_1_12708112: 
dense_1_12708114:
,
layer_normalization_12708160:
,
layer_normalization_12708162:
-
conv2d_4_12708200: 
conv2d_4_12708202:	-
layer_normalization_1_12708258:	-
layer_normalization_1_12708260:	-
conv2d_5_12708282: 
conv2d_5_12708284:	-
layer_normalization_2_12708340:	-
layer_normalization_2_12708342:	-
conv2d_6_12708364: 
conv2d_6_12708366:	-
layer_normalization_3_12708422:	-
layer_normalization_3_12708424:	,
conv2d_7_12708447:
conv2d_7_12708449:
identity’ conv2d_4/StatefulPartitionedCall’ conv2d_5/StatefulPartitionedCall’ conv2d_6/StatefulPartitionedCall’ conv2d_7/StatefulPartitionedCall’dense_1/StatefulPartitionedCall’+layer_normalization/StatefulPartitionedCall’-layer_normalization_1/StatefulPartitionedCall’-layer_normalization_2/StatefulPartitionedCall’-layer_normalization_3/StatefulPartitionedCallχ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_12708112dense_1_12708114*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_12708111Ι
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_12708160layer_normalization_12708162*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12708159η
re_lu/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_layer_call_and_return_conditional_losses_12708170ά
reshape/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12708186ό
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12708034΄
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_4_12708200conv2d_4_12708202*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12708199λ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0layer_normalization_1_12708258layer_normalization_1_12708260*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12708257
re_lu_1/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12708268
up_sampling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12708053Ά
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_12708282conv2d_5_12708284*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12708281λ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0layer_normalization_2_12708340layer_normalization_2_12708342*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12708339
re_lu_2/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12708350
up_sampling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
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
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12708072Ά
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_6_12708364conv2d_6_12708366*
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
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12708363λ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0layer_normalization_3_12708422layer_normalization_3_12708424*
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
GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12708421
re_lu_3/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12708432
up_sampling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
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
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12708091΅
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_7_12708447conv2d_7_12708449*
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
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12708446
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????²
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Α
£
+__inference_conv2d_4_layer_call_fn_12709653

inputs#
unknown:
	unknown_0:	
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12708199
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Α
£
+__inference_conv2d_5_layer_call_fn_12709760

inputs#
unknown:
	unknown_0:	
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12708281
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Η*
ψ
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12708257

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????q
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
’.

!__inference__traced_save_12710062
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop8
4savev2_layer_normalization_gamma_read_readvariableop7
3savev2_layer_normalization_beta_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop:
6savev2_layer_normalization_1_gamma_read_readvariableop9
5savev2_layer_normalization_1_beta_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop:
6savev2_layer_normalization_2_gamma_read_readvariableop9
5savev2_layer_normalization_2_beta_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop:
6savev2_layer_normalization_3_gamma_read_readvariableop9
5savev2_layer_normalization_3_beta_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: δ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ¦
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop4savev2_layer_normalization_gamma_read_readvariableop3savev2_layer_normalization_beta_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop6savev2_layer_normalization_1_gamma_read_readvariableop5savev2_layer_normalization_1_beta_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop6savev2_layer_normalization_2_gamma_read_readvariableop5savev2_layer_normalization_2_beta_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop6savev2_layer_normalization_3_gamma_read_readvariableop5savev2_layer_normalization_3_beta_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *!
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapesΐ
½: ::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
::"

_output_shapes

::"

_output_shapes

::"

_output_shapes

::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.	*
(
_output_shapes
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::-)
'
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
Ω
ω
,__inference_Generator_layer_call_fn_12709034

inputs
unknown:
	unknown_0:

	unknown_1:

	unknown_2:
%
	unknown_3:
	unknown_4:	
	unknown_5:	
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	%

unknown_15:

unknown_16:
identity’StatefulPartitionedCallΠ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_Generator_layer_call_and_return_conditional_losses_12708713
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ξ
£
8__inference_layer_normalization_1_layer_call_fn_12709672

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12708257
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Ο
_
C__inference_re_lu_layer_call_and_return_conditional_losses_12708170

inputs
identityH
ReluReluinputs*
T0*)
_output_shapes
:?????????\
IdentityIdentityRelu:activations:0*
T0*)
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
Ω
ω
,__inference_Generator_layer_call_fn_12708993

inputs
unknown:
	unknown_0:

	unknown_1:

	unknown_2:
%
	unknown_3:
	unknown_4:	
	unknown_5:	
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	%

unknown_15:

unknown_16:
identity’StatefulPartitionedCallΠ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_Generator_layer_call_and_return_conditional_losses_12708453
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
¨

G__inference_Generator_layer_call_and_return_conditional_losses_12709281

inputs;
&dense_1_matmul_readvariableop_resource:7
'dense_1_biasadd_readvariableop_resource:
A
1layer_normalization_mul_2_readvariableop_resource:
?
/layer_normalization_add_readvariableop_resource:
C
'conv2d_4_conv2d_readvariableop_resource:7
(conv2d_4_biasadd_readvariableop_resource:	B
3layer_normalization_1_mul_4_readvariableop_resource:	@
1layer_normalization_1_add_readvariableop_resource:	C
'conv2d_5_conv2d_readvariableop_resource:7
(conv2d_5_biasadd_readvariableop_resource:	B
3layer_normalization_2_mul_4_readvariableop_resource:	@
1layer_normalization_2_add_readvariableop_resource:	C
'conv2d_6_conv2d_readvariableop_resource:7
(conv2d_6_biasadd_readvariableop_resource:	B
3layer_normalization_3_mul_4_readvariableop_resource:	@
1layer_normalization_3_add_readvariableop_resource:	B
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:
identity’conv2d_4/BiasAdd/ReadVariableOp’conv2d_4/Conv2D/ReadVariableOp’conv2d_5/BiasAdd/ReadVariableOp’conv2d_5/Conv2D/ReadVariableOp’conv2d_6/BiasAdd/ReadVariableOp’conv2d_6/Conv2D/ReadVariableOp’conv2d_7/BiasAdd/ReadVariableOp’conv2d_7/Conv2D/ReadVariableOp’dense_1/BiasAdd/ReadVariableOp’dense_1/MatMul/ReadVariableOp’&layer_normalization/add/ReadVariableOp’(layer_normalization/mul_2/ReadVariableOp’(layer_normalization_1/add/ReadVariableOp’*layer_normalization_1/mul_4/ReadVariableOp’(layer_normalization_2/add/ReadVariableOp’*layer_normalization_2/mul_4/ReadVariableOp’(layer_normalization_3/add/ReadVariableOp’*layer_normalization_3/mul_4/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0{
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????a
layer_normalization/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:q
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: s
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization/mul_1Mul$layer_normalization/mul_1/x:output:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: e
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :e
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ο
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul:z:0layer_normalization/mul_1:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¨
layer_normalization/ReshapeReshapedense_1/BiasAdd:output:0*layer_normalization/Reshape/shape:output:0*
T0*1
_output_shapes
:?????????r
layer_normalization/ones/packedPacklayer_normalization/mul:z:0*
N*
T0*
_output_shapes
:c
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?‘
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:?????????s
 layer_normalization/zeros/packedPacklayer_normalization/mul:z:0*
N*
T0*
_output_shapes
:d
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    €
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:?????????\
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB ^
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*q
_output_shapes_
]:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:ͺ
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*)
_output_shapes
:?????????
(layer_normalization/mul_2/ReadVariableOpReadVariableOp1layer_normalization_mul_2_readvariableop_resource*
_output_shapes

:*
dtype0?
layer_normalization/mul_2Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_2/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes

:*
dtype0£
layer_normalization/addAddV2layer_normalization/mul_2:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????c

re_lu/ReluRelulayer_normalization/add:z:0*
T0*)
_output_shapes
:?????????U
reshape/ShapeShapere_lu/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ρ
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape/ReshapeReshapere_lu/Relu:activations:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:»
#up_sampling2d/resize/ResizeBilinearResizeBilinearreshape/Reshape:output:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????*
half_pixel_centers(
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ϊ
conv2d_4/Conv2DConv2D4up_sampling2d/resize/ResizeBilinear:resized_images:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????d
layer_normalization_1/ShapeShapeconv2d_4/BiasAdd:output:0*
T0*
_output_shapes
:s
)layer_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_1/strided_sliceStridedSlice$layer_normalization_1/Shape:output:02layer_normalization_1/strided_slice/stack:output:04layer_normalization_1/strided_slice/stack_1:output:04layer_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_1/mulMul$layer_normalization_1/mul/x:output:0,layer_normalization_1/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_1/strided_slice_1StridedSlice$layer_normalization_1/Shape:output:04layer_normalization_1/strided_slice_1/stack:output:06layer_normalization_1/strided_slice_1/stack_1:output:06layer_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_1/mul_1Mullayer_normalization_1/mul:z:0.layer_normalization_1/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_1/strided_slice_2StridedSlice$layer_normalization_1/Shape:output:04layer_normalization_1/strided_slice_2/stack:output:06layer_normalization_1/strided_slice_2/stack_1:output:06layer_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_1/mul_2Mullayer_normalization_1/mul_1:z:0.layer_normalization_1/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_1/strided_slice_3StridedSlice$layer_normalization_1/Shape:output:04layer_normalization_1/strided_slice_3/stack:output:06layer_normalization_1/strided_slice_3/stack_1:output:06layer_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_1/mul_3Mul&layer_normalization_1/mul_3/x:output:0.layer_normalization_1/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_1/Reshape/shapePack.layer_normalization_1/Reshape/shape/0:output:0layer_normalization_1/mul_2:z:0layer_normalization_1/mul_3:z:0.layer_normalization_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¬
layer_normalization_1/ReshapeReshapeconv2d_4/BiasAdd:output:0,layer_normalization_1/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_1/ones/packedPacklayer_normalization_1/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_1/onesFill*layer_normalization_1/ones/packed:output:0)layer_normalization_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_1/zeros/packedPacklayer_normalization_1/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_1/zerosFill+layer_normalization_1/zeros/packed:output:0*layer_normalization_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_1/FusedBatchNormV3FusedBatchNormV3&layer_normalization_1/Reshape:output:0#layer_normalization_1/ones:output:0$layer_normalization_1/zeros:output:0$layer_normalization_1/Const:output:0&layer_normalization_1/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_1/Reshape_1Reshape*layer_normalization_1/FusedBatchNormV3:y:0$layer_normalization_1/Shape:output:0*
T0*0
_output_shapes
:?????????
*layer_normalization_1/mul_4/ReadVariableOpReadVariableOp3layer_normalization_1_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_1/mul_4Mul(layer_normalization_1/Reshape_1:output:02layer_normalization_1/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
(layer_normalization_1/add/ReadVariableOpReadVariableOp1layer_normalization_1_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_1/addAddV2layer_normalization_1/mul_4:z:00layer_normalization_1/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????n
re_lu_1/ReluRelulayer_normalization_1/add:z:0*
T0*0
_output_shapes
:?????????f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:Α
%up_sampling2d_1/resize/ResizeBilinearResizeBilinearre_lu_1/Relu:activations:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????*
half_pixel_centers(
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ά
conv2d_5/Conv2DConv2D6up_sampling2d_1/resize/ResizeBilinear:resized_images:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????d
layer_normalization_2/ShapeShapeconv2d_5/BiasAdd:output:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_2/mul_2Mullayer_normalization_2/mul_1:z:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_2/strided_slice_3StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_3/stack:output:06layer_normalization_2/strided_slice_3/stack_1:output:06layer_normalization_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_2/mul_3Mul&layer_normalization_2/mul_3/x:output:0.layer_normalization_2/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_2:z:0layer_normalization_2/mul_3:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¬
layer_normalization_2/ReshapeReshapeconv2d_5/BiasAdd:output:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*0
_output_shapes
:?????????
*layer_normalization_2/mul_4/ReadVariableOpReadVariableOp3layer_normalization_2_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_2/mul_4Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_2/addAddV2layer_normalization_2/mul_4:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????n
re_lu_2/ReluRelulayer_normalization_2/add:z:0*
T0*0
_output_shapes
:?????????f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:Α
%up_sampling2d_2/resize/ResizeBilinearResizeBilinearre_lu_2/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ά
conv2d_6/Conv2DConv2D6up_sampling2d_2/resize/ResizeBilinear:resized_images:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  d
layer_normalization_3/ShapeShapeconv2d_6/BiasAdd:output:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
layer_normalization_3/mul_2Mullayer_normalization_3/mul_1:z:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
%layer_normalization_3/strided_slice_3StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_3/stack:output:06layer_normalization_3/strided_slice_3/stack_1:output:06layer_normalization_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :
layer_normalization_3/mul_3Mul&layer_normalization_3/mul_3/x:output:0.layer_normalization_3/strided_slice_3:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ϋ
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_2:z:0layer_normalization_3/mul_3:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¬
layer_normalization_3/ReshapeReshapeconv2d_6/BiasAdd:output:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_2:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?§
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_2:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ͺ
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ¨
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:·
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*0
_output_shapes
:?????????  
*layer_normalization_3/mul_4/ReadVariableOpReadVariableOp3layer_normalization_3_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
layer_normalization_3/mul_4Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:*
dtype0°
layer_normalization_3/addAddV2layer_normalization_3/mul_4:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  n
re_lu_3/ReluRelulayer_normalization_3/add:z:0*
T0*0
_output_shapes
:?????????  f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Α
%up_sampling2d_3/resize/ResizeBilinearResizeBilinearre_lu_3/Relu:activations:0up_sampling2d_3/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0Ϋ
conv2d_7/Conv2DConv2D6up_sampling2d_3/resize/ResizeBilinear:resized_images:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@j
conv2d_7/TanhTanhconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@h
IdentityIdentityconv2d_7/Tanh:y:0^NoOp*
T0*/
_output_shapes
:?????????@@ο
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_2/ReadVariableOp)^layer_normalization_1/add/ReadVariableOp+^layer_normalization_1/mul_4/ReadVariableOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_4/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_2/ReadVariableOp(layer_normalization/mul_2/ReadVariableOp2T
(layer_normalization_1/add/ReadVariableOp(layer_normalization_1/add/ReadVariableOp2X
*layer_normalization_1/mul_4/ReadVariableOp*layer_normalization_1/mul_4/ReadVariableOp2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_4/ReadVariableOp*layer_normalization_2/mul_4/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_4/ReadVariableOp*layer_normalization_3/mul_4/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ϊ	
ϋ
E__inference_dense_1_layer_call_and_return_conditional_losses_12709547

inputs3
matmul_readvariableop_resource:/
biasadd_readvariableop_resource:

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0k
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????t
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype0x
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????a
IdentityIdentityBiasAdd:output:0^NoOp*
T0*)
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs


F__inference_conv2d_6_layer_call_and_return_conditional_losses_12708363

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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


F__inference_conv2d_5_layer_call_and_return_conditional_losses_12708281

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
΅
a
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12708350

inputs
identitya
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????u
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ώ

g
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12709644

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
½
‘
+__inference_conv2d_7_layer_call_fn_12709974

inputs"
unknown:
	unknown_0:
identity’StatefulPartitionedCallψ
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
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12708446
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs


F__inference_conv2d_6_layer_call_and_return_conditional_losses_12709877

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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

*__inference_dense_1_layer_call_fn_12709537

inputs
unknown:
	unknown_0:

identity’StatefulPartitionedCallί
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_12708111q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
 
ψ
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12709598

inputs-
mul_2_readvariableop_resource:
+
add_readvariableop_resource:

identity’add/ReadVariableOp’mul_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:n
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:?????????J
ones/packedPackmul:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????K
zeros/packedPackmul:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ₯
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*q
_output_shapes_
]:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:n
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*)
_output_shapes
:?????????p
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes

:*
dtype0r
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????l
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes

:*
dtype0g
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????X
IdentityIdentityadd:z:0^NoOp*
T0*)
_output_shapes
:?????????r
NoOpNoOp^add/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
ώ

g
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12708034

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

i
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12709858

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

i
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12708053

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
΅
a
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12709734

inputs
identitya
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????u
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs


F__inference_conv2d_4_layer_call_and_return_conditional_losses_12708199

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Η*
ψ
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12709938

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????q
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Η*
ψ
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12709724

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????q
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs


F__inference_conv2d_4_layer_call_and_return_conditional_losses_12709663

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Ώ
N
2__inference_up_sampling2d_2_layer_call_fn_12709846

inputs
identityή
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
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12708072
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ϊ	
ϋ
E__inference_dense_1_layer_call_and_return_conditional_losses_12708111

inputs3
matmul_readvariableop_resource:/
biasadd_readvariableop_resource:

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0k
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????t
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype0x
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????a
IdentityIdentityBiasAdd:output:0^NoOp*
T0*)
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ΐP
Τ	
G__inference_Generator_layer_call_and_return_conditional_losses_12708851
input_2%
dense_1_12708796: 
dense_1_12708798:
,
layer_normalization_12708801:
,
layer_normalization_12708803:
-
conv2d_4_12708809: 
conv2d_4_12708811:	-
layer_normalization_1_12708814:	-
layer_normalization_1_12708816:	-
conv2d_5_12708821: 
conv2d_5_12708823:	-
layer_normalization_2_12708826:	-
layer_normalization_2_12708828:	-
conv2d_6_12708833: 
conv2d_6_12708835:	-
layer_normalization_3_12708838:	-
layer_normalization_3_12708840:	,
conv2d_7_12708845:
conv2d_7_12708847:
identity’ conv2d_4/StatefulPartitionedCall’ conv2d_5/StatefulPartitionedCall’ conv2d_6/StatefulPartitionedCall’ conv2d_7/StatefulPartitionedCall’dense_1/StatefulPartitionedCall’+layer_normalization/StatefulPartitionedCall’-layer_normalization_1/StatefulPartitionedCall’-layer_normalization_2/StatefulPartitionedCall’-layer_normalization_3/StatefulPartitionedCallψ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_12708796dense_1_12708798*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_12708111Ι
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_12708801layer_normalization_12708803*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12708159η
re_lu/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_layer_call_and_return_conditional_losses_12708170ά
reshape/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12708186ό
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12708034΄
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_4_12708809conv2d_4_12708811*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12708199λ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0layer_normalization_1_12708814layer_normalization_1_12708816*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12708257
re_lu_1/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12708268
up_sampling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12708053Ά
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_12708821conv2d_5_12708823*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12708281λ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0layer_normalization_2_12708826layer_normalization_2_12708828*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12708339
re_lu_2/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12708350
up_sampling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
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
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12708072Ά
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_6_12708833conv2d_6_12708835*
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
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12708363λ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0layer_normalization_3_12708838layer_normalization_3_12708840*
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
GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12708421
re_lu_3/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12708432
up_sampling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
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
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12708091΅
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_7_12708845conv2d_7_12708847*
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
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12708446
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????²
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:Q M
(
_output_shapes
:?????????
!
_user_specified_name	input_2
¦
D
(__inference_re_lu_layer_call_fn_12709603

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_layer_call_and_return_conditional_losses_12708170b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs

τ
&__inference_signature_wrapper_12708952
input_2
unknown:
	unknown_0:

	unknown_1:

	unknown_2:
%
	unknown_3:
	unknown_4:	
	unknown_5:	
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	%

unknown_15:

unknown_16:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_12708018w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:?????????
!
_user_specified_name	input_2

i
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12708091

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
΅
a
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12709841

inputs
identitya
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????u
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Α
£
+__inference_conv2d_6_layer_call_fn_12709867

inputs#
unknown:
	unknown_0:	
identity’StatefulPartitionedCallω
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
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12708363
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs

F
*__inference_re_lu_3_layer_call_fn_12709943

inputs
identityΞ
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12708432{
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
πΓ
Φ
#__inference__wrapped_model_12708018
input_2E
0generator_dense_1_matmul_readvariableop_resource:A
1generator_dense_1_biasadd_readvariableop_resource:
K
;generator_layer_normalization_mul_2_readvariableop_resource:
I
9generator_layer_normalization_add_readvariableop_resource:
M
1generator_conv2d_4_conv2d_readvariableop_resource:A
2generator_conv2d_4_biasadd_readvariableop_resource:	L
=generator_layer_normalization_1_mul_4_readvariableop_resource:	J
;generator_layer_normalization_1_add_readvariableop_resource:	M
1generator_conv2d_5_conv2d_readvariableop_resource:A
2generator_conv2d_5_biasadd_readvariableop_resource:	L
=generator_layer_normalization_2_mul_4_readvariableop_resource:	J
;generator_layer_normalization_2_add_readvariableop_resource:	M
1generator_conv2d_6_conv2d_readvariableop_resource:A
2generator_conv2d_6_biasadd_readvariableop_resource:	L
=generator_layer_normalization_3_mul_4_readvariableop_resource:	J
;generator_layer_normalization_3_add_readvariableop_resource:	L
1generator_conv2d_7_conv2d_readvariableop_resource:@
2generator_conv2d_7_biasadd_readvariableop_resource:
identity’)Generator/conv2d_4/BiasAdd/ReadVariableOp’(Generator/conv2d_4/Conv2D/ReadVariableOp’)Generator/conv2d_5/BiasAdd/ReadVariableOp’(Generator/conv2d_5/Conv2D/ReadVariableOp’)Generator/conv2d_6/BiasAdd/ReadVariableOp’(Generator/conv2d_6/Conv2D/ReadVariableOp’)Generator/conv2d_7/BiasAdd/ReadVariableOp’(Generator/conv2d_7/Conv2D/ReadVariableOp’(Generator/dense_1/BiasAdd/ReadVariableOp’'Generator/dense_1/MatMul/ReadVariableOp’0Generator/layer_normalization/add/ReadVariableOp’2Generator/layer_normalization/mul_2/ReadVariableOp’2Generator/layer_normalization_1/add/ReadVariableOp’4Generator/layer_normalization_1/mul_4/ReadVariableOp’2Generator/layer_normalization_2/add/ReadVariableOp’4Generator/layer_normalization_2/mul_4/ReadVariableOp’2Generator/layer_normalization_3/add/ReadVariableOp’4Generator/layer_normalization_3/mul_4/ReadVariableOp
'Generator/dense_1/MatMul/ReadVariableOpReadVariableOp0generator_dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0
Generator/dense_1/MatMulMatMulinput_2/Generator/dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????
(Generator/dense_1/BiasAdd/ReadVariableOpReadVariableOp1generator_dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0?
Generator/dense_1/BiasAddBiasAdd"Generator/dense_1/MatMul:product:00Generator/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????u
#Generator/layer_normalization/ShapeShape"Generator/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:{
1Generator/layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3Generator/layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3Generator/layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:η
+Generator/layer_normalization/strided_sliceStridedSlice,Generator/layer_normalization/Shape:output:0:Generator/layer_normalization/strided_slice/stack:output:0<Generator/layer_normalization/strided_slice/stack_1:output:0<Generator/layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#Generator/layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :­
!Generator/layer_normalization/mulMul,Generator/layer_normalization/mul/x:output:04Generator/layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: }
3Generator/layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5Generator/layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Generator/layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
-Generator/layer_normalization/strided_slice_1StridedSlice,Generator/layer_normalization/Shape:output:0<Generator/layer_normalization/strided_slice_1/stack:output:0>Generator/layer_normalization/strided_slice_1/stack_1:output:0>Generator/layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%Generator/layer_normalization/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :³
#Generator/layer_normalization/mul_1Mul.Generator/layer_normalization/mul_1/x:output:06Generator/layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: o
-Generator/layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :o
-Generator/layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :‘
+Generator/layer_normalization/Reshape/shapePack6Generator/layer_normalization/Reshape/shape/0:output:0%Generator/layer_normalization/mul:z:0'Generator/layer_normalization/mul_1:z:06Generator/layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ζ
%Generator/layer_normalization/ReshapeReshape"Generator/dense_1/BiasAdd:output:04Generator/layer_normalization/Reshape/shape:output:0*
T0*1
_output_shapes
:?????????
)Generator/layer_normalization/ones/packedPack%Generator/layer_normalization/mul:z:0*
N*
T0*
_output_shapes
:m
(Generator/layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ώ
"Generator/layer_normalization/onesFill2Generator/layer_normalization/ones/packed:output:01Generator/layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:?????????
*Generator/layer_normalization/zeros/packedPack%Generator/layer_normalization/mul:z:0*
N*
T0*
_output_shapes
:n
)Generator/layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Β
#Generator/layer_normalization/zerosFill3Generator/layer_normalization/zeros/packed:output:02Generator/layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:?????????f
#Generator/layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB h
%Generator/layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB Ω
.Generator/layer_normalization/FusedBatchNormV3FusedBatchNormV3.Generator/layer_normalization/Reshape:output:0+Generator/layer_normalization/ones:output:0,Generator/layer_normalization/zeros:output:0,Generator/layer_normalization/Const:output:0.Generator/layer_normalization/Const_1:output:0*
T0*
U0*q
_output_shapes_
]:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:Θ
'Generator/layer_normalization/Reshape_1Reshape2Generator/layer_normalization/FusedBatchNormV3:y:0,Generator/layer_normalization/Shape:output:0*
T0*)
_output_shapes
:?????????¬
2Generator/layer_normalization/mul_2/ReadVariableOpReadVariableOp;generator_layer_normalization_mul_2_readvariableop_resource*
_output_shapes

:*
dtype0Μ
#Generator/layer_normalization/mul_2Mul0Generator/layer_normalization/Reshape_1:output:0:Generator/layer_normalization/mul_2/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????¨
0Generator/layer_normalization/add/ReadVariableOpReadVariableOp9generator_layer_normalization_add_readvariableop_resource*
_output_shapes

:*
dtype0Α
!Generator/layer_normalization/addAddV2'Generator/layer_normalization/mul_2:z:08Generator/layer_normalization/add/ReadVariableOp:value:0*
T0*)
_output_shapes
:?????????w
Generator/re_lu/ReluRelu%Generator/layer_normalization/add:z:0*
T0*)
_output_shapes
:?????????i
Generator/reshape/ShapeShape"Generator/re_lu/Relu:activations:0*
T0*
_output_shapes
:o
%Generator/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'Generator/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'Generator/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
Generator/reshape/strided_sliceStridedSlice Generator/reshape/Shape:output:0.Generator/reshape/strided_slice/stack:output:00Generator/reshape/strided_slice/stack_1:output:00Generator/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!Generator/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :c
!Generator/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :d
!Generator/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :
Generator/reshape/Reshape/shapePack(Generator/reshape/strided_slice:output:0*Generator/reshape/Reshape/shape/1:output:0*Generator/reshape/Reshape/shape/2:output:0*Generator/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:­
Generator/reshape/ReshapeReshape"Generator/re_lu/Relu:activations:0(Generator/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????n
Generator/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      p
Generator/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
Generator/up_sampling2d/mulMul&Generator/up_sampling2d/Const:output:0(Generator/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:Ω
-Generator/up_sampling2d/resize/ResizeBilinearResizeBilinear"Generator/reshape/Reshape:output:0Generator/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:?????????*
half_pixel_centers(€
(Generator/conv2d_4/Conv2D/ReadVariableOpReadVariableOp1generator_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ψ
Generator/conv2d_4/Conv2DConv2D>Generator/up_sampling2d/resize/ResizeBilinear:resized_images:00Generator/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

)Generator/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp2generator_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
Generator/conv2d_4/BiasAddBiasAdd"Generator/conv2d_4/Conv2D:output:01Generator/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????x
%Generator/layer_normalization_1/ShapeShape#Generator/conv2d_4/BiasAdd:output:0*
T0*
_output_shapes
:}
3Generator/layer_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Generator/layer_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Generator/layer_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ρ
-Generator/layer_normalization_1/strided_sliceStridedSlice.Generator/layer_normalization_1/Shape:output:0<Generator/layer_normalization_1/strided_slice/stack:output:0>Generator/layer_normalization_1/strided_slice/stack_1:output:0>Generator/layer_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%Generator/layer_normalization_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :³
#Generator/layer_normalization_1/mulMul.Generator/layer_normalization_1/mul/x:output:06Generator/layer_normalization_1/strided_slice:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_1/strided_slice_1StridedSlice.Generator/layer_normalization_1/Shape:output:0>Generator/layer_normalization_1/strided_slice_1/stack:output:0@Generator/layer_normalization_1/strided_slice_1/stack_1:output:0@Generator/layer_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask°
%Generator/layer_normalization_1/mul_1Mul'Generator/layer_normalization_1/mul:z:08Generator/layer_normalization_1/strided_slice_1:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_1/strided_slice_2StridedSlice.Generator/layer_normalization_1/Shape:output:0>Generator/layer_normalization_1/strided_slice_2/stack:output:0@Generator/layer_normalization_1/strided_slice_2/stack_1:output:0@Generator/layer_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
%Generator/layer_normalization_1/mul_2Mul)Generator/layer_normalization_1/mul_1:z:08Generator/layer_normalization_1/strided_slice_2:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_1/strided_slice_3StridedSlice.Generator/layer_normalization_1/Shape:output:0>Generator/layer_normalization_1/strided_slice_3/stack:output:0@Generator/layer_normalization_1/strided_slice_3/stack_1:output:0@Generator/layer_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'Generator/layer_normalization_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Ή
%Generator/layer_normalization_1/mul_3Mul0Generator/layer_normalization_1/mul_3/x:output:08Generator/layer_normalization_1/strided_slice_3:output:0*
T0*
_output_shapes
: q
/Generator/layer_normalization_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :q
/Generator/layer_normalization_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :­
-Generator/layer_normalization_1/Reshape/shapePack8Generator/layer_normalization_1/Reshape/shape/0:output:0)Generator/layer_normalization_1/mul_2:z:0)Generator/layer_normalization_1/mul_3:z:08Generator/layer_normalization_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Κ
'Generator/layer_normalization_1/ReshapeReshape#Generator/conv2d_4/BiasAdd:output:06Generator/layer_normalization_1/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????
+Generator/layer_normalization_1/ones/packedPack)Generator/layer_normalization_1/mul_2:z:0*
N*
T0*
_output_shapes
:o
*Generator/layer_normalization_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ε
$Generator/layer_normalization_1/onesFill4Generator/layer_normalization_1/ones/packed:output:03Generator/layer_normalization_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????
,Generator/layer_normalization_1/zeros/packedPack)Generator/layer_normalization_1/mul_2:z:0*
N*
T0*
_output_shapes
:p
+Generator/layer_normalization_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Θ
%Generator/layer_normalization_1/zerosFill5Generator/layer_normalization_1/zeros/packed:output:04Generator/layer_normalization_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????h
%Generator/layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB j
'Generator/layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB δ
0Generator/layer_normalization_1/FusedBatchNormV3FusedBatchNormV30Generator/layer_normalization_1/Reshape:output:0-Generator/layer_normalization_1/ones:output:0.Generator/layer_normalization_1/zeros:output:0.Generator/layer_normalization_1/Const:output:00Generator/layer_normalization_1/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:Υ
)Generator/layer_normalization_1/Reshape_1Reshape4Generator/layer_normalization_1/FusedBatchNormV3:y:0.Generator/layer_normalization_1/Shape:output:0*
T0*0
_output_shapes
:?????????―
4Generator/layer_normalization_1/mul_4/ReadVariableOpReadVariableOp=generator_layer_normalization_1_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0Ω
%Generator/layer_normalization_1/mul_4Mul2Generator/layer_normalization_1/Reshape_1:output:0<Generator/layer_normalization_1/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????«
2Generator/layer_normalization_1/add/ReadVariableOpReadVariableOp;generator_layer_normalization_1_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ξ
#Generator/layer_normalization_1/addAddV2)Generator/layer_normalization_1/mul_4:z:0:Generator/layer_normalization_1/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
Generator/re_lu_1/ReluRelu'Generator/layer_normalization_1/add:z:0*
T0*0
_output_shapes
:?????????p
Generator/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      r
!Generator/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
Generator/up_sampling2d_1/mulMul(Generator/up_sampling2d_1/Const:output:0*Generator/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:ί
/Generator/up_sampling2d_1/resize/ResizeBilinearResizeBilinear$Generator/re_lu_1/Relu:activations:0!Generator/up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:?????????*
half_pixel_centers(€
(Generator/conv2d_5/Conv2D/ReadVariableOpReadVariableOp1generator_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ϊ
Generator/conv2d_5/Conv2DConv2D@Generator/up_sampling2d_1/resize/ResizeBilinear:resized_images:00Generator/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

)Generator/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp2generator_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
Generator/conv2d_5/BiasAddBiasAdd"Generator/conv2d_5/Conv2D:output:01Generator/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????x
%Generator/layer_normalization_2/ShapeShape#Generator/conv2d_5/BiasAdd:output:0*
T0*
_output_shapes
:}
3Generator/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Generator/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Generator/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ρ
-Generator/layer_normalization_2/strided_sliceStridedSlice.Generator/layer_normalization_2/Shape:output:0<Generator/layer_normalization_2/strided_slice/stack:output:0>Generator/layer_normalization_2/strided_slice/stack_1:output:0>Generator/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%Generator/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :³
#Generator/layer_normalization_2/mulMul.Generator/layer_normalization_2/mul/x:output:06Generator/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_2/strided_slice_1StridedSlice.Generator/layer_normalization_2/Shape:output:0>Generator/layer_normalization_2/strided_slice_1/stack:output:0@Generator/layer_normalization_2/strided_slice_1/stack_1:output:0@Generator/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask°
%Generator/layer_normalization_2/mul_1Mul'Generator/layer_normalization_2/mul:z:08Generator/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_2/strided_slice_2StridedSlice.Generator/layer_normalization_2/Shape:output:0>Generator/layer_normalization_2/strided_slice_2/stack:output:0@Generator/layer_normalization_2/strided_slice_2/stack_1:output:0@Generator/layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
%Generator/layer_normalization_2/mul_2Mul)Generator/layer_normalization_2/mul_1:z:08Generator/layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_2/strided_slice_3StridedSlice.Generator/layer_normalization_2/Shape:output:0>Generator/layer_normalization_2/strided_slice_3/stack:output:0@Generator/layer_normalization_2/strided_slice_3/stack_1:output:0@Generator/layer_normalization_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'Generator/layer_normalization_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Ή
%Generator/layer_normalization_2/mul_3Mul0Generator/layer_normalization_2/mul_3/x:output:08Generator/layer_normalization_2/strided_slice_3:output:0*
T0*
_output_shapes
: q
/Generator/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :q
/Generator/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :­
-Generator/layer_normalization_2/Reshape/shapePack8Generator/layer_normalization_2/Reshape/shape/0:output:0)Generator/layer_normalization_2/mul_2:z:0)Generator/layer_normalization_2/mul_3:z:08Generator/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Κ
'Generator/layer_normalization_2/ReshapeReshape#Generator/conv2d_5/BiasAdd:output:06Generator/layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????
+Generator/layer_normalization_2/ones/packedPack)Generator/layer_normalization_2/mul_2:z:0*
N*
T0*
_output_shapes
:o
*Generator/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ε
$Generator/layer_normalization_2/onesFill4Generator/layer_normalization_2/ones/packed:output:03Generator/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????
,Generator/layer_normalization_2/zeros/packedPack)Generator/layer_normalization_2/mul_2:z:0*
N*
T0*
_output_shapes
:p
+Generator/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Θ
%Generator/layer_normalization_2/zerosFill5Generator/layer_normalization_2/zeros/packed:output:04Generator/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????h
%Generator/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB j
'Generator/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB δ
0Generator/layer_normalization_2/FusedBatchNormV3FusedBatchNormV30Generator/layer_normalization_2/Reshape:output:0-Generator/layer_normalization_2/ones:output:0.Generator/layer_normalization_2/zeros:output:0.Generator/layer_normalization_2/Const:output:00Generator/layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:Υ
)Generator/layer_normalization_2/Reshape_1Reshape4Generator/layer_normalization_2/FusedBatchNormV3:y:0.Generator/layer_normalization_2/Shape:output:0*
T0*0
_output_shapes
:?????????―
4Generator/layer_normalization_2/mul_4/ReadVariableOpReadVariableOp=generator_layer_normalization_2_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0Ω
%Generator/layer_normalization_2/mul_4Mul2Generator/layer_normalization_2/Reshape_1:output:0<Generator/layer_normalization_2/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????«
2Generator/layer_normalization_2/add/ReadVariableOpReadVariableOp;generator_layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ξ
#Generator/layer_normalization_2/addAddV2)Generator/layer_normalization_2/mul_4:z:0:Generator/layer_normalization_2/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
Generator/re_lu_2/ReluRelu'Generator/layer_normalization_2/add:z:0*
T0*0
_output_shapes
:?????????p
Generator/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      r
!Generator/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
Generator/up_sampling2d_2/mulMul(Generator/up_sampling2d_2/Const:output:0*Generator/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:ί
/Generator/up_sampling2d_2/resize/ResizeBilinearResizeBilinear$Generator/re_lu_2/Relu:activations:0!Generator/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:?????????  *
half_pixel_centers(€
(Generator/conv2d_6/Conv2D/ReadVariableOpReadVariableOp1generator_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ϊ
Generator/conv2d_6/Conv2DConv2D@Generator/up_sampling2d_2/resize/ResizeBilinear:resized_images:00Generator/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  *
paddingSAME*
strides

)Generator/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp2generator_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
Generator/conv2d_6/BiasAddBiasAdd"Generator/conv2d_6/Conv2D:output:01Generator/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  x
%Generator/layer_normalization_3/ShapeShape#Generator/conv2d_6/BiasAdd:output:0*
T0*
_output_shapes
:}
3Generator/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Generator/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Generator/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ρ
-Generator/layer_normalization_3/strided_sliceStridedSlice.Generator/layer_normalization_3/Shape:output:0<Generator/layer_normalization_3/strided_slice/stack:output:0>Generator/layer_normalization_3/strided_slice/stack_1:output:0>Generator/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%Generator/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :³
#Generator/layer_normalization_3/mulMul.Generator/layer_normalization_3/mul/x:output:06Generator/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_3/strided_slice_1StridedSlice.Generator/layer_normalization_3/Shape:output:0>Generator/layer_normalization_3/strided_slice_1/stack:output:0@Generator/layer_normalization_3/strided_slice_1/stack_1:output:0@Generator/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask°
%Generator/layer_normalization_3/mul_1Mul'Generator/layer_normalization_3/mul:z:08Generator/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_3/strided_slice_2StridedSlice.Generator/layer_normalization_3/Shape:output:0>Generator/layer_normalization_3/strided_slice_2/stack:output:0@Generator/layer_normalization_3/strided_slice_2/stack_1:output:0@Generator/layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
%Generator/layer_normalization_3/mul_2Mul)Generator/layer_normalization_3/mul_1:z:08Generator/layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: 
5Generator/layer_normalization_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7Generator/layer_normalization_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Generator/layer_normalization_3/strided_slice_3StridedSlice.Generator/layer_normalization_3/Shape:output:0>Generator/layer_normalization_3/strided_slice_3/stack:output:0@Generator/layer_normalization_3/strided_slice_3/stack_1:output:0@Generator/layer_normalization_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'Generator/layer_normalization_3/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Ή
%Generator/layer_normalization_3/mul_3Mul0Generator/layer_normalization_3/mul_3/x:output:08Generator/layer_normalization_3/strided_slice_3:output:0*
T0*
_output_shapes
: q
/Generator/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :q
/Generator/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :­
-Generator/layer_normalization_3/Reshape/shapePack8Generator/layer_normalization_3/Reshape/shape/0:output:0)Generator/layer_normalization_3/mul_2:z:0)Generator/layer_normalization_3/mul_3:z:08Generator/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Κ
'Generator/layer_normalization_3/ReshapeReshape#Generator/conv2d_6/BiasAdd:output:06Generator/layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????
+Generator/layer_normalization_3/ones/packedPack)Generator/layer_normalization_3/mul_2:z:0*
N*
T0*
_output_shapes
:o
*Generator/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ε
$Generator/layer_normalization_3/onesFill4Generator/layer_normalization_3/ones/packed:output:03Generator/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????
,Generator/layer_normalization_3/zeros/packedPack)Generator/layer_normalization_3/mul_2:z:0*
N*
T0*
_output_shapes
:p
+Generator/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Θ
%Generator/layer_normalization_3/zerosFill5Generator/layer_normalization_3/zeros/packed:output:04Generator/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????h
%Generator/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB j
'Generator/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB δ
0Generator/layer_normalization_3/FusedBatchNormV3FusedBatchNormV30Generator/layer_normalization_3/Reshape:output:0-Generator/layer_normalization_3/ones:output:0.Generator/layer_normalization_3/zeros:output:0.Generator/layer_normalization_3/Const:output:00Generator/layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:Υ
)Generator/layer_normalization_3/Reshape_1Reshape4Generator/layer_normalization_3/FusedBatchNormV3:y:0.Generator/layer_normalization_3/Shape:output:0*
T0*0
_output_shapes
:?????????  ―
4Generator/layer_normalization_3/mul_4/ReadVariableOpReadVariableOp=generator_layer_normalization_3_mul_4_readvariableop_resource*
_output_shapes	
:*
dtype0Ω
%Generator/layer_normalization_3/mul_4Mul2Generator/layer_normalization_3/Reshape_1:output:0<Generator/layer_normalization_3/mul_4/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  «
2Generator/layer_normalization_3/add/ReadVariableOpReadVariableOp;generator_layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ξ
#Generator/layer_normalization_3/addAddV2)Generator/layer_normalization_3/mul_4:z:0:Generator/layer_normalization_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  
Generator/re_lu_3/ReluRelu'Generator/layer_normalization_3/add:z:0*
T0*0
_output_shapes
:?????????  p
Generator/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"        r
!Generator/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
Generator/up_sampling2d_3/mulMul(Generator/up_sampling2d_3/Const:output:0*Generator/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:ί
/Generator/up_sampling2d_3/resize/ResizeBilinearResizeBilinear$Generator/re_lu_3/Relu:activations:0!Generator/up_sampling2d_3/mul:z:0*
T0*0
_output_shapes
:?????????@@*
half_pixel_centers(£
(Generator/conv2d_7/Conv2D/ReadVariableOpReadVariableOp1generator_conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0ω
Generator/conv2d_7/Conv2DConv2D@Generator/up_sampling2d_3/resize/ResizeBilinear:resized_images:00Generator/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides

)Generator/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp2generator_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ά
Generator/conv2d_7/BiasAddBiasAdd"Generator/conv2d_7/Conv2D:output:01Generator/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@~
Generator/conv2d_7/TanhTanh#Generator/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@r
IdentityIdentityGenerator/conv2d_7/Tanh:y:0^NoOp*
T0*/
_output_shapes
:?????????@@£
NoOpNoOp*^Generator/conv2d_4/BiasAdd/ReadVariableOp)^Generator/conv2d_4/Conv2D/ReadVariableOp*^Generator/conv2d_5/BiasAdd/ReadVariableOp)^Generator/conv2d_5/Conv2D/ReadVariableOp*^Generator/conv2d_6/BiasAdd/ReadVariableOp)^Generator/conv2d_6/Conv2D/ReadVariableOp*^Generator/conv2d_7/BiasAdd/ReadVariableOp)^Generator/conv2d_7/Conv2D/ReadVariableOp)^Generator/dense_1/BiasAdd/ReadVariableOp(^Generator/dense_1/MatMul/ReadVariableOp1^Generator/layer_normalization/add/ReadVariableOp3^Generator/layer_normalization/mul_2/ReadVariableOp3^Generator/layer_normalization_1/add/ReadVariableOp5^Generator/layer_normalization_1/mul_4/ReadVariableOp3^Generator/layer_normalization_2/add/ReadVariableOp5^Generator/layer_normalization_2/mul_4/ReadVariableOp3^Generator/layer_normalization_3/add/ReadVariableOp5^Generator/layer_normalization_3/mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 2V
)Generator/conv2d_4/BiasAdd/ReadVariableOp)Generator/conv2d_4/BiasAdd/ReadVariableOp2T
(Generator/conv2d_4/Conv2D/ReadVariableOp(Generator/conv2d_4/Conv2D/ReadVariableOp2V
)Generator/conv2d_5/BiasAdd/ReadVariableOp)Generator/conv2d_5/BiasAdd/ReadVariableOp2T
(Generator/conv2d_5/Conv2D/ReadVariableOp(Generator/conv2d_5/Conv2D/ReadVariableOp2V
)Generator/conv2d_6/BiasAdd/ReadVariableOp)Generator/conv2d_6/BiasAdd/ReadVariableOp2T
(Generator/conv2d_6/Conv2D/ReadVariableOp(Generator/conv2d_6/Conv2D/ReadVariableOp2V
)Generator/conv2d_7/BiasAdd/ReadVariableOp)Generator/conv2d_7/BiasAdd/ReadVariableOp2T
(Generator/conv2d_7/Conv2D/ReadVariableOp(Generator/conv2d_7/Conv2D/ReadVariableOp2T
(Generator/dense_1/BiasAdd/ReadVariableOp(Generator/dense_1/BiasAdd/ReadVariableOp2R
'Generator/dense_1/MatMul/ReadVariableOp'Generator/dense_1/MatMul/ReadVariableOp2d
0Generator/layer_normalization/add/ReadVariableOp0Generator/layer_normalization/add/ReadVariableOp2h
2Generator/layer_normalization/mul_2/ReadVariableOp2Generator/layer_normalization/mul_2/ReadVariableOp2h
2Generator/layer_normalization_1/add/ReadVariableOp2Generator/layer_normalization_1/add/ReadVariableOp2l
4Generator/layer_normalization_1/mul_4/ReadVariableOp4Generator/layer_normalization_1/mul_4/ReadVariableOp2h
2Generator/layer_normalization_2/add/ReadVariableOp2Generator/layer_normalization_2/add/ReadVariableOp2l
4Generator/layer_normalization_2/mul_4/ReadVariableOp4Generator/layer_normalization_2/mul_4/ReadVariableOp2h
2Generator/layer_normalization_3/add/ReadVariableOp2Generator/layer_normalization_3/add/ReadVariableOp2l
4Generator/layer_normalization_3/mul_4/ReadVariableOp4Generator/layer_normalization_3/mul_4/ReadVariableOp:Q M
(
_output_shapes
:?????????
!
_user_specified_name	input_2

i
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12709965

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Σ
a
E__inference_reshape_layer_call_and_return_conditional_losses_12708186

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
Ξ
£
8__inference_layer_normalization_3_layer_call_fn_12709886

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCall
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
GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12708421
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ΐP
Τ	
G__inference_Generator_layer_call_and_return_conditional_losses_12708909
input_2%
dense_1_12708854: 
dense_1_12708856:
,
layer_normalization_12708859:
,
layer_normalization_12708861:
-
conv2d_4_12708867: 
conv2d_4_12708869:	-
layer_normalization_1_12708872:	-
layer_normalization_1_12708874:	-
conv2d_5_12708879: 
conv2d_5_12708881:	-
layer_normalization_2_12708884:	-
layer_normalization_2_12708886:	-
conv2d_6_12708891: 
conv2d_6_12708893:	-
layer_normalization_3_12708896:	-
layer_normalization_3_12708898:	,
conv2d_7_12708903:
conv2d_7_12708905:
identity’ conv2d_4/StatefulPartitionedCall’ conv2d_5/StatefulPartitionedCall’ conv2d_6/StatefulPartitionedCall’ conv2d_7/StatefulPartitionedCall’dense_1/StatefulPartitionedCall’+layer_normalization/StatefulPartitionedCall’-layer_normalization_1/StatefulPartitionedCall’-layer_normalization_2/StatefulPartitionedCall’-layer_normalization_3/StatefulPartitionedCallψ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_12708854dense_1_12708856*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_12708111Ι
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_12708859layer_normalization_12708861*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12708159η
re_lu/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_layer_call_and_return_conditional_losses_12708170ά
reshape/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12708186ό
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12708034΄
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_4_12708867conv2d_4_12708869*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12708199λ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0layer_normalization_1_12708872layer_normalization_1_12708874*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12708257
re_lu_1/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12708268
up_sampling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12708053Ά
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_12708879conv2d_5_12708881*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12708281λ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0layer_normalization_2_12708884layer_normalization_2_12708886*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12708339
re_lu_2/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12708350
up_sampling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
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
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12708072Ά
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_6_12708891conv2d_6_12708893*
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
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12708363λ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0layer_normalization_3_12708896layer_normalization_3_12708898*
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
GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12708421
re_lu_3/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12708432
up_sampling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
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
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12708091΅
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_7_12708903conv2d_7_12708905*
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
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12708446
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????²
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:Q M
(
_output_shapes
:?????????
!
_user_specified_name	input_2
Ώ
N
2__inference_up_sampling2d_3_layer_call_fn_12709953

inputs
identityή
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
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12708091
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ά
ϊ
,__inference_Generator_layer_call_fn_12708492
input_2
unknown:
	unknown_0:

	unknown_1:

	unknown_2:
%
	unknown_3:
	unknown_4:	
	unknown_5:	
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:	

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:	

unknown_14:	%

unknown_15:

unknown_16:
identity’StatefulPartitionedCallΡ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_Generator_layer_call_and_return_conditional_losses_12708453
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:?????????
!
_user_specified_name	input_2
΅
a
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12708432

inputs
identitya
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????u
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,???????????????????????????:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs

i
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12708072

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:§
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Η*
ψ
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12708339

inputs,
mul_4_readvariableop_resource:	*
add_readvariableop_resource:	
identity’add/ReadVariableOp’mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB €
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*p
_output_shapes^
\:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o:
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*B
_output_shapes0
.:,???????????????????????????o
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes	
:*
dtype0
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????k
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:*
dtype0
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????q
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????r
NoOpNoOp^add/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Ώ
N
2__inference_up_sampling2d_1_layer_call_fn_12709739

inputs
identityή
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
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12708053
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
η
£
6__inference_layer_normalization_layer_call_fn_12709556

inputs
unknown:

	unknown_0:

identity’StatefulPartitionedCallλ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12708159q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:?????????
 
_user_specified_nameinputs
Ξ
£
8__inference_layer_normalization_2_layer_call_fn_12709779

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12708339
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
½P
Σ	
G__inference_Generator_layer_call_and_return_conditional_losses_12708713

inputs%
dense_1_12708658: 
dense_1_12708660:
,
layer_normalization_12708663:
,
layer_normalization_12708665:
-
conv2d_4_12708671: 
conv2d_4_12708673:	-
layer_normalization_1_12708676:	-
layer_normalization_1_12708678:	-
conv2d_5_12708683: 
conv2d_5_12708685:	-
layer_normalization_2_12708688:	-
layer_normalization_2_12708690:	-
conv2d_6_12708695: 
conv2d_6_12708697:	-
layer_normalization_3_12708700:	-
layer_normalization_3_12708702:	,
conv2d_7_12708707:
conv2d_7_12708709:
identity’ conv2d_4/StatefulPartitionedCall’ conv2d_5/StatefulPartitionedCall’ conv2d_6/StatefulPartitionedCall’ conv2d_7/StatefulPartitionedCall’dense_1/StatefulPartitionedCall’+layer_normalization/StatefulPartitionedCall’-layer_normalization_1/StatefulPartitionedCall’-layer_normalization_2/StatefulPartitionedCall’-layer_normalization_3/StatefulPartitionedCallχ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_12708658dense_1_12708660*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_12708111Ι
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_12708663layer_normalization_12708665*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12708159η
re_lu/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_re_lu_layer_call_and_return_conditional_losses_12708170ά
reshape/PartitionedCallPartitionedCallre_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12708186ό
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12708034΄
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_4_12708671conv2d_4_12708673*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12708199λ
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0layer_normalization_1_12708676layer_normalization_1_12708678*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12708257
re_lu_1/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12708268
up_sampling2d_1/PartitionedCallPartitionedCall re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12708053Ά
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_5_12708683conv2d_5_12708685*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12708281λ
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0layer_normalization_2_12708688layer_normalization_2_12708690*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12708339
re_lu_2/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12708350
up_sampling2d_2/PartitionedCallPartitionedCall re_lu_2/PartitionedCall:output:0*
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
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12708072Ά
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0conv2d_6_12708695conv2d_6_12708697*
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
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12708363λ
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0layer_normalization_3_12708700layer_normalization_3_12708702*
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
GPU2*0J 8 *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12708421
re_lu_3/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12708432
up_sampling2d_3/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
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
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12708091΅
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0conv2d_7_12708707conv2d_7_12708709*
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
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12708446
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????²
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs"΅	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*΄
serving_default 
<
input_21
serving_default_input_2:0?????????D
conv2d_78
StatefulPartitionedCall:0?????????@@tensorflow/serving/predict:ϋ
³
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
Δ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)axis
	*gamma
+beta"
_tf_keras_layer
₯
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op"
_tf_keras_layer
Δ
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
Maxis
	Ngamma
Obeta"
_tf_keras_layer
₯
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op"
_tf_keras_layer
Δ
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta"
_tf_keras_layer
₯
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
ΰ
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
Ν
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
! _jit_compiled_convolution_op"
_tf_keras_layer
¬
!0
"1
*2
+3
D4
E5
N6
O7
b8
c9
l10
m11
12
13
14
15
16
17"
trackable_list_wrapper
¬
!0
"1
*2
+3
D4
E5
N6
O7
b8
c9
l10
m11
12
13
14
15
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
‘non_trainable_variables
’layers
£metrics
 €layer_regularization_losses
₯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ν
¦trace_0
§trace_1
¨trace_2
©trace_32ϊ
,__inference_Generator_layer_call_fn_12708492
,__inference_Generator_layer_call_fn_12708993
,__inference_Generator_layer_call_fn_12709034
,__inference_Generator_layer_call_fn_12708793Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z¦trace_0z§trace_1z¨trace_2z©trace_3
Ω
ͺtrace_0
«trace_1
¬trace_2
­trace_32ζ
G__inference_Generator_layer_call_and_return_conditional_losses_12709281
G__inference_Generator_layer_call_and_return_conditional_losses_12709528
G__inference_Generator_layer_call_and_return_conditional_losses_12708851
G__inference_Generator_layer_call_and_return_conditional_losses_12708909Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zͺtrace_0z«trace_1z¬trace_2z­trace_3
ΞBΛ
#__inference__wrapped_model_12708018input_2"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
-
?serving_default"
signature_map
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
―non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
π
΄trace_02Ρ
*__inference_dense_1_layer_call_fn_12709537’
²
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
annotationsͺ *
 z΄trace_0

΅trace_02μ
E__inference_dense_1_layer_call_and_return_conditional_losses_12709547’
²
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
annotationsͺ *
 z΅trace_0
#:!2dense_1/kernel
:2dense_1/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Άnon_trainable_variables
·layers
Έmetrics
 Ήlayer_regularization_losses
Ίlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
ό
»trace_02έ
6__inference_layer_normalization_layer_call_fn_12709556’
²
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
annotationsͺ *
 z»trace_0

Όtrace_02ψ
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12709598’
²
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
annotationsͺ *
 zΌtrace_0
 "
trackable_list_wrapper
):'2layer_normalization/gamma
(:&2layer_normalization/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
½non_trainable_variables
Ύlayers
Ώmetrics
 ΐlayer_regularization_losses
Αlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
ξ
Βtrace_02Ο
(__inference_re_lu_layer_call_fn_12709603’
²
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
annotationsͺ *
 zΒtrace_0

Γtrace_02κ
C__inference_re_lu_layer_call_and_return_conditional_losses_12709608’
²
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
annotationsͺ *
 zΓtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Δnon_trainable_variables
Εlayers
Ζmetrics
 Ηlayer_regularization_losses
Θlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
π
Ιtrace_02Ρ
*__inference_reshape_layer_call_fn_12709613’
²
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
annotationsͺ *
 zΙtrace_0

Κtrace_02μ
E__inference_reshape_layer_call_and_return_conditional_losses_12709627’
²
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
annotationsͺ *
 zΚtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Λnon_trainable_variables
Μlayers
Νmetrics
 Ξlayer_regularization_losses
Οlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
φ
Πtrace_02Χ
0__inference_up_sampling2d_layer_call_fn_12709632’
²
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
annotationsͺ *
 zΠtrace_0

Ρtrace_02ς
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12709644’
²
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
annotationsͺ *
 zΡtrace_0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
?non_trainable_variables
Σlayers
Τmetrics
 Υlayer_regularization_losses
Φlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ρ
Χtrace_02?
+__inference_conv2d_4_layer_call_fn_12709653’
²
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
annotationsͺ *
 zΧtrace_0

Ψtrace_02ν
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12709663’
²
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
annotationsͺ *
 zΨtrace_0
+:)2conv2d_4/kernel
:2conv2d_4/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ωnon_trainable_variables
Ϊlayers
Ϋmetrics
 άlayer_regularization_losses
έlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ώ
ήtrace_02ί
8__inference_layer_normalization_1_layer_call_fn_12709672’
²
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
annotationsͺ *
 zήtrace_0

ίtrace_02ϊ
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12709724’
²
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
annotationsͺ *
 zίtrace_0
 "
trackable_list_wrapper
*:(2layer_normalization_1/gamma
):'2layer_normalization_1/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ΰnon_trainable_variables
αlayers
βmetrics
 γlayer_regularization_losses
δlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
π
εtrace_02Ρ
*__inference_re_lu_1_layer_call_fn_12709729’
²
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
annotationsͺ *
 zεtrace_0

ζtrace_02μ
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12709734’
²
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
annotationsͺ *
 zζtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ηnon_trainable_variables
θlayers
ιmetrics
 κlayer_regularization_losses
λlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ψ
μtrace_02Ω
2__inference_up_sampling2d_1_layer_call_fn_12709739’
²
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
annotationsͺ *
 zμtrace_0

νtrace_02τ
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12709751’
²
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
annotationsͺ *
 zνtrace_0
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ξnon_trainable_variables
οlayers
πmetrics
 ρlayer_regularization_losses
ςlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
ρ
σtrace_02?
+__inference_conv2d_5_layer_call_fn_12709760’
²
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
annotationsͺ *
 zσtrace_0

τtrace_02ν
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12709770’
²
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
annotationsͺ *
 zτtrace_0
+:)2conv2d_5/kernel
:2conv2d_5/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
υnon_trainable_variables
φlayers
χmetrics
 ψlayer_regularization_losses
ωlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
ώ
ϊtrace_02ί
8__inference_layer_normalization_2_layer_call_fn_12709779’
²
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
annotationsͺ *
 zϊtrace_0

ϋtrace_02ϊ
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12709831’
²
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
annotationsͺ *
 zϋtrace_0
 "
trackable_list_wrapper
*:(2layer_normalization_2/gamma
):'2layer_normalization_2/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
όnon_trainable_variables
ύlayers
ώmetrics
 ?layer_regularization_losses
layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
π
trace_02Ρ
*__inference_re_lu_2_layer_call_fn_12709836’
²
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
annotationsͺ *
 ztrace_0

trace_02μ
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12709841’
²
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
annotationsͺ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
ψ
trace_02Ω
2__inference_up_sampling2d_2_layer_call_fn_12709846’
²
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
annotationsͺ *
 ztrace_0

trace_02τ
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12709858’
²
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
annotationsͺ *
 ztrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ρ
trace_02?
+__inference_conv2d_6_layer_call_fn_12709867’
²
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
annotationsͺ *
 ztrace_0

trace_02ν
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12709877’
²
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
annotationsͺ *
 ztrace_0
+:)2conv2d_6/kernel
:2conv2d_6/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ώ
trace_02ί
8__inference_layer_normalization_3_layer_call_fn_12709886’
²
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
annotationsͺ *
 ztrace_0

trace_02ϊ
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12709938’
²
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
annotationsͺ *
 ztrace_0
 "
trackable_list_wrapper
*:(2layer_normalization_3/gamma
):'2layer_normalization_3/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
π
trace_02Ρ
*__inference_re_lu_3_layer_call_fn_12709943’
²
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
annotationsͺ *
 ztrace_0

trace_02μ
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12709948’
²
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
annotationsͺ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
 layers
‘metrics
 ’layer_regularization_losses
£layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ψ
€trace_02Ω
2__inference_up_sampling2d_3_layer_call_fn_12709953’
²
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
annotationsͺ *
 z€trace_0

₯trace_02τ
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12709965’
²
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
annotationsͺ *
 z₯trace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ρ
«trace_02?
+__inference_conv2d_7_layer_call_fn_12709974’
²
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
annotationsͺ *
 z«trace_0

¬trace_02ν
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12709985’
²
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
annotationsͺ *
 z¬trace_0
*:(2conv2d_7/kernel
:2conv2d_7/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
¦
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
17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ώBϋ
,__inference_Generator_layer_call_fn_12708492input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ύBϊ
,__inference_Generator_layer_call_fn_12708993inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ύBϊ
,__inference_Generator_layer_call_fn_12709034inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ώBϋ
,__inference_Generator_layer_call_fn_12708793input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_Generator_layer_call_and_return_conditional_losses_12709281inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_Generator_layer_call_and_return_conditional_losses_12709528inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_Generator_layer_call_and_return_conditional_losses_12708851input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_Generator_layer_call_and_return_conditional_losses_12708909input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ΝBΚ
&__inference_signature_wrapper_12708952input_2"
²
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
annotationsͺ *
 
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
ήBΫ
*__inference_dense_1_layer_call_fn_12709537inputs"’
²
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
annotationsͺ *
 
ωBφ
E__inference_dense_1_layer_call_and_return_conditional_losses_12709547inputs"’
²
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
annotationsͺ *
 
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
κBη
6__inference_layer_normalization_layer_call_fn_12709556inputs"’
²
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
annotationsͺ *
 
B
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12709598inputs"’
²
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
annotationsͺ *
 
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
άBΩ
(__inference_re_lu_layer_call_fn_12709603inputs"’
²
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
annotationsͺ *
 
χBτ
C__inference_re_lu_layer_call_and_return_conditional_losses_12709608inputs"’
²
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
annotationsͺ *
 
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
ήBΫ
*__inference_reshape_layer_call_fn_12709613inputs"’
²
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
annotationsͺ *
 
ωBφ
E__inference_reshape_layer_call_and_return_conditional_losses_12709627inputs"’
²
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
annotationsͺ *
 
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
δBα
0__inference_up_sampling2d_layer_call_fn_12709632inputs"’
²
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
annotationsͺ *
 
?Bό
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12709644inputs"’
²
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
annotationsͺ *
 
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
ίBά
+__inference_conv2d_4_layer_call_fn_12709653inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12709663inputs"’
²
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
annotationsͺ *
 
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
μBι
8__inference_layer_normalization_1_layer_call_fn_12709672inputs"’
²
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
annotationsͺ *
 
B
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12709724inputs"’
²
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
annotationsͺ *
 
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
ήBΫ
*__inference_re_lu_1_layer_call_fn_12709729inputs"’
²
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
annotationsͺ *
 
ωBφ
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12709734inputs"’
²
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
annotationsͺ *
 
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
ζBγ
2__inference_up_sampling2d_1_layer_call_fn_12709739inputs"’
²
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
annotationsͺ *
 
Bώ
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12709751inputs"’
²
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
annotationsͺ *
 
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
ίBά
+__inference_conv2d_5_layer_call_fn_12709760inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12709770inputs"’
²
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
annotationsͺ *
 
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
μBι
8__inference_layer_normalization_2_layer_call_fn_12709779inputs"’
²
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
annotationsͺ *
 
B
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12709831inputs"’
²
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
annotationsͺ *
 
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
ήBΫ
*__inference_re_lu_2_layer_call_fn_12709836inputs"’
²
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
annotationsͺ *
 
ωBφ
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12709841inputs"’
²
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
annotationsͺ *
 
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
ζBγ
2__inference_up_sampling2d_2_layer_call_fn_12709846inputs"’
²
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
annotationsͺ *
 
Bώ
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12709858inputs"’
²
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
annotationsͺ *
 
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
ίBά
+__inference_conv2d_6_layer_call_fn_12709867inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12709877inputs"’
²
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
annotationsͺ *
 
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
μBι
8__inference_layer_normalization_3_layer_call_fn_12709886inputs"’
²
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
annotationsͺ *
 
B
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12709938inputs"’
²
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
annotationsͺ *
 
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
ήBΫ
*__inference_re_lu_3_layer_call_fn_12709943inputs"’
²
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
annotationsͺ *
 
ωBφ
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12709948inputs"’
²
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
annotationsͺ *
 
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
ζBγ
2__inference_up_sampling2d_3_layer_call_fn_12709953inputs"’
²
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
annotationsͺ *
 
Bώ
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12709965inputs"’
²
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
annotationsͺ *
 
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
ίBά
+__inference_conv2d_7_layer_call_fn_12709974inputs"’
²
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
annotationsͺ *
 
ϊBχ
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12709985inputs"’
²
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
annotationsͺ *
 β
G__inference_Generator_layer_call_and_return_conditional_losses_12708851!"*+DENObclm9’6
/’,
"
input_2?????????
p 

 
ͺ "?’<
52
0+???????????????????????????
 β
G__inference_Generator_layer_call_and_return_conditional_losses_12708909!"*+DENObclm9’6
/’,
"
input_2?????????
p

 
ͺ "?’<
52
0+???????????????????????????
 Ο
G__inference_Generator_layer_call_and_return_conditional_losses_12709281!"*+DENObclm8’5
.’+
!
inputs?????????
p 

 
ͺ "-’*
# 
0?????????@@
 Ο
G__inference_Generator_layer_call_and_return_conditional_losses_12709528!"*+DENObclm8’5
.’+
!
inputs?????????
p

 
ͺ "-’*
# 
0?????????@@
 Ί
,__inference_Generator_layer_call_fn_12708492!"*+DENObclm9’6
/’,
"
input_2?????????
p 

 
ͺ "2/+???????????????????????????Ί
,__inference_Generator_layer_call_fn_12708793!"*+DENObclm9’6
/’,
"
input_2?????????
p

 
ͺ "2/+???????????????????????????Ή
,__inference_Generator_layer_call_fn_12708993!"*+DENObclm8’5
.’+
!
inputs?????????
p 

 
ͺ "2/+???????????????????????????Ή
,__inference_Generator_layer_call_fn_12709034!"*+DENObclm8’5
.’+
!
inputs?????????
p

 
ͺ "2/+???????????????????????????²
#__inference__wrapped_model_12708018!"*+DENObclm1’.
'’$
"
input_2?????????
ͺ ";ͺ8
6
conv2d_7*'
conv2d_7?????????@@έ
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12709663DEJ’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 ΅
+__inference_conv2d_4_layer_call_fn_12709653DEJ’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????έ
F__inference_conv2d_5_layer_call_and_return_conditional_losses_12709770bcJ’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 ΅
+__inference_conv2d_5_layer_call_fn_12709760bcJ’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????ί
F__inference_conv2d_6_layer_call_and_return_conditional_losses_12709877J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 ·
+__inference_conv2d_6_layer_call_fn_12709867J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????ή
F__inference_conv2d_7_layer_call_and_return_conditional_losses_12709985J’G
@’=
;8
inputs,???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 Ά
+__inference_conv2d_7_layer_call_fn_12709974J’G
@’=
;8
inputs,???????????????????????????
ͺ "2/+???????????????????????????¨
E__inference_dense_1_layer_call_and_return_conditional_losses_12709547_!"0’-
&’#
!
inputs?????????
ͺ "'’$

0?????????
 
*__inference_dense_1_layer_call_fn_12709537R!"0’-
&’#
!
inputs?????????
ͺ "?????????κ
S__inference_layer_normalization_1_layer_call_and_return_conditional_losses_12709724NOJ’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 Β
8__inference_layer_normalization_1_layer_call_fn_12709672NOJ’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????κ
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_12709831lmJ’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 Β
8__inference_layer_normalization_2_layer_call_fn_12709779lmJ’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????μ
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_12709938J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 Δ
8__inference_layer_normalization_3_layer_call_fn_12709886J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????΅
Q__inference_layer_normalization_layer_call_and_return_conditional_losses_12709598`*+1’.
'’$
"
inputs?????????
ͺ "'’$

0?????????
 
6__inference_layer_normalization_layer_call_fn_12709556S*+1’.
'’$
"
inputs?????????
ͺ "?????????Ψ
E__inference_re_lu_1_layer_call_and_return_conditional_losses_12709734J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 °
*__inference_re_lu_1_layer_call_fn_12709729J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????Ψ
E__inference_re_lu_2_layer_call_and_return_conditional_losses_12709841J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 °
*__inference_re_lu_2_layer_call_fn_12709836J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????Ψ
E__inference_re_lu_3_layer_call_and_return_conditional_losses_12709948J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 °
*__inference_re_lu_3_layer_call_fn_12709943J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????£
C__inference_re_lu_layer_call_and_return_conditional_losses_12709608\1’.
'’$
"
inputs?????????
ͺ "'’$

0?????????
 {
(__inference_re_lu_layer_call_fn_12709603O1’.
'’$
"
inputs?????????
ͺ "?????????¬
E__inference_reshape_layer_call_and_return_conditional_losses_12709627c1’.
'’$
"
inputs?????????
ͺ ".’+
$!
0?????????
 
*__inference_reshape_layer_call_fn_12709613V1’.
'’$
"
inputs?????????
ͺ "!?????????ΐ
&__inference_signature_wrapper_12708952!"*+DENObclm<’9
’ 
2ͺ/
-
input_2"
input_2?????????";ͺ8
6
conv2d_7*'
conv2d_7?????????@@π
M__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_12709751R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Θ
2__inference_up_sampling2d_1_layer_call_fn_12709739R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????π
M__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_12709858R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Θ
2__inference_up_sampling2d_2_layer_call_fn_12709846R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????π
M__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12709965R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Θ
2__inference_up_sampling2d_3_layer_call_fn_12709953R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_up_sampling2d_layer_call_and_return_conditional_losses_12709644R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_up_sampling2d_layer_call_fn_12709632R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????