??
??
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
|
conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1/kernel
u
 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*&
_output_shapes
:*
dtype0
l

conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
conv1/bias
e
conv1/bias/Read/ReadVariableOpReadVariableOp
conv1/bias*
_output_shapes
:*
dtype0
u
Dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?

*
shared_nameDense/kernel
n
 Dense/kernel/Read/ReadVariableOpReadVariableOpDense/kernel*
_output_shapes
:	?

*
dtype0
l

Dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
Dense/bias
e
Dense/bias/Read/ReadVariableOpReadVariableOp
Dense/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/conv1/kernel/m
?
'Adam/conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/conv1/bias/m
s
%Adam/conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1/bias/m*
_output_shapes
:*
dtype0
?
Adam/Dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?

*$
shared_nameAdam/Dense/kernel/m
|
'Adam/Dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense/kernel/m*
_output_shapes
:	?

*
dtype0
z
Adam/Dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/Dense/bias/m
s
%Adam/Dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/conv1/kernel/v
?
'Adam/conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/conv1/bias/v
s
%Adam/conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1/bias/v*
_output_shapes
:*
dtype0
?
Adam/Dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?

*$
shared_nameAdam/Dense/kernel/v
|
'Adam/Dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense/kernel/v*
_output_shapes
:	?

*
dtype0
z
Adam/Dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/Dense/bias/v
s
%Adam/Dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
h


kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
?
iter

beta_1

beta_2
	decay
learning_rate
m>m?m@mA
vBvCvDvE
 


0
1
2
3


0
1
2
3
?
metrics
regularization_losses
 layer_metrics
	variables
!non_trainable_variables

"layers
#layer_regularization_losses
trainable_variables
 
XV
VARIABLE_VALUEconv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 


0
1


0
1
?
$metrics
regularization_losses
%layer_metrics
&non_trainable_variables
	variables

'layers
(layer_regularization_losses
trainable_variables
 
 
 
?
)metrics
regularization_losses
*layer_metrics
+non_trainable_variables
	variables

,layers
-layer_regularization_losses
trainable_variables
XV
VARIABLE_VALUEDense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
.metrics
regularization_losses
/layer_metrics
0non_trainable_variables
	variables

1layers
2layer_regularization_losses
trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

30
41
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	5total
	6count
7	variables
8	keras_api
D
	9total
	:count
;
_fn_kwargs
<	variables
=	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

50
61

7	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

90
:1

<	variables
{y
VARIABLE_VALUEAdam/conv1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv1_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1_inputconv1/kernel
conv1/biasDense/kernel
Dense/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_41001
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv1/kernel/Read/ReadVariableOpconv1/bias/Read/ReadVariableOp Dense/kernel/Read/ReadVariableOpDense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/conv1/kernel/m/Read/ReadVariableOp%Adam/conv1/bias/m/Read/ReadVariableOp'Adam/Dense/kernel/m/Read/ReadVariableOp%Adam/Dense/bias/m/Read/ReadVariableOp'Adam/conv1/kernel/v/Read/ReadVariableOp%Adam/conv1/bias/v/Read/ReadVariableOp'Adam/Dense/kernel/v/Read/ReadVariableOp%Adam/Dense/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_41201
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1/kernel
conv1/biasDense/kernel
Dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1/kernel/mAdam/conv1/bias/mAdam/Dense/kernel/mAdam/Dense/bias/mAdam/conv1/kernel/vAdam/conv1/bias/vAdam/Dense/kernel/vAdam/Dense/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_41274Ǔ
?
?
,__inference_sequential_1_layer_call_fn_41027

inputs!
unknown:
	unknown_0:
	unknown_1:	?


	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_409262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_40980
conv1_input%
conv1_40968:
conv1_40970:
dense_40974:	?


dense_40976:

identity??Dense/StatefulPartitionedCall?conv1/StatefulPartitionedCall?
conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_40968conv1_40970*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_408282
conv1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_408402
flatten_1/PartitionedCall?
Dense/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_40974dense_40976*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_408522
Dense/StatefulPartitionedCall?
IdentityIdentity&Dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^Dense/StatefulPartitionedCall^conv1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2>
Dense/StatefulPartitionedCallDense/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameconv1_input
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_41096

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????H  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????
2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_41046

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?

3
%dense_biasadd_readvariableop_resource:

identity??Dense/BiasAdd/ReadVariableOp?Dense/MatMul/ReadVariableOp?conv1/BiasAdd/ReadVariableOp?conv1/Conv2D/ReadVariableOp?
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv1/Conv2D/ReadVariableOp?
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv1/Conv2D?
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv1/BiasAdd/ReadVariableOp?
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv1/BiasAddr

conv1/ReluReluconv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2

conv1/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????H  2
flatten_1/Const?
flatten_1/ReshapeReshapeconv1/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????
2
flatten_1/Reshape?
Dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?

*
dtype02
Dense/MatMul/ReadVariableOp?
Dense/MatMulMatMulflatten_1/Reshape:output:0#Dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Dense/MatMul?
Dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
Dense/BiasAdd/ReadVariableOp?
Dense/BiasAddBiasAddDense/MatMul:product:0$Dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Dense/BiasAddq
IdentityIdentityDense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^Dense/BiasAdd/ReadVariableOp^Dense/MatMul/ReadVariableOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2<
Dense/BiasAdd/ReadVariableOpDense/BiasAdd/ReadVariableOp2:
Dense/MatMul/ReadVariableOpDense/MatMul/ReadVariableOp2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_41001
conv1_input!
unknown:
	unknown_0:
	unknown_1:	?


	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_408102
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameconv1_input
?
?
,__inference_sequential_1_layer_call_fn_40950
conv1_input!
unknown:
	unknown_0:
	unknown_1:	?


	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_409262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameconv1_input
?
?
,__inference_sequential_1_layer_call_fn_41014

inputs!
unknown:
	unknown_0:
	unknown_1:	?


	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_408592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_40926

inputs%
conv1_40914:
conv1_40916:
dense_40920:	?


dense_40922:

identity??Dense/StatefulPartitionedCall?conv1/StatefulPartitionedCall?
conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_40914conv1_40916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_408282
conv1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_408402
flatten_1/PartitionedCall?
Dense/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_40920dense_40922*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_408522
Dense/StatefulPartitionedCall?
IdentityIdentity&Dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^Dense/StatefulPartitionedCall^conv1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2>
Dense/StatefulPartitionedCallDense/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_conv1_layer_call_and_return_conditional_losses_41085

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_conv1_layer_call_and_return_conditional_losses_40828

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_40840

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????H  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????
2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
 __inference__wrapped_model_40810
conv1_inputK
1sequential_1_conv1_conv2d_readvariableop_resource:@
2sequential_1_conv1_biasadd_readvariableop_resource:D
1sequential_1_dense_matmul_readvariableop_resource:	?

@
2sequential_1_dense_biasadd_readvariableop_resource:

identity??)sequential_1/Dense/BiasAdd/ReadVariableOp?(sequential_1/Dense/MatMul/ReadVariableOp?)sequential_1/conv1/BiasAdd/ReadVariableOp?(sequential_1/conv1/Conv2D/ReadVariableOp?
(sequential_1/conv1/Conv2D/ReadVariableOpReadVariableOp1sequential_1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(sequential_1/conv1/Conv2D/ReadVariableOp?
sequential_1/conv1/Conv2DConv2Dconv1_input0sequential_1/conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
sequential_1/conv1/Conv2D?
)sequential_1/conv1/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential_1/conv1/BiasAdd/ReadVariableOp?
sequential_1/conv1/BiasAddBiasAdd"sequential_1/conv1/Conv2D:output:01sequential_1/conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
sequential_1/conv1/BiasAdd?
sequential_1/conv1/ReluRelu#sequential_1/conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_1/conv1/Relu?
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????H  2
sequential_1/flatten_1/Const?
sequential_1/flatten_1/ReshapeReshape%sequential_1/conv1/Relu:activations:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????
2 
sequential_1/flatten_1/Reshape?
(sequential_1/Dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource*
_output_shapes
:	?

*
dtype02*
(sequential_1/Dense/MatMul/ReadVariableOp?
sequential_1/Dense/MatMulMatMul'sequential_1/flatten_1/Reshape:output:00sequential_1/Dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_1/Dense/MatMul?
)sequential_1/Dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02+
)sequential_1/Dense/BiasAdd/ReadVariableOp?
sequential_1/Dense/BiasAddBiasAdd#sequential_1/Dense/MatMul:product:01sequential_1/Dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_1/Dense/BiasAdd~
IdentityIdentity#sequential_1/Dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp*^sequential_1/Dense/BiasAdd/ReadVariableOp)^sequential_1/Dense/MatMul/ReadVariableOp*^sequential_1/conv1/BiasAdd/ReadVariableOp)^sequential_1/conv1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2V
)sequential_1/Dense/BiasAdd/ReadVariableOp)sequential_1/Dense/BiasAdd/ReadVariableOp2T
(sequential_1/Dense/MatMul/ReadVariableOp(sequential_1/Dense/MatMul/ReadVariableOp2V
)sequential_1/conv1/BiasAdd/ReadVariableOp)sequential_1/conv1/BiasAdd/ReadVariableOp2T
(sequential_1/conv1/Conv2D/ReadVariableOp(sequential_1/conv1/Conv2D/ReadVariableOp:\ X
/
_output_shapes
:?????????
%
_user_specified_nameconv1_input
?
?
,__inference_sequential_1_layer_call_fn_40870
conv1_input!
unknown:
	unknown_0:
	unknown_1:	?


	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_408592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameconv1_input
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_40965
conv1_input%
conv1_40953:
conv1_40955:
dense_40959:	?


dense_40961:

identity??Dense/StatefulPartitionedCall?conv1/StatefulPartitionedCall?
conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_40953conv1_40955*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_408282
conv1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_408402
flatten_1/PartitionedCall?
Dense/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_40959dense_40961*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_408522
Dense/StatefulPartitionedCall?
IdentityIdentity&Dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^Dense/StatefulPartitionedCall^conv1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2>
Dense/StatefulPartitionedCallDense/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameconv1_input
?

?
@__inference_Dense_layer_call_and_return_conditional_losses_40852

inputs1
matmul_readvariableop_resource:	?

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?

?
@__inference_Dense_layer_call_and_return_conditional_losses_41115

inputs1
matmul_readvariableop_resource:	?

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_40859

inputs%
conv1_40829:
conv1_40831:
dense_40853:	?


dense_40855:

identity??Dense/StatefulPartitionedCall?conv1/StatefulPartitionedCall?
conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_40829conv1_40831*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_408282
conv1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_408402
flatten_1/PartitionedCall?
Dense/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_40853dense_40855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_408522
Dense/StatefulPartitionedCall?
IdentityIdentity&Dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^Dense/StatefulPartitionedCall^conv1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2>
Dense/StatefulPartitionedCallDense/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_1_layer_call_fn_41090

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_408402
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?[
?
!__inference__traced_restore_41274
file_prefix7
assignvariableop_conv1_kernel:+
assignvariableop_1_conv1_bias:2
assignvariableop_2_dense_kernel:	?

+
assignvariableop_3_dense_bias:
&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: A
'assignvariableop_13_adam_conv1_kernel_m:3
%assignvariableop_14_adam_conv1_bias_m::
'assignvariableop_15_adam_dense_kernel_m:	?

3
%assignvariableop_16_adam_dense_bias_m:
A
'assignvariableop_17_adam_conv1_kernel_v:3
%assignvariableop_18_adam_conv1_bias_v::
'assignvariableop_19_adam_dense_kernel_v:	?

3
%assignvariableop_20_adam_dense_bias_v:

identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_conv1_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_conv1_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_conv1_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_conv1_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
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
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_41065

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?

3
%dense_biasadd_readvariableop_resource:

identity??Dense/BiasAdd/ReadVariableOp?Dense/MatMul/ReadVariableOp?conv1/BiasAdd/ReadVariableOp?conv1/Conv2D/ReadVariableOp?
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv1/Conv2D/ReadVariableOp?
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv1/Conv2D?
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv1/BiasAdd/ReadVariableOp?
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv1/BiasAddr

conv1/ReluReluconv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2

conv1/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????H  2
flatten_1/Const?
flatten_1/ReshapeReshapeconv1/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????
2
flatten_1/Reshape?
Dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?

*
dtype02
Dense/MatMul/ReadVariableOp?
Dense/MatMulMatMulflatten_1/Reshape:output:0#Dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Dense/MatMul?
Dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
Dense/BiasAdd/ReadVariableOp?
Dense/BiasAddBiasAddDense/MatMul:product:0$Dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Dense/BiasAddq
IdentityIdentityDense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^Dense/BiasAdd/ReadVariableOp^Dense/MatMul/ReadVariableOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2<
Dense/BiasAdd/ReadVariableOpDense/BiasAdd/ReadVariableOp2:
Dense/MatMul/ReadVariableOpDense/MatMul/ReadVariableOp2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?3
?
__inference__traced_save_41201
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_conv1_kernel_m_read_readvariableop0
,savev2_adam_conv1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop2
.savev2_adam_conv1_kernel_v_read_readvariableop0
,savev2_adam_conv1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::	?

:
: : : : : : : : : :::	?

:
:::	?

:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?

: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?

: 

_output_shapes
:
:,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?

: 

_output_shapes
:
:

_output_shapes
: 
?
?
%__inference_Dense_layer_call_fn_41105

inputs
unknown:	?


	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_408522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
%__inference_conv1_layer_call_fn_41074

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_408282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
conv1_input<
serving_default_conv1_input:0?????????9
Dense0
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:?L
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
F__call__
G_default_save_signature
*H&call_and_return_all_conditional_losses"
_tf_keras_sequential
?


kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
?
regularization_losses
	variables
trainable_variables
	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_rate
m>m?m@mA
vBvCvDvE"
	optimizer
 "
trackable_list_wrapper
<

0
1
2
3"
trackable_list_wrapper
<

0
1
2
3"
trackable_list_wrapper
?
metrics
regularization_losses
 layer_metrics
	variables
!non_trainable_variables

"layers
#layer_regularization_losses
trainable_variables
F__call__
G_default_save_signature
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
,
Oserving_default"
signature_map
&:$2conv1/kernel
:2
conv1/bias
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
?
$metrics
regularization_losses
%layer_metrics
&non_trainable_variables
	variables

'layers
(layer_regularization_losses
trainable_variables
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
)metrics
regularization_losses
*layer_metrics
+non_trainable_variables
	variables

,layers
-layer_regularization_losses
trainable_variables
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
:	?

2Dense/kernel
:
2
Dense/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
.metrics
regularization_losses
/layer_metrics
0non_trainable_variables
	variables

1layers
2layer_regularization_losses
trainable_variables
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
30
41"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
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
N
	5total
	6count
7	variables
8	keras_api"
_tf_keras_metric
^
	9total
	:count
;
_fn_kwargs
<	variables
=	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
50
61"
trackable_list_wrapper
-
7	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
90
:1"
trackable_list_wrapper
-
<	variables"
_generic_user_object
+:)2Adam/conv1/kernel/m
:2Adam/conv1/bias/m
$:"	?

2Adam/Dense/kernel/m
:
2Adam/Dense/bias/m
+:)2Adam/conv1/kernel/v
:2Adam/conv1/bias/v
$:"	?

2Adam/Dense/kernel/v
:
2Adam/Dense/bias/v
?2?
,__inference_sequential_1_layer_call_fn_40870
,__inference_sequential_1_layer_call_fn_41014
,__inference_sequential_1_layer_call_fn_41027
,__inference_sequential_1_layer_call_fn_40950?
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
?B?
 __inference__wrapped_model_40810conv1_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_sequential_1_layer_call_and_return_conditional_losses_41046
G__inference_sequential_1_layer_call_and_return_conditional_losses_41065
G__inference_sequential_1_layer_call_and_return_conditional_losses_40965
G__inference_sequential_1_layer_call_and_return_conditional_losses_40980?
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
%__inference_conv1_layer_call_fn_41074?
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
@__inference_conv1_layer_call_and_return_conditional_losses_41085?
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
)__inference_flatten_1_layer_call_fn_41090?
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
D__inference_flatten_1_layer_call_and_return_conditional_losses_41096?
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
%__inference_Dense_layer_call_fn_41105?
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
@__inference_Dense_layer_call_and_return_conditional_losses_41115?
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
#__inference_signature_wrapper_41001conv1_input"?
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
 ?
@__inference_Dense_layer_call_and_return_conditional_losses_41115]0?-
&?#
!?
inputs??????????

? "%?"
?
0?????????

? y
%__inference_Dense_layer_call_fn_41105P0?-
&?#
!?
inputs??????????

? "??????????
?
 __inference__wrapped_model_40810s
<?9
2?/
-?*
conv1_input?????????
? "-?*
(
Dense?
Dense?????????
?
@__inference_conv1_layer_call_and_return_conditional_losses_41085l
7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
%__inference_conv1_layer_call_fn_41074_
7?4
-?*
(?%
inputs?????????
? " ???????????
D__inference_flatten_1_layer_call_and_return_conditional_losses_41096a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????

? ?
)__inference_flatten_1_layer_call_fn_41090T7?4
-?*
(?%
inputs?????????
? "???????????
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_40965s
D?A
:?7
-?*
conv1_input?????????
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_40980s
D?A
:?7
-?*
conv1_input?????????
p

 
? "%?"
?
0?????????

? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_41046n
??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_41065n
??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
,__inference_sequential_1_layer_call_fn_40870f
D?A
:?7
-?*
conv1_input?????????
p 

 
? "??????????
?
,__inference_sequential_1_layer_call_fn_40950f
D?A
:?7
-?*
conv1_input?????????
p

 
? "??????????
?
,__inference_sequential_1_layer_call_fn_41014a
??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
,__inference_sequential_1_layer_call_fn_41027a
??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
#__inference_signature_wrapper_41001?
K?H
? 
A?>
<
conv1_input-?*
conv1_input?????????"-?*
(
Dense?
Dense?????????
