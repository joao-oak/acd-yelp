СЧ
Йь
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
list(type)(0И
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
7
Square
x"T
y"T"
Ttype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
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
executor_typestring Ии
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
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02unknown8├о
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
: *
dtype0
Ж
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0
З
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_6/kernel/v
А
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	А@*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:А*
dtype0
И
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_5/kernel/v
Б
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v* 
_output_shapes
:
АА*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_4/kernel/v
А
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
: *
dtype0
Ж
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:@*
dtype0
З
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_2/kernel/v
А
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	А@*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:А*
dtype0
И
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_1/kernel/v
Б
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v* 
_output_shapes
:
АА*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:А*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
: *
dtype0
Ж
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0
З
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_6/kernel/m
А
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	А@*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:А*
dtype0
И
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_5/kernel/m
Б
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m* 
_output_shapes
:
АА*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_4/kernel/m
А
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	А*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
: *
dtype0
Ж
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:@*
dtype0
З
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_2/kernel/m
А
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	А@*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:А*
dtype0
И
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_1/kernel/m
Б
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m* 
_output_shapes
:
АА*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:А*
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А*
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
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@ *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	А@*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:А*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
АА*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:А*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	А*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@ *
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	А@*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:А*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
АА*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
z
serving_default_input_2Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
┌
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2dense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_15515464

NoOpNoOp
∙r
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┤r
valueкrBзr Bаr
ш
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
м
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
м
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*

&	keras_api* 

'	keras_api* 
О
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
О
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
z
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15*
z
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15*
* 
░
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_3* 
6
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_3* 
* 
Д
Qiter

Rbeta_1

Sbeta_2
	Tdecay
Ulearning_rate4mю5mя6mЁ7mё8mЄ9mє:mЇ;mї<mЎ=mў>m°?m∙@m·Am√Bm№Cm¤4v■5v 6vА7vБ8vВ9vГ:vД;vЕ<vЖ=vЗ>vИ?vЙ@vКAvЛBvМCvН*

Vserving_default* 
ж
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

4kernel
5bias*
ж
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

6kernel
7bias*
ж
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

8kernel
9bias*
ж
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

:kernel
;bias*
<
40
51
62
73
84
95
:6
;7*
<
40
51
62
73
84
95
:6
;7*
* 
У
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ttrace_0
utrace_1
vtrace_2
wtrace_3* 
6
xtrace_0
ytrace_1
ztrace_2
{trace_3* 
и
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

<kernel
=bias*
м
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

>kernel
?bias*
м
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses

@kernel
Abias*
м
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses

Bkernel
Cbias*
<
<0
=1
>2
?3
@4
A5
B6
C7*
<
<0
=1
>2
?3
@4
A5
B6
C7*
* 
Ш
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
:
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_3* 
:
Эtrace_0
Юtrace_1
Яtrace_2
аtrace_3* 
* 
* 
* 
* 
* 
Ц
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

жtrace_0* 

зtrace_0* 
* 
* 
* 
Ц
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

нtrace_0
оtrace_1* 

пtrace_0
░trace_1* 
LF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_6/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_6/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_7/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_7/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

▒0*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

40
51*

40
51*
* 
Ш
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

╖trace_0* 

╕trace_0* 

60
71*

60
71*
* 
Ш
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

╛trace_0* 

┐trace_0* 

80
91*

80
91*
* 
Ш
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

┼trace_0* 

╞trace_0* 

:0
;1*

:0
;1*
* 
Ш
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

╠trace_0* 

═trace_0* 
* 
 
0
1
2
3*
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

<0
=1*

<0
=1*
* 
Ы
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses*

╙trace_0* 

╘trace_0* 

>0
?1*

>0
?1*
* 
Ю
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

┌trace_0* 

█trace_0* 

@0
A1*

@0
A1*
* 
Ю
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*

сtrace_0* 

тtrace_0* 

B0
C1*

B0
C1*
* 
Ю
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 
* 
 
0
1
2
3*
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
<
ъ	variables
ы	keras_api

ьtotal

эcount*
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

ь0
э1*

ъ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_4/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_4/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_6/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_6/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_7/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_7/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_4/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_4/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_6/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_6/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_7/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_7/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*D
Tin=
;29	*
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
GPU 2J 8В **
f%R#
!__inference__traced_save_15516307
╞

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*C
Tin<
:28*
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
GPU 2J 8В *-
f(R&
$__inference__traced_restore_15516482ьн
в

Ў
C__inference_dense_layer_call_and_return_conditional_losses_15514476

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
д

°
E__inference_dense_4_layer_call_and_return_conditional_losses_15516059

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╨	
─
/__inference_sequential_1_layer_call_fn_15515833

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514802o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
█	
╟
-__inference_sequential_layer_call_fn_15514679
dense_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         
%
_user_specified_namedense_input
┐n
Ж
C__inference_model_layer_call_and_return_conditional_losses_15515624
inputs_0
inputs_1F
3sequential_1_dense_4_matmul_readvariableop_resource:	АC
4sequential_1_dense_4_biasadd_readvariableop_resource:	АG
3sequential_1_dense_5_matmul_readvariableop_resource:
ААC
4sequential_1_dense_5_biasadd_readvariableop_resource:	АF
3sequential_1_dense_6_matmul_readvariableop_resource:	А@B
4sequential_1_dense_6_biasadd_readvariableop_resource:@E
3sequential_1_dense_7_matmul_readvariableop_resource:@ B
4sequential_1_dense_7_biasadd_readvariableop_resource: B
/sequential_dense_matmul_readvariableop_resource:	А?
0sequential_dense_biasadd_readvariableop_resource:	АE
1sequential_dense_1_matmul_readvariableop_resource:
ААA
2sequential_dense_1_biasadd_readvariableop_resource:	АD
1sequential_dense_2_matmul_readvariableop_resource:	А@@
2sequential_dense_2_biasadd_readvariableop_resource:@C
1sequential_dense_3_matmul_readvariableop_resource:@ @
2sequential_dense_3_biasadd_readvariableop_resource: 
identityИв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв(sequential/dense_1/MatMul/ReadVariableOpв)sequential/dense_2/BiasAdd/ReadVariableOpв(sequential/dense_2/MatMul/ReadVariableOpв)sequential/dense_3/BiasAdd/ReadVariableOpв(sequential/dense_3/MatMul/ReadVariableOpв+sequential_1/dense_4/BiasAdd/ReadVariableOpв*sequential_1/dense_4/MatMul/ReadVariableOpв+sequential_1/dense_5/BiasAdd/ReadVariableOpв*sequential_1/dense_5/MatMul/ReadVariableOpв+sequential_1/dense_6/BiasAdd/ReadVariableOpв*sequential_1/dense_6/MatMul/ReadVariableOpв+sequential_1/dense_7/BiasAdd/ReadVariableOpв*sequential_1/dense_7/MatMul/ReadVariableOpЯ
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ц
sequential_1/dense_4/MatMulMatMulinputs_12sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         Аа
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╡
sequential_1/dense_5/MatMulMatMul'sequential_1/dense_4/Relu:activations:02sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         АЯ
*sequential_1/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0┤
sequential_1/dense_6/MatMulMatMul'sequential_1/dense_5/Relu:activations:02sequential_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ь
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╡
sequential_1/dense_6/BiasAddBiasAdd%sequential_1/dense_6/MatMul:product:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ю
*sequential_1/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0┤
sequential_1/dense_7/MatMulMatMul'sequential_1/dense_6/Relu:activations:02sequential_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ь
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╡
sequential_1/dense_7/BiasAddBiasAdd%sequential_1/dense_7/MatMul:product:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ч
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
sequential/dense/MatMulMatMulinputs_0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЬ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0н
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЩ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АЫ
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0о
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ш
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0п
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @v
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ъ
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0о
sequential/dense_3/MatMulMatMul%sequential/dense_2/Relu:activations:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ш
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0п
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Й
(tf.math.l2_normalize/l2_normalize/SquareSquare#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          y
7tf.math.l2_normalize/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :▀
%tf.math.l2_normalize/l2_normalize/SumSum,tf.math.l2_normalize/l2_normalize/Square:y:0@tf.math.l2_normalize/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(p
+tf.math.l2_normalize/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╠
)tf.math.l2_normalize/l2_normalize/MaximumMaximum.tf.math.l2_normalize/l2_normalize/Sum:output:04tf.math.l2_normalize/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         С
'tf.math.l2_normalize/l2_normalize/RsqrtRsqrt-tf.math.l2_normalize/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         м
!tf.math.l2_normalize/l2_normalizeMul#sequential/dense_3/BiasAdd:output:0+tf.math.l2_normalize/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Н
*tf.math.l2_normalize_1/l2_normalize/SquareSquare%sequential_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:          {
9tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :х
'tf.math.l2_normalize_1/l2_normalize/SumSum.tf.math.l2_normalize_1/l2_normalize/Square:y:0Btf.math.l2_normalize_1/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(r
-tf.math.l2_normalize_1/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╥
+tf.math.l2_normalize_1/l2_normalize/MaximumMaximum0tf.math.l2_normalize_1/l2_normalize/Sum:output:06tf.math.l2_normalize_1/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         Х
)tf.math.l2_normalize_1/l2_normalize/RsqrtRsqrt/tf.math.l2_normalize_1/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ▓
#tf.math.l2_normalize_1/l2_normalizeMul%sequential_1/dense_7/BiasAdd:output:0-tf.math.l2_normalize_1/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          T
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
dot/ExpandDims
ExpandDims%tf.math.l2_normalize/l2_normalize:z:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:          V
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
dot/ExpandDims_1
ExpandDims'tf.math.l2_normalize_1/l2_normalize:z:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Е

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:         L
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
Q
lambda/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @p

lambda/mulMullambda/mul/x:output:0dot/Squeeze:output:0*
T0*'
_output_shapes
:         Q
lambda/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@l

lambda/addAddV2lambda/mul:z:0lambda/add/y:output:0*
T0*'
_output_shapes
:         ]
IdentityIdentitylambda/add:z:0^NoOp*
T0*'
_output_shapes
:         К
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp+^sequential_1/dense_6/MatMul/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp+^sequential_1/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2X
*sequential_1/dense_6/MatMul/ReadVariableOp*sequential_1/dense_6/MatMul/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2X
*sequential_1/dense_7/MatMul/ReadVariableOp*sequential_1/dense_7/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
к	
k
A__inference_dot_layer_call_and_return_conditional_losses_15515065

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:         D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:          :          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_nameinputs
з
░
(__inference_model_layer_call_fn_15515540
inputs_0
inputs_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:@ 

unknown_14: 
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_15515235o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
и

∙
E__inference_dense_5_layer_call_and_return_conditional_losses_15514762

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
█	
╟
-__inference_sequential_layer_call_fn_15514552
dense_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514533o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         
%
_user_specified_namedense_input
╦
Ъ
*__inference_dense_1_layer_call_fn_15515989

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_15514493p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Э,
и
C__inference_model_layer_call_and_return_conditional_losses_15515235

inputs
inputs_1(
sequential_1_15515184:	А$
sequential_1_15515186:	А)
sequential_1_15515188:
АА$
sequential_1_15515190:	А(
sequential_1_15515192:	А@#
sequential_1_15515194:@'
sequential_1_15515196:@ #
sequential_1_15515198: &
sequential_15515201:	А"
sequential_15515203:	А'
sequential_15515205:
АА"
sequential_15515207:	А&
sequential_15515209:	А@!
sequential_15515211:@%
sequential_15515213:@ !
sequential_15515215: 
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCallЮ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_1_15515184sequential_1_15515186sequential_1_15515188sequential_1_15515190sequential_1_15515192sequential_1_15515194sequential_1_15515196sequential_1_15515198*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514908И
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_15515201sequential_15515203sequential_15515205sequential_15515207sequential_15515209sequential_15515211sequential_15515213sequential_15515215*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514639С
(tf.math.l2_normalize/l2_normalize/SquareSquare+sequential/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          y
7tf.math.l2_normalize/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :▀
%tf.math.l2_normalize/l2_normalize/SumSum,tf.math.l2_normalize/l2_normalize/Square:y:0@tf.math.l2_normalize/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(p
+tf.math.l2_normalize/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╠
)tf.math.l2_normalize/l2_normalize/MaximumMaximum.tf.math.l2_normalize/l2_normalize/Sum:output:04tf.math.l2_normalize/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         С
'tf.math.l2_normalize/l2_normalize/RsqrtRsqrt-tf.math.l2_normalize/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ┤
!tf.math.l2_normalize/l2_normalizeMul+sequential/StatefulPartitionedCall:output:0+tf.math.l2_normalize/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Х
*tf.math.l2_normalize_1/l2_normalize/SquareSquare-sequential_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          {
9tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :х
'tf.math.l2_normalize_1/l2_normalize/SumSum.tf.math.l2_normalize_1/l2_normalize/Square:y:0Btf.math.l2_normalize_1/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(r
-tf.math.l2_normalize_1/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╥
+tf.math.l2_normalize_1/l2_normalize/MaximumMaximum0tf.math.l2_normalize_1/l2_normalize/Sum:output:06tf.math.l2_normalize_1/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         Х
)tf.math.l2_normalize_1/l2_normalize/RsqrtRsqrt/tf.math.l2_normalize_1/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ║
#tf.math.l2_normalize_1/l2_normalizeMul-sequential_1/StatefulPartitionedCall:output:0-tf.math.l2_normalize_1/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          ∙
dot/PartitionedCallPartitionedCall%tf.math.l2_normalize/l2_normalize:z:0'tf.math.l2_normalize_1/l2_normalize:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_15515065╠
lambda/PartitionedCallPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_layer_call_and_return_conditional_losses_15515129n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
▓	
m
A__inference_dot_layer_call_and_return_conditional_losses_15515934
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:         D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:          :          :Q M
'
_output_shapes
:          
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:          
"
_user_specified_name
inputs/1
┌
 
H__inference_sequential_layer_call_and_return_conditional_losses_15514639

inputs!
dense_15514618:	А
dense_15514620:	А$
dense_1_15514623:
АА
dense_1_15514625:	А#
dense_2_15514628:	А@
dense_2_15514630:@"
dense_3_15514633:@ 
dense_3_15514635: 
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallы
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15514618dense_15514620*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_15514476У
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_15514623dense_1_15514625*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_15514493Ф
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_15514628dense_2_15514630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_15514510Ф
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_15514633dense_3_15514635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_15514526w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╠
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╝
`
D__inference_lambda_layer_call_and_return_conditional_losses_15515075

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╟
Ш
*__inference_dense_2_layer_call_fn_15516009

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_15514510o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
эf
О
!__inference__traced_save_15516307
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: э
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Ц
valueМBЙ8B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH▐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Г
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B л
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*╦
_input_shapes╣
╢: :	А:А:
АА:А:	А@:@:@ : :	А:А:
АА:А:	А@:@:@ : : : : : : : : :	А:А:
АА:А:	А@:@:@ : :	А:А:
АА:А:	А@:@:@ : :	А:А:
АА:А:	А@:@:@ : :	А:А:
АА:А:	А@:@:@ : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :%	!

_output_shapes
:	А:!


_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :% !

_output_shapes
:	А:!!

_output_shapes	
:А:&""
 
_output_shapes
:
АА:!#

_output_shapes	
:А:%$!

_output_shapes
:	А@: %

_output_shapes
:@:$& 

_output_shapes

:@ : '

_output_shapes
: :%(!

_output_shapes
:	А:!)

_output_shapes	
:А:&*"
 
_output_shapes
:
АА:!+

_output_shapes	
:А:%,!

_output_shapes
:	А@: -

_output_shapes
:@:$. 

_output_shapes

:@ : /

_output_shapes
: :%0!

_output_shapes
:	А:!1

_output_shapes	
:А:&2"
 
_output_shapes
:
АА:!3

_output_shapes	
:А:%4!

_output_shapes
:	А@: 5

_output_shapes
:@:$6 

_output_shapes

:@ : 7

_output_shapes
: :8

_output_shapes
: 
б
о
(__inference_model_layer_call_fn_15515308
input_1
input_2
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:@ 

unknown_14: 
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_15515235o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2
щ
Д
H__inference_sequential_layer_call_and_return_conditional_losses_15514703
dense_input!
dense_15514682:	А
dense_15514684:	А$
dense_1_15514687:
АА
dense_1_15514689:	А#
dense_2_15514692:	А@
dense_2_15514694:@"
dense_3_15514697:@ 
dense_3_15514699: 
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallЁ
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_15514682dense_15514684*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_15514476У
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_15514687dense_1_15514689*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_15514493Ф
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_15514692dense_2_15514694*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_15514510Ф
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_15514697dense_3_15514699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_15514526w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╠
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:T P
'
_output_shapes
:         
%
_user_specified_namedense_input
╦
Ъ
*__inference_dense_5_layer_call_fn_15516068

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_15514762p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Є
З
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514908

inputs#
dense_4_15514887:	А
dense_4_15514889:	А$
dense_5_15514892:
АА
dense_5_15514894:	А#
dense_6_15514897:	А@
dense_6_15514899:@"
dense_7_15514902:@ 
dense_7_15514904: 
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallє
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_15514887dense_4_15514889*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_15514745Х
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_15514892dense_5_15514894*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_15514762Ф
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_15514897dense_6_15514899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_15514779Ф
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_15514902dense_7_15514904*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_15514795w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╬
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
б
о
(__inference_model_layer_call_fn_15515113
input_1
input_2
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:@ 

unknown_14: 
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_15515078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2
╚	
Ў
E__inference_dense_3_layer_call_and_return_conditional_losses_15514526

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ь"
н
H__inference_sequential_layer_call_and_return_conditional_losses_15515781

inputs7
$dense_matmul_readvariableop_resource:	А4
%dense_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
АА6
'dense_1_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	А@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0М
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @Д
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0Н
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          ╞
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╠	
┬
-__inference_sequential_layer_call_fn_15515750

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╝
`
D__inference_lambda_layer_call_and_return_conditional_losses_15515129

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
З
О
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514996
dense_4_input#
dense_4_15514975:	А
dense_4_15514977:	А$
dense_5_15514980:
АА
dense_5_15514982:	А#
dense_6_15514985:	А@
dense_6_15514987:@"
dense_7_15514990:@ 
dense_7_15514992: 
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCall·
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_15514975dense_4_15514977*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_15514745Х
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_15514980dense_5_15514982*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_15514762Ф
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_15514985dense_6_15514987*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_15514779Ф
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_15514990dense_7_15514992*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_15514795w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╬
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:V R
'
_output_shapes
:         
'
_user_specified_namedense_4_input
╚	
Ў
E__inference_dense_3_layer_call_and_return_conditional_losses_15516039

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Я,
и
C__inference_model_layer_call_and_return_conditional_losses_15515418
input_1
input_2(
sequential_1_15515367:	А$
sequential_1_15515369:	А)
sequential_1_15515371:
АА$
sequential_1_15515373:	А(
sequential_1_15515375:	А@#
sequential_1_15515377:@'
sequential_1_15515379:@ #
sequential_1_15515381: &
sequential_15515384:	А"
sequential_15515386:	А'
sequential_15515388:
АА"
sequential_15515390:	А&
sequential_15515392:	А@!
sequential_15515394:@%
sequential_15515396:@ !
sequential_15515398: 
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCallЭ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1_15515367sequential_1_15515369sequential_1_15515371sequential_1_15515373sequential_1_15515375sequential_1_15515377sequential_1_15515379sequential_1_15515381*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514908Й
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_15515384sequential_15515386sequential_15515388sequential_15515390sequential_15515392sequential_15515394sequential_15515396sequential_15515398*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514639С
(tf.math.l2_normalize/l2_normalize/SquareSquare+sequential/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          y
7tf.math.l2_normalize/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :▀
%tf.math.l2_normalize/l2_normalize/SumSum,tf.math.l2_normalize/l2_normalize/Square:y:0@tf.math.l2_normalize/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(p
+tf.math.l2_normalize/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╠
)tf.math.l2_normalize/l2_normalize/MaximumMaximum.tf.math.l2_normalize/l2_normalize/Sum:output:04tf.math.l2_normalize/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         С
'tf.math.l2_normalize/l2_normalize/RsqrtRsqrt-tf.math.l2_normalize/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ┤
!tf.math.l2_normalize/l2_normalizeMul+sequential/StatefulPartitionedCall:output:0+tf.math.l2_normalize/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Х
*tf.math.l2_normalize_1/l2_normalize/SquareSquare-sequential_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          {
9tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :х
'tf.math.l2_normalize_1/l2_normalize/SumSum.tf.math.l2_normalize_1/l2_normalize/Square:y:0Btf.math.l2_normalize_1/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(r
-tf.math.l2_normalize_1/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╥
+tf.math.l2_normalize_1/l2_normalize/MaximumMaximum0tf.math.l2_normalize_1/l2_normalize/Sum:output:06tf.math.l2_normalize_1/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         Х
)tf.math.l2_normalize_1/l2_normalize/RsqrtRsqrt/tf.math.l2_normalize_1/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ║
#tf.math.l2_normalize_1/l2_normalizeMul-sequential_1/StatefulPartitionedCall:output:0-tf.math.l2_normalize_1/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          ∙
dot/PartitionedCallPartitionedCall%tf.math.l2_normalize/l2_normalize:z:0'tf.math.l2_normalize_1/l2_normalize:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_15515065╠
lambda/PartitionedCallPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_layer_call_and_return_conditional_losses_15515129n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2
сx
д
#__inference__wrapped_model_15514458
input_1
input_2L
9model_sequential_1_dense_4_matmul_readvariableop_resource:	АI
:model_sequential_1_dense_4_biasadd_readvariableop_resource:	АM
9model_sequential_1_dense_5_matmul_readvariableop_resource:
ААI
:model_sequential_1_dense_5_biasadd_readvariableop_resource:	АL
9model_sequential_1_dense_6_matmul_readvariableop_resource:	А@H
:model_sequential_1_dense_6_biasadd_readvariableop_resource:@K
9model_sequential_1_dense_7_matmul_readvariableop_resource:@ H
:model_sequential_1_dense_7_biasadd_readvariableop_resource: H
5model_sequential_dense_matmul_readvariableop_resource:	АE
6model_sequential_dense_biasadd_readvariableop_resource:	АK
7model_sequential_dense_1_matmul_readvariableop_resource:
ААG
8model_sequential_dense_1_biasadd_readvariableop_resource:	АJ
7model_sequential_dense_2_matmul_readvariableop_resource:	А@F
8model_sequential_dense_2_biasadd_readvariableop_resource:@I
7model_sequential_dense_3_matmul_readvariableop_resource:@ F
8model_sequential_dense_3_biasadd_readvariableop_resource: 
identityИв-model/sequential/dense/BiasAdd/ReadVariableOpв,model/sequential/dense/MatMul/ReadVariableOpв/model/sequential/dense_1/BiasAdd/ReadVariableOpв.model/sequential/dense_1/MatMul/ReadVariableOpв/model/sequential/dense_2/BiasAdd/ReadVariableOpв.model/sequential/dense_2/MatMul/ReadVariableOpв/model/sequential/dense_3/BiasAdd/ReadVariableOpв.model/sequential/dense_3/MatMul/ReadVariableOpв1model/sequential_1/dense_4/BiasAdd/ReadVariableOpв0model/sequential_1/dense_4/MatMul/ReadVariableOpв1model/sequential_1/dense_5/BiasAdd/ReadVariableOpв0model/sequential_1/dense_5/MatMul/ReadVariableOpв1model/sequential_1/dense_6/BiasAdd/ReadVariableOpв0model/sequential_1/dense_6/MatMul/ReadVariableOpв1model/sequential_1/dense_7/BiasAdd/ReadVariableOpв0model/sequential_1/dense_7/MatMul/ReadVariableOpл
0model/sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp9model_sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0б
!model/sequential_1/dense_4/MatMulMatMulinput_28model/sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ай
1model/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╚
"model/sequential_1/dense_4/BiasAddBiasAdd+model/sequential_1/dense_4/MatMul:product:09model/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЗ
model/sequential_1/dense_4/ReluRelu+model/sequential_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         Ам
0model/sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp9model_sequential_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╟
!model/sequential_1/dense_5/MatMulMatMul-model/sequential_1/dense_4/Relu:activations:08model/sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ай
1model/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╚
"model/sequential_1/dense_5/BiasAddBiasAdd+model/sequential_1/dense_5/MatMul:product:09model/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЗ
model/sequential_1/dense_5/ReluRelu+model/sequential_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         Ал
0model/sequential_1/dense_6/MatMul/ReadVariableOpReadVariableOp9model_sequential_1_dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0╞
!model/sequential_1/dense_6/MatMulMatMul-model/sequential_1/dense_5/Relu:activations:08model/sequential_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @и
1model/sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╟
"model/sequential_1/dense_6/BiasAddBiasAdd+model/sequential_1/dense_6/MatMul:product:09model/sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ж
model/sequential_1/dense_6/ReluRelu+model/sequential_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         @к
0model/sequential_1/dense_7/MatMul/ReadVariableOpReadVariableOp9model_sequential_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0╞
!model/sequential_1/dense_7/MatMulMatMul-model/sequential_1/dense_6/Relu:activations:08model/sequential_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          и
1model/sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╟
"model/sequential_1/dense_7/BiasAddBiasAdd+model/sequential_1/dense_7/MatMul:product:09model/sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          г
,model/sequential/dense/MatMul/ReadVariableOpReadVariableOp5model_sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Щ
model/sequential/dense/MatMulMatMulinput_14model/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-model/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
model/sequential/dense/BiasAddBiasAdd'model/sequential/dense/MatMul:product:05model/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
model/sequential/dense/ReluRelu'model/sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аи
.model/sequential/dense_1/MatMul/ReadVariableOpReadVariableOp7model_sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┐
model/sequential/dense_1/MatMulMatMul)model/sequential/dense/Relu:activations:06model/sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
/model/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 model/sequential/dense_1/BiasAddBiasAdd)model/sequential/dense_1/MatMul:product:07model/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
model/sequential/dense_1/ReluRelu)model/sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Аз
.model/sequential/dense_2/MatMul/ReadVariableOpReadVariableOp7model_sequential_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0└
model/sequential/dense_2/MatMulMatMul+model/sequential/dense_1/Relu:activations:06model/sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/model/sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┴
 model/sequential/dense_2/BiasAddBiasAdd)model/sequential/dense_2/MatMul:product:07model/sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
model/sequential/dense_2/ReluRelu)model/sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @ж
.model/sequential/dense_3/MatMul/ReadVariableOpReadVariableOp7model_sequential_dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0└
model/sequential/dense_3/MatMulMatMul+model/sequential/dense_2/Relu:activations:06model/sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          д
/model/sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┴
 model/sequential/dense_3/BiasAddBiasAdd)model/sequential/dense_3/MatMul:product:07model/sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Х
.model/tf.math.l2_normalize/l2_normalize/SquareSquare)model/sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          
=model/tf.math.l2_normalize/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ё
+model/tf.math.l2_normalize/l2_normalize/SumSum2model/tf.math.l2_normalize/l2_normalize/Square:y:0Fmodel/tf.math.l2_normalize/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(v
1model/tf.math.l2_normalize/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+▐
/model/tf.math.l2_normalize/l2_normalize/MaximumMaximum4model/tf.math.l2_normalize/l2_normalize/Sum:output:0:model/tf.math.l2_normalize/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         Э
-model/tf.math.l2_normalize/l2_normalize/RsqrtRsqrt3model/tf.math.l2_normalize/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ╛
'model/tf.math.l2_normalize/l2_normalizeMul)model/sequential/dense_3/BiasAdd:output:01model/tf.math.l2_normalize/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Щ
0model/tf.math.l2_normalize_1/l2_normalize/SquareSquare+model/sequential_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:          Б
?model/tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ў
-model/tf.math.l2_normalize_1/l2_normalize/SumSum4model/tf.math.l2_normalize_1/l2_normalize/Square:y:0Hmodel/tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(x
3model/tf.math.l2_normalize_1/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+ф
1model/tf.math.l2_normalize_1/l2_normalize/MaximumMaximum6model/tf.math.l2_normalize_1/l2_normalize/Sum:output:0<model/tf.math.l2_normalize_1/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         б
/model/tf.math.l2_normalize_1/l2_normalize/RsqrtRsqrt5model/tf.math.l2_normalize_1/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ─
)model/tf.math.l2_normalize_1/l2_normalizeMul+model/sequential_1/dense_7/BiasAdd:output:03model/tf.math.l2_normalize_1/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Z
model/dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :и
model/dot/ExpandDims
ExpandDims+model/tf.math.l2_normalize/l2_normalize:z:0!model/dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:          \
model/dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :о
model/dot/ExpandDims_1
ExpandDims-model/tf.math.l2_normalize_1/l2_normalize:z:0#model/dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Ч
model/dot/MatMulBatchMatMulV2model/dot/ExpandDims:output:0model/dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:         X
model/dot/ShapeShapemodel/dot/MatMul:output:0*
T0*
_output_shapes
:А
model/dot/SqueezeSqueezemodel/dot/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
W
model/lambda/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @В
model/lambda/mulMulmodel/lambda/mul/x:output:0model/dot/Squeeze:output:0*
T0*'
_output_shapes
:         W
model/lambda/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@~
model/lambda/addAddV2model/lambda/mul:z:0model/lambda/add/y:output:0*
T0*'
_output_shapes
:         c
IdentityIdentitymodel/lambda/add:z:0^NoOp*
T0*'
_output_shapes
:         ъ
NoOpNoOp.^model/sequential/dense/BiasAdd/ReadVariableOp-^model/sequential/dense/MatMul/ReadVariableOp0^model/sequential/dense_1/BiasAdd/ReadVariableOp/^model/sequential/dense_1/MatMul/ReadVariableOp0^model/sequential/dense_2/BiasAdd/ReadVariableOp/^model/sequential/dense_2/MatMul/ReadVariableOp0^model/sequential/dense_3/BiasAdd/ReadVariableOp/^model/sequential/dense_3/MatMul/ReadVariableOp2^model/sequential_1/dense_4/BiasAdd/ReadVariableOp1^model/sequential_1/dense_4/MatMul/ReadVariableOp2^model/sequential_1/dense_5/BiasAdd/ReadVariableOp1^model/sequential_1/dense_5/MatMul/ReadVariableOp2^model/sequential_1/dense_6/BiasAdd/ReadVariableOp1^model/sequential_1/dense_6/MatMul/ReadVariableOp2^model/sequential_1/dense_7/BiasAdd/ReadVariableOp1^model/sequential_1/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 2^
-model/sequential/dense/BiasAdd/ReadVariableOp-model/sequential/dense/BiasAdd/ReadVariableOp2\
,model/sequential/dense/MatMul/ReadVariableOp,model/sequential/dense/MatMul/ReadVariableOp2b
/model/sequential/dense_1/BiasAdd/ReadVariableOp/model/sequential/dense_1/BiasAdd/ReadVariableOp2`
.model/sequential/dense_1/MatMul/ReadVariableOp.model/sequential/dense_1/MatMul/ReadVariableOp2b
/model/sequential/dense_2/BiasAdd/ReadVariableOp/model/sequential/dense_2/BiasAdd/ReadVariableOp2`
.model/sequential/dense_2/MatMul/ReadVariableOp.model/sequential/dense_2/MatMul/ReadVariableOp2b
/model/sequential/dense_3/BiasAdd/ReadVariableOp/model/sequential/dense_3/BiasAdd/ReadVariableOp2`
.model/sequential/dense_3/MatMul/ReadVariableOp.model/sequential/dense_3/MatMul/ReadVariableOp2f
1model/sequential_1/dense_4/BiasAdd/ReadVariableOp1model/sequential_1/dense_4/BiasAdd/ReadVariableOp2d
0model/sequential_1/dense_4/MatMul/ReadVariableOp0model/sequential_1/dense_4/MatMul/ReadVariableOp2f
1model/sequential_1/dense_5/BiasAdd/ReadVariableOp1model/sequential_1/dense_5/BiasAdd/ReadVariableOp2d
0model/sequential_1/dense_5/MatMul/ReadVariableOp0model/sequential_1/dense_5/MatMul/ReadVariableOp2f
1model/sequential_1/dense_6/BiasAdd/ReadVariableOp1model/sequential_1/dense_6/BiasAdd/ReadVariableOp2d
0model/sequential_1/dense_6/MatMul/ReadVariableOp0model/sequential_1/dense_6/MatMul/ReadVariableOp2f
1model/sequential_1/dense_7/BiasAdd/ReadVariableOp1model/sequential_1/dense_7/BiasAdd/ReadVariableOp2d
0model/sequential_1/dense_7/MatMul/ReadVariableOp0model/sequential_1/dense_7/MatMul/ReadVariableOp:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2
Э
E
)__inference_lambda_layer_call_fn_15515939

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_layer_call_and_return_conditional_losses_15515075`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ь"
н
H__inference_sequential_layer_call_and_return_conditional_losses_15515812

inputs7
$dense_matmul_readvariableop_resource:	А4
%dense_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
АА6
'dense_1_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	А@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0М
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @Д
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0Н
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          ╞
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х	
╦
/__inference_sequential_1_layer_call_fn_15514948
dense_4_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:         
'
_user_specified_namedense_4_input
д

°
E__inference_dense_4_layer_call_and_return_conditional_losses_15514745

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ы╘
Ъ!
$__inference__traced_restore_15516482
file_prefix0
assignvariableop_dense_kernel:	А,
assignvariableop_1_dense_bias:	А5
!assignvariableop_2_dense_1_kernel:
АА.
assignvariableop_3_dense_1_bias:	А4
!assignvariableop_4_dense_2_kernel:	А@-
assignvariableop_5_dense_2_bias:@3
!assignvariableop_6_dense_3_kernel:@ -
assignvariableop_7_dense_3_bias: 4
!assignvariableop_8_dense_4_kernel:	А.
assignvariableop_9_dense_4_bias:	А6
"assignvariableop_10_dense_5_kernel:
АА/
 assignvariableop_11_dense_5_bias:	А5
"assignvariableop_12_dense_6_kernel:	А@.
 assignvariableop_13_dense_6_bias:@4
"assignvariableop_14_dense_7_kernel:@ .
 assignvariableop_15_dense_7_bias: '
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: :
'assignvariableop_23_adam_dense_kernel_m:	А4
%assignvariableop_24_adam_dense_bias_m:	А=
)assignvariableop_25_adam_dense_1_kernel_m:
АА6
'assignvariableop_26_adam_dense_1_bias_m:	А<
)assignvariableop_27_adam_dense_2_kernel_m:	А@5
'assignvariableop_28_adam_dense_2_bias_m:@;
)assignvariableop_29_adam_dense_3_kernel_m:@ 5
'assignvariableop_30_adam_dense_3_bias_m: <
)assignvariableop_31_adam_dense_4_kernel_m:	А6
'assignvariableop_32_adam_dense_4_bias_m:	А=
)assignvariableop_33_adam_dense_5_kernel_m:
АА6
'assignvariableop_34_adam_dense_5_bias_m:	А<
)assignvariableop_35_adam_dense_6_kernel_m:	А@5
'assignvariableop_36_adam_dense_6_bias_m:@;
)assignvariableop_37_adam_dense_7_kernel_m:@ 5
'assignvariableop_38_adam_dense_7_bias_m: :
'assignvariableop_39_adam_dense_kernel_v:	А4
%assignvariableop_40_adam_dense_bias_v:	А=
)assignvariableop_41_adam_dense_1_kernel_v:
АА6
'assignvariableop_42_adam_dense_1_bias_v:	А<
)assignvariableop_43_adam_dense_2_kernel_v:	А@5
'assignvariableop_44_adam_dense_2_bias_v:@;
)assignvariableop_45_adam_dense_3_kernel_v:@ 5
'assignvariableop_46_adam_dense_3_bias_v: <
)assignvariableop_47_adam_dense_4_kernel_v:	А6
'assignvariableop_48_adam_dense_4_bias_v:	А=
)assignvariableop_49_adam_dense_5_kernel_v:
АА6
'assignvariableop_50_adam_dense_5_bias_v:	А<
)assignvariableop_51_adam_dense_6_kernel_v:	А@5
'assignvariableop_52_adam_dense_6_bias_v:@;
)assignvariableop_53_adam_dense_7_kernel_v:@ 5
'assignvariableop_54_adam_dense_7_bias_v: 
identity_56ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Ц
valueМBЙ8B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHс
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Г
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╣
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ў
_output_shapesу
р::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_24AssignVariableOp%assignvariableop_24_adam_dense_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_3_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_3_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_4_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_4_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_5_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_5_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_6_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_6_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_7_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_7_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_3_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_3_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_4_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_4_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_5_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_5_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_6_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_6_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_7_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_7_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Й

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_56IdentityIdentity_55:output:0^NoOp_1*
T0*
_output_shapes
: Ў	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_56Identity_56:output:0*Г
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ь
R
&__inference_dot_layer_call_fn_15515922
inputs_0
inputs_1
identity╣
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_15515065`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:          :          :Q M
'
_output_shapes
:          
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:          
"
_user_specified_name
inputs/1
З
О
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514972
dense_4_input#
dense_4_15514951:	А
dense_4_15514953:	А$
dense_5_15514956:
АА
dense_5_15514958:	А#
dense_6_15514961:	А@
dense_6_15514963:@"
dense_7_15514966:@ 
dense_7_15514968: 
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCall·
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_15514951dense_4_15514953*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_15514745Х
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_15514956dense_5_15514958*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_15514762Ф
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_15514961dense_6_15514963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_15514779Ф
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_15514966dense_7_15514968*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_15514795w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╬
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:V R
'
_output_shapes
:         
'
_user_specified_namedense_4_input
щ
Д
H__inference_sequential_layer_call_and_return_conditional_losses_15514727
dense_input!
dense_15514706:	А
dense_15514708:	А$
dense_1_15514711:
АА
dense_1_15514713:	А#
dense_2_15514716:	А@
dense_2_15514718:@"
dense_3_15514721:@ 
dense_3_15514723: 
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallЁ
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_15514706dense_15514708*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_15514476У
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_15514711dense_1_15514713*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_15514493Ф
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_15514716dense_2_15514718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_15514510Ф
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_15514721dense_3_15514723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_15514526w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╠
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:T P
'
_output_shapes
:         
%
_user_specified_namedense_input
а

ў
E__inference_dense_6_layer_call_and_return_conditional_losses_15514779

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
х	
╦
/__inference_sequential_1_layer_call_fn_15514821
dense_4_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514802o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:         
'
_user_specified_namedense_4_input
а

ў
E__inference_dense_6_layer_call_and_return_conditional_losses_15516099

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ы#
╖
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515916

inputs9
&dense_4_matmul_readvariableop_resource:	А6
'dense_4_biasadd_readvariableop_resource:	А:
&dense_5_matmul_readvariableop_resource:
АА6
'dense_5_biasadd_readvariableop_resource:	А9
&dense_6_matmul_readvariableop_resource:	А@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@ 5
'dense_7_biasadd_readvariableop_resource: 
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOpЕ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0z
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         АЖ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0О
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         @Д
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0Н
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          g
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          ╩
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Э,
и
C__inference_model_layer_call_and_return_conditional_losses_15515078

inputs
inputs_1(
sequential_1_15515005:	А$
sequential_1_15515007:	А)
sequential_1_15515009:
АА$
sequential_1_15515011:	А(
sequential_1_15515013:	А@#
sequential_1_15515015:@'
sequential_1_15515017:@ #
sequential_1_15515019: &
sequential_15515022:	А"
sequential_15515024:	А'
sequential_15515026:
АА"
sequential_15515028:	А&
sequential_15515030:	А@!
sequential_15515032:@%
sequential_15515034:@ !
sequential_15515036: 
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCallЮ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_1_15515005sequential_1_15515007sequential_1_15515009sequential_1_15515011sequential_1_15515013sequential_1_15515015sequential_1_15515017sequential_1_15515019*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514802И
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_15515022sequential_15515024sequential_15515026sequential_15515028sequential_15515030sequential_15515032sequential_15515034sequential_15515036*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514533С
(tf.math.l2_normalize/l2_normalize/SquareSquare+sequential/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          y
7tf.math.l2_normalize/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :▀
%tf.math.l2_normalize/l2_normalize/SumSum,tf.math.l2_normalize/l2_normalize/Square:y:0@tf.math.l2_normalize/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(p
+tf.math.l2_normalize/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╠
)tf.math.l2_normalize/l2_normalize/MaximumMaximum.tf.math.l2_normalize/l2_normalize/Sum:output:04tf.math.l2_normalize/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         С
'tf.math.l2_normalize/l2_normalize/RsqrtRsqrt-tf.math.l2_normalize/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ┤
!tf.math.l2_normalize/l2_normalizeMul+sequential/StatefulPartitionedCall:output:0+tf.math.l2_normalize/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Х
*tf.math.l2_normalize_1/l2_normalize/SquareSquare-sequential_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          {
9tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :х
'tf.math.l2_normalize_1/l2_normalize/SumSum.tf.math.l2_normalize_1/l2_normalize/Square:y:0Btf.math.l2_normalize_1/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(r
-tf.math.l2_normalize_1/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╥
+tf.math.l2_normalize_1/l2_normalize/MaximumMaximum0tf.math.l2_normalize_1/l2_normalize/Sum:output:06tf.math.l2_normalize_1/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         Х
)tf.math.l2_normalize_1/l2_normalize/RsqrtRsqrt/tf.math.l2_normalize_1/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ║
#tf.math.l2_normalize_1/l2_normalizeMul-sequential_1/StatefulPartitionedCall:output:0-tf.math.l2_normalize_1/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          ∙
dot/PartitionedCallPartitionedCall%tf.math.l2_normalize/l2_normalize:z:0'tf.math.l2_normalize_1/l2_normalize:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_15515065╠
lambda/PartitionedCallPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_layer_call_and_return_conditional_losses_15515075n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
─
Ч
*__inference_dense_7_layer_call_fn_15516108

inputs
unknown:@ 
	unknown_0: 
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_15514795o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╝
`
D__inference_lambda_layer_call_and_return_conditional_losses_15515960

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
а

ў
E__inference_dense_2_layer_call_and_return_conditional_losses_15514510

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
─
Ч
(__inference_dense_layer_call_fn_15515969

inputs
unknown:	А
	unknown_0:	А
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_15514476p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Є
З
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514802

inputs#
dense_4_15514746:	А
dense_4_15514748:	А$
dense_5_15514763:
АА
dense_5_15514765:	А#
dense_6_15514780:	А@
dense_6_15514782:@"
dense_7_15514796:@ 
dense_7_15514798: 
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallє
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_15514746dense_4_15514748*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_15514745Х
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_15514763dense_5_15514765*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_15514762Ф
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_15514780dense_6_15514782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_15514779Ф
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_15514796dense_7_15514798*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_15514795w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╬
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┌
 
H__inference_sequential_layer_call_and_return_conditional_losses_15514533

inputs!
dense_15514477:	А
dense_15514479:	А$
dense_1_15514494:
АА
dense_1_15514496:	А#
dense_2_15514511:	А@
dense_2_15514513:@"
dense_3_15514527:@ 
dense_3_15514529: 
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallы
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15514477dense_15514479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_15514476У
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_15514494dense_1_15514496*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_15514493Ф
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_15514511dense_2_15514513*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_15514510Ф
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_15514527dense_3_15514529*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_15514526w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          ╠
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
─
Ч
*__inference_dense_3_layer_call_fn_15516029

inputs
unknown:@ 
	unknown_0: 
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_15514526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
и

∙
E__inference_dense_5_layer_call_and_return_conditional_losses_15516079

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╚
Щ
*__inference_dense_4_layer_call_fn_15516048

inputs
unknown:	А
	unknown_0:	А
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_15514745p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
и

∙
E__inference_dense_1_layer_call_and_return_conditional_losses_15516000

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╠	
┬
-__inference_sequential_layer_call_fn_15515729

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514533o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
з
░
(__inference_model_layer_call_fn_15515502
inputs_0
inputs_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:@ 

unknown_14: 
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_15515078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
┐n
Ж
C__inference_model_layer_call_and_return_conditional_losses_15515708
inputs_0
inputs_1F
3sequential_1_dense_4_matmul_readvariableop_resource:	АC
4sequential_1_dense_4_biasadd_readvariableop_resource:	АG
3sequential_1_dense_5_matmul_readvariableop_resource:
ААC
4sequential_1_dense_5_biasadd_readvariableop_resource:	АF
3sequential_1_dense_6_matmul_readvariableop_resource:	А@B
4sequential_1_dense_6_biasadd_readvariableop_resource:@E
3sequential_1_dense_7_matmul_readvariableop_resource:@ B
4sequential_1_dense_7_biasadd_readvariableop_resource: B
/sequential_dense_matmul_readvariableop_resource:	А?
0sequential_dense_biasadd_readvariableop_resource:	АE
1sequential_dense_1_matmul_readvariableop_resource:
ААA
2sequential_dense_1_biasadd_readvariableop_resource:	АD
1sequential_dense_2_matmul_readvariableop_resource:	А@@
2sequential_dense_2_biasadd_readvariableop_resource:@C
1sequential_dense_3_matmul_readvariableop_resource:@ @
2sequential_dense_3_biasadd_readvariableop_resource: 
identityИв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв(sequential/dense_1/MatMul/ReadVariableOpв)sequential/dense_2/BiasAdd/ReadVariableOpв(sequential/dense_2/MatMul/ReadVariableOpв)sequential/dense_3/BiasAdd/ReadVariableOpв(sequential/dense_3/MatMul/ReadVariableOpв+sequential_1/dense_4/BiasAdd/ReadVariableOpв*sequential_1/dense_4/MatMul/ReadVariableOpв+sequential_1/dense_5/BiasAdd/ReadVariableOpв*sequential_1/dense_5/MatMul/ReadVariableOpв+sequential_1/dense_6/BiasAdd/ReadVariableOpв*sequential_1/dense_6/MatMul/ReadVariableOpв+sequential_1/dense_7/BiasAdd/ReadVariableOpв*sequential_1/dense_7/MatMul/ReadVariableOpЯ
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ц
sequential_1/dense_4/MatMulMatMulinputs_12sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         Аа
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╡
sequential_1/dense_5/MatMulMatMul'sequential_1/dense_4/Relu:activations:02sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         АЯ
*sequential_1/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0┤
sequential_1/dense_6/MatMulMatMul'sequential_1/dense_5/Relu:activations:02sequential_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ь
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╡
sequential_1/dense_6/BiasAddBiasAdd%sequential_1/dense_6/MatMul:product:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ю
*sequential_1/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0┤
sequential_1/dense_7/MatMulMatMul'sequential_1/dense_6/Relu:activations:02sequential_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ь
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╡
sequential_1/dense_7/BiasAddBiasAdd%sequential_1/dense_7/MatMul:product:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ч
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
sequential/dense/MatMulMatMulinputs_0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЬ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0н
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЩ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АЫ
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0о
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ш
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0п
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @v
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ъ
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0о
sequential/dense_3/MatMulMatMul%sequential/dense_2/Relu:activations:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ш
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0п
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Й
(tf.math.l2_normalize/l2_normalize/SquareSquare#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:          y
7tf.math.l2_normalize/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :▀
%tf.math.l2_normalize/l2_normalize/SumSum,tf.math.l2_normalize/l2_normalize/Square:y:0@tf.math.l2_normalize/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(p
+tf.math.l2_normalize/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╠
)tf.math.l2_normalize/l2_normalize/MaximumMaximum.tf.math.l2_normalize/l2_normalize/Sum:output:04tf.math.l2_normalize/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         С
'tf.math.l2_normalize/l2_normalize/RsqrtRsqrt-tf.math.l2_normalize/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         м
!tf.math.l2_normalize/l2_normalizeMul#sequential/dense_3/BiasAdd:output:0+tf.math.l2_normalize/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Н
*tf.math.l2_normalize_1/l2_normalize/SquareSquare%sequential_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:          {
9tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :х
'tf.math.l2_normalize_1/l2_normalize/SumSum.tf.math.l2_normalize_1/l2_normalize/Square:y:0Btf.math.l2_normalize_1/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(r
-tf.math.l2_normalize_1/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╥
+tf.math.l2_normalize_1/l2_normalize/MaximumMaximum0tf.math.l2_normalize_1/l2_normalize/Sum:output:06tf.math.l2_normalize_1/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         Х
)tf.math.l2_normalize_1/l2_normalize/RsqrtRsqrt/tf.math.l2_normalize_1/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ▓
#tf.math.l2_normalize_1/l2_normalizeMul%sequential_1/dense_7/BiasAdd:output:0-tf.math.l2_normalize_1/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          T
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
dot/ExpandDims
ExpandDims%tf.math.l2_normalize/l2_normalize:z:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:          V
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
dot/ExpandDims_1
ExpandDims'tf.math.l2_normalize_1/l2_normalize:z:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Е

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:         L
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
Q
lambda/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @p

lambda/mulMullambda/mul/x:output:0dot/Squeeze:output:0*
T0*'
_output_shapes
:         Q
lambda/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@l

lambda/addAddV2lambda/mul:z:0lambda/add/y:output:0*
T0*'
_output_shapes
:         ]
IdentityIdentitylambda/add:z:0^NoOp*
T0*'
_output_shapes
:         К
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp+^sequential_1/dense_6/MatMul/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp+^sequential_1/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2X
*sequential_1/dense_6/MatMul/ReadVariableOp*sequential_1/dense_6/MatMul/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2X
*sequential_1/dense_7/MatMul/ReadVariableOp*sequential_1/dense_7/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
а

ў
E__inference_dense_2_layer_call_and_return_conditional_losses_15516020

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╚	
Ў
E__inference_dense_7_layer_call_and_return_conditional_losses_15516118

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Э
E
)__inference_lambda_layer_call_fn_15515944

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_layer_call_and_return_conditional_losses_15515129`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Я,
и
C__inference_model_layer_call_and_return_conditional_losses_15515363
input_1
input_2(
sequential_1_15515312:	А$
sequential_1_15515314:	А)
sequential_1_15515316:
АА$
sequential_1_15515318:	А(
sequential_1_15515320:	А@#
sequential_1_15515322:@'
sequential_1_15515324:@ #
sequential_1_15515326: &
sequential_15515329:	А"
sequential_15515331:	А'
sequential_15515333:
АА"
sequential_15515335:	А&
sequential_15515337:	А@!
sequential_15515339:@%
sequential_15515341:@ !
sequential_15515343: 
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCallЭ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1_15515312sequential_1_15515314sequential_1_15515316sequential_1_15515318sequential_1_15515320sequential_1_15515322sequential_1_15515324sequential_1_15515326*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514802Й
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_15515329sequential_15515331sequential_15515333sequential_15515335sequential_15515337sequential_15515339sequential_15515341sequential_15515343*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_15514533С
(tf.math.l2_normalize/l2_normalize/SquareSquare+sequential/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          y
7tf.math.l2_normalize/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :▀
%tf.math.l2_normalize/l2_normalize/SumSum,tf.math.l2_normalize/l2_normalize/Square:y:0@tf.math.l2_normalize/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(p
+tf.math.l2_normalize/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╠
)tf.math.l2_normalize/l2_normalize/MaximumMaximum.tf.math.l2_normalize/l2_normalize/Sum:output:04tf.math.l2_normalize/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         С
'tf.math.l2_normalize/l2_normalize/RsqrtRsqrt-tf.math.l2_normalize/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ┤
!tf.math.l2_normalize/l2_normalizeMul+sequential/StatefulPartitionedCall:output:0+tf.math.l2_normalize/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          Х
*tf.math.l2_normalize_1/l2_normalize/SquareSquare-sequential_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:          {
9tf.math.l2_normalize_1/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :х
'tf.math.l2_normalize_1/l2_normalize/SumSum.tf.math.l2_normalize_1/l2_normalize/Square:y:0Btf.math.l2_normalize_1/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(r
-tf.math.l2_normalize_1/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+╥
+tf.math.l2_normalize_1/l2_normalize/MaximumMaximum0tf.math.l2_normalize_1/l2_normalize/Sum:output:06tf.math.l2_normalize_1/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         Х
)tf.math.l2_normalize_1/l2_normalize/RsqrtRsqrt/tf.math.l2_normalize_1/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         ║
#tf.math.l2_normalize_1/l2_normalizeMul-sequential_1/StatefulPartitionedCall:output:0-tf.math.l2_normalize_1/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:          ∙
dot/PartitionedCallPartitionedCall%tf.math.l2_normalize/l2_normalize:z:0'tf.math.l2_normalize_1/l2_normalize:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_15515065╠
lambda/PartitionedCallPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_layer_call_and_return_conditional_losses_15515075n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2
 
м
&__inference_signature_wrapper_15515464
input_1
input_2
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:@ 

unknown_14: 
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__wrapped_model_15514458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:PL
'
_output_shapes
:         
!
_user_specified_name	input_2
и

∙
E__inference_dense_1_layer_call_and_return_conditional_losses_15514493

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
`
D__inference_lambda_layer_call_and_return_conditional_losses_15515952

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╟
Ш
*__inference_dense_6_layer_call_fn_15516088

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_15514779o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ы#
╖
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515885

inputs9
&dense_4_matmul_readvariableop_resource:	А6
'dense_4_biasadd_readvariableop_resource:	А:
&dense_5_matmul_readvariableop_resource:
АА6
'dense_5_biasadd_readvariableop_resource:	А9
&dense_6_matmul_readvariableop_resource:	А@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@ 5
'dense_7_biasadd_readvariableop_resource: 
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOpЕ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0z
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         АЖ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0О
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         @Д
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0Н
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          В
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          g
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          ╩
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
в

Ў
C__inference_dense_layer_call_and_return_conditional_losses_15515980

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╨	
─
/__inference_sequential_1_layer_call_fn_15515854

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╚	
Ў
E__inference_dense_7_layer_call_and_return_conditional_losses_15514795

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ц
serving_default╥
;
input_10
serving_default_input_1:0         
;
input_20
serving_default_input_2:0         :
lambda0
StatefulPartitionedCall:0         tensorflow/serving/predict:в╤
 
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
╞
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
╞
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_sequential
(
&	keras_api"
_tf_keras_layer
(
'	keras_api"
_tf_keras_layer
е
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
е
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15"
trackable_list_wrapper
Ц
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╒
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_32ъ
(__inference_model_layer_call_fn_15515113
(__inference_model_layer_call_fn_15515502
(__inference_model_layer_call_fn_15515540
(__inference_model_layer_call_fn_15515308┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zItrace_0zJtrace_1zKtrace_2zLtrace_3
┴
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_32╓
C__inference_model_layer_call_and_return_conditional_losses_15515624
C__inference_model_layer_call_and_return_conditional_losses_15515708
C__inference_model_layer_call_and_return_conditional_losses_15515363
C__inference_model_layer_call_and_return_conditional_losses_15515418┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zMtrace_0zNtrace_1zOtrace_2zPtrace_3
╫B╘
#__inference__wrapped_model_15514458input_1input_2"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
У
Qiter

Rbeta_1

Sbeta_2
	Tdecay
Ulearning_rate4mю5mя6mЁ7mё8mЄ9mє:mЇ;mї<mЎ=mў>m°?m∙@m·Am√Bm№Cm¤4v■5v 6vА7vБ8vВ9vГ:vД;vЕ<vЖ=vЗ>vИ?vЙ@vКAvЛBvМCvН"
	optimizer
,
Vserving_default"
signature_map
╗
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

4kernel
5bias"
_tf_keras_layer
╗
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

6kernel
7bias"
_tf_keras_layer
╗
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
╗
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
X
40
51
62
73
84
95
:6
;7"
trackable_list_wrapper
X
40
51
62
73
84
95
:6
;7"
trackable_list_wrapper
 "
trackable_list_wrapper
н
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
щ
ttrace_0
utrace_1
vtrace_2
wtrace_32■
-__inference_sequential_layer_call_fn_15514552
-__inference_sequential_layer_call_fn_15515729
-__inference_sequential_layer_call_fn_15515750
-__inference_sequential_layer_call_fn_15514679┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zttrace_0zutrace_1zvtrace_2zwtrace_3
╒
xtrace_0
ytrace_1
ztrace_2
{trace_32ъ
H__inference_sequential_layer_call_and_return_conditional_losses_15515781
H__inference_sequential_layer_call_and_return_conditional_losses_15515812
H__inference_sequential_layer_call_and_return_conditional_losses_15514703
H__inference_sequential_layer_call_and_return_conditional_losses_15514727┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zxtrace_0zytrace_1zztrace_2z{trace_3
╜
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
┴
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

>kernel
?bias"
_tf_keras_layer
┴
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses

@kernel
Abias"
_tf_keras_layer
┴
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses

Bkernel
Cbias"
_tf_keras_layer
X
<0
=1
>2
?3
@4
A5
B6
C7"
trackable_list_wrapper
X
<0
=1
>2
?3
@4
A5
B6
C7"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
∙
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_32Ж
/__inference_sequential_1_layer_call_fn_15514821
/__inference_sequential_1_layer_call_fn_15515833
/__inference_sequential_1_layer_call_fn_15515854
/__inference_sequential_1_layer_call_fn_15514948┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0zЪtrace_1zЫtrace_2zЬtrace_3
х
Эtrace_0
Юtrace_1
Яtrace_2
аtrace_32Є
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515885
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515916
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514972
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514996┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0zЮtrace_1zЯtrace_2zаtrace_3
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
▓
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
ь
жtrace_02═
&__inference_dot_layer_call_fn_15515922в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zжtrace_0
З
зtrace_02ш
A__inference_dot_layer_call_and_return_conditional_losses_15515934в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
╙
нtrace_0
оtrace_12Ш
)__inference_lambda_layer_call_fn_15515939
)__inference_lambda_layer_call_fn_15515944┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0zоtrace_1
Й
пtrace_0
░trace_12╬
D__inference_lambda_layer_call_and_return_conditional_losses_15515952
D__inference_lambda_layer_call_and_return_conditional_losses_15515960┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0z░trace_1
:	А2dense/kernel
:А2
dense/bias
": 
АА2dense_1/kernel
:А2dense_1/bias
!:	А@2dense_2/kernel
:@2dense_2/bias
 :@ 2dense_3/kernel
: 2dense_3/bias
!:	А2dense_4/kernel
:А2dense_4/bias
": 
АА2dense_5/kernel
:А2dense_5/bias
!:	А@2dense_6/kernel
:@2dense_6/bias
 :@ 2dense_7/kernel
: 2dense_7/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
(
▒0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
(__inference_model_layer_call_fn_15515113input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
(__inference_model_layer_call_fn_15515502inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
(__inference_model_layer_call_fn_15515540inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
(__inference_model_layer_call_fn_15515308input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
аBЭ
C__inference_model_layer_call_and_return_conditional_losses_15515624inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
аBЭ
C__inference_model_layer_call_and_return_conditional_losses_15515708inputs/0inputs/1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
C__inference_model_layer_call_and_return_conditional_losses_15515363input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
C__inference_model_layer_call_and_return_conditional_losses_15515418input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╘B╤
&__inference_signature_wrapper_15515464input_1input_2"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
ю
╖trace_02╧
(__inference_dense_layer_call_fn_15515969в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
Й
╕trace_02ъ
C__inference_dense_layer_call_and_return_conditional_losses_15515980в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
Ё
╛trace_02╤
*__inference_dense_1_layer_call_fn_15515989в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
Л
┐trace_02ь
E__inference_dense_1_layer_call_and_return_conditional_losses_15516000в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
Ё
┼trace_02╤
*__inference_dense_2_layer_call_fn_15516009в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┼trace_0
Л
╞trace_02ь
E__inference_dense_2_layer_call_and_return_conditional_losses_15516020в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
Ё
╠trace_02╤
*__inference_dense_3_layer_call_fn_15516029в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╠trace_0
Л
═trace_02ь
E__inference_dense_3_layer_call_and_return_conditional_losses_15516039в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
-__inference_sequential_layer_call_fn_15514552dense_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_sequential_layer_call_fn_15515729inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_sequential_layer_call_fn_15515750inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
-__inference_sequential_layer_call_fn_15514679dense_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_sequential_layer_call_and_return_conditional_losses_15515781inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_sequential_layer_call_and_return_conditional_losses_15515812inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
H__inference_sequential_layer_call_and_return_conditional_losses_15514703dense_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
H__inference_sequential_layer_call_and_return_conditional_losses_15514727dense_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
Ё
╙trace_02╤
*__inference_dense_4_layer_call_fn_15516048в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╙trace_0
Л
╘trace_02ь
E__inference_dense_4_layer_call_and_return_conditional_losses_15516059в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
Ё
┌trace_02╤
*__inference_dense_5_layer_call_fn_15516068в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0
Л
█trace_02ь
E__inference_dense_5_layer_call_and_return_conditional_losses_15516079в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
Ё
сtrace_02╤
*__inference_dense_6_layer_call_fn_15516088в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zсtrace_0
Л
тtrace_02ь
E__inference_dense_6_layer_call_and_return_conditional_losses_15516099в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
Ё
шtrace_02╤
*__inference_dense_7_layer_call_fn_15516108в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zшtrace_0
Л
щtrace_02ь
E__inference_dense_7_layer_call_and_return_conditional_losses_15516118в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBД
/__inference_sequential_1_layer_call_fn_15514821dense_4_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
/__inference_sequential_1_layer_call_fn_15515833inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
/__inference_sequential_1_layer_call_fn_15515854inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЗBД
/__inference_sequential_1_layer_call_fn_15514948dense_4_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЫBШ
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515885inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЫBШ
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515916inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
вBЯ
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514972dense_4_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
вBЯ
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514996dense_4_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
цBу
&__inference_dot_layer_call_fn_15515922inputs/0inputs/1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
БB■
A__inference_dot_layer_call_and_return_conditional_losses_15515934inputs/0inputs/1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
·Bў
)__inference_lambda_layer_call_fn_15515939inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
)__inference_lambda_layer_call_fn_15515944inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
D__inference_lambda_layer_call_and_return_conditional_losses_15515952inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
D__inference_lambda_layer_call_and_return_conditional_losses_15515960inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
ъ	variables
ы	keras_api

ьtotal

эcount"
_tf_keras_metric
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
▄B┘
(__inference_dense_layer_call_fn_15515969inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_layer_call_and_return_conditional_losses_15515980inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_dense_1_layer_call_fn_15515989inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_1_layer_call_and_return_conditional_losses_15516000inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_dense_2_layer_call_fn_15516009inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_2_layer_call_and_return_conditional_losses_15516020inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_dense_3_layer_call_fn_15516029inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_3_layer_call_and_return_conditional_losses_15516039inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_dense_4_layer_call_fn_15516048inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_4_layer_call_and_return_conditional_losses_15516059inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_dense_5_layer_call_fn_15516068inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_5_layer_call_and_return_conditional_losses_15516079inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_dense_6_layer_call_fn_15516088inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_6_layer_call_and_return_conditional_losses_15516099inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_dense_7_layer_call_fn_15516108inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_7_layer_call_and_return_conditional_losses_15516118inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ь0
э1"
trackable_list_wrapper
.
ъ	variables"
_generic_user_object
:  (2total
:  (2count
$:"	А2Adam/dense/kernel/m
:А2Adam/dense/bias/m
':%
АА2Adam/dense_1/kernel/m
 :А2Adam/dense_1/bias/m
&:$	А@2Adam/dense_2/kernel/m
:@2Adam/dense_2/bias/m
%:#@ 2Adam/dense_3/kernel/m
: 2Adam/dense_3/bias/m
&:$	А2Adam/dense_4/kernel/m
 :А2Adam/dense_4/bias/m
':%
АА2Adam/dense_5/kernel/m
 :А2Adam/dense_5/bias/m
&:$	А@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
%:#@ 2Adam/dense_7/kernel/m
: 2Adam/dense_7/bias/m
$:"	А2Adam/dense/kernel/v
:А2Adam/dense/bias/v
':%
АА2Adam/dense_1/kernel/v
 :А2Adam/dense_1/bias/v
&:$	А@2Adam/dense_2/kernel/v
:@2Adam/dense_2/bias/v
%:#@ 2Adam/dense_3/kernel/v
: 2Adam/dense_3/bias/v
&:$	А2Adam/dense_4/kernel/v
 :А2Adam/dense_4/bias/v
':%
АА2Adam/dense_5/kernel/v
 :А2Adam/dense_5/bias/v
&:$	А@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@ 2Adam/dense_7/kernel/v
: 2Adam/dense_7/bias/v┼
#__inference__wrapped_model_15514458Э<=>?@ABC456789:;XвU
NвK
IЪF
!К
input_1         
!К
input_2         
к "/к,
*
lambda К
lambda         з
E__inference_dense_1_layer_call_and_return_conditional_losses_15516000^670в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ 
*__inference_dense_1_layer_call_fn_15515989Q670в-
&в#
!К
inputs         А
к "К         Аж
E__inference_dense_2_layer_call_and_return_conditional_losses_15516020]890в-
&в#
!К
inputs         А
к "%в"
К
0         @
Ъ ~
*__inference_dense_2_layer_call_fn_15516009P890в-
&в#
!К
inputs         А
к "К         @е
E__inference_dense_3_layer_call_and_return_conditional_losses_15516039\:;/в,
%в"
 К
inputs         @
к "%в"
К
0          
Ъ }
*__inference_dense_3_layer_call_fn_15516029O:;/в,
%в"
 К
inputs         @
к "К          ж
E__inference_dense_4_layer_call_and_return_conditional_losses_15516059]<=/в,
%в"
 К
inputs         
к "&в#
К
0         А
Ъ ~
*__inference_dense_4_layer_call_fn_15516048P<=/в,
%в"
 К
inputs         
к "К         Аз
E__inference_dense_5_layer_call_and_return_conditional_losses_15516079^>?0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ 
*__inference_dense_5_layer_call_fn_15516068Q>?0в-
&в#
!К
inputs         А
к "К         Аж
E__inference_dense_6_layer_call_and_return_conditional_losses_15516099]@A0в-
&в#
!К
inputs         А
к "%в"
К
0         @
Ъ ~
*__inference_dense_6_layer_call_fn_15516088P@A0в-
&в#
!К
inputs         А
к "К         @е
E__inference_dense_7_layer_call_and_return_conditional_losses_15516118\BC/в,
%в"
 К
inputs         @
к "%в"
К
0          
Ъ }
*__inference_dense_7_layer_call_fn_15516108OBC/в,
%в"
 К
inputs         @
к "К          д
C__inference_dense_layer_call_and_return_conditional_losses_15515980]45/в,
%в"
 К
inputs         
к "&в#
К
0         А
Ъ |
(__inference_dense_layer_call_fn_15515969P45/в,
%в"
 К
inputs         
к "К         А╔
A__inference_dot_layer_call_and_return_conditional_losses_15515934ГZвW
PвM
KЪH
"К
inputs/0          
"К
inputs/1          
к "%в"
К
0         
Ъ а
&__inference_dot_layer_call_fn_15515922vZвW
PвM
KЪH
"К
inputs/0          
"К
inputs/1          
к "К         и
D__inference_lambda_layer_call_and_return_conditional_losses_15515952`7в4
-в*
 К
inputs         

 
p 
к "%в"
К
0         
Ъ и
D__inference_lambda_layer_call_and_return_conditional_losses_15515960`7в4
-в*
 К
inputs         

 
p
к "%в"
К
0         
Ъ А
)__inference_lambda_layer_call_fn_15515939S7в4
-в*
 К
inputs         

 
p 
к "К         А
)__inference_lambda_layer_call_fn_15515944S7в4
-в*
 К
inputs         

 
p
к "К         у
C__inference_model_layer_call_and_return_conditional_losses_15515363Ы<=>?@ABC456789:;`в]
VвS
IЪF
!К
input_1         
!К
input_2         
p 

 
к "%в"
К
0         
Ъ у
C__inference_model_layer_call_and_return_conditional_losses_15515418Ы<=>?@ABC456789:;`в]
VвS
IЪF
!К
input_1         
!К
input_2         
p

 
к "%в"
К
0         
Ъ х
C__inference_model_layer_call_and_return_conditional_losses_15515624Э<=>?@ABC456789:;bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p 

 
к "%в"
К
0         
Ъ х
C__inference_model_layer_call_and_return_conditional_losses_15515708Э<=>?@ABC456789:;bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p

 
к "%в"
К
0         
Ъ ╗
(__inference_model_layer_call_fn_15515113О<=>?@ABC456789:;`в]
VвS
IЪF
!К
input_1         
!К
input_2         
p 

 
к "К         ╗
(__inference_model_layer_call_fn_15515308О<=>?@ABC456789:;`в]
VвS
IЪF
!К
input_1         
!К
input_2         
p

 
к "К         ╜
(__inference_model_layer_call_fn_15515502Р<=>?@ABC456789:;bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p 

 
к "К         ╜
(__inference_model_layer_call_fn_15515540Р<=>?@ABC456789:;bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p

 
к "К         ┐
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514972q<=>?@ABC>в;
4в1
'К$
dense_4_input         
p 

 
к "%в"
К
0          
Ъ ┐
J__inference_sequential_1_layer_call_and_return_conditional_losses_15514996q<=>?@ABC>в;
4в1
'К$
dense_4_input         
p

 
к "%в"
К
0          
Ъ ╕
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515885j<=>?@ABC7в4
-в*
 К
inputs         
p 

 
к "%в"
К
0          
Ъ ╕
J__inference_sequential_1_layer_call_and_return_conditional_losses_15515916j<=>?@ABC7в4
-в*
 К
inputs         
p

 
к "%в"
К
0          
Ъ Ч
/__inference_sequential_1_layer_call_fn_15514821d<=>?@ABC>в;
4в1
'К$
dense_4_input         
p 

 
к "К          Ч
/__inference_sequential_1_layer_call_fn_15514948d<=>?@ABC>в;
4в1
'К$
dense_4_input         
p

 
к "К          Р
/__inference_sequential_1_layer_call_fn_15515833]<=>?@ABC7в4
-в*
 К
inputs         
p 

 
к "К          Р
/__inference_sequential_1_layer_call_fn_15515854]<=>?@ABC7в4
-в*
 К
inputs         
p

 
к "К          ╗
H__inference_sequential_layer_call_and_return_conditional_losses_15514703o456789:;<в9
2в/
%К"
dense_input         
p 

 
к "%в"
К
0          
Ъ ╗
H__inference_sequential_layer_call_and_return_conditional_losses_15514727o456789:;<в9
2в/
%К"
dense_input         
p

 
к "%в"
К
0          
Ъ ╢
H__inference_sequential_layer_call_and_return_conditional_losses_15515781j456789:;7в4
-в*
 К
inputs         
p 

 
к "%в"
К
0          
Ъ ╢
H__inference_sequential_layer_call_and_return_conditional_losses_15515812j456789:;7в4
-в*
 К
inputs         
p

 
к "%в"
К
0          
Ъ У
-__inference_sequential_layer_call_fn_15514552b456789:;<в9
2в/
%К"
dense_input         
p 

 
к "К          У
-__inference_sequential_layer_call_fn_15514679b456789:;<в9
2в/
%К"
dense_input         
p

 
к "К          О
-__inference_sequential_layer_call_fn_15515729]456789:;7в4
-в*
 К
inputs         
p 

 
к "К          О
-__inference_sequential_layer_call_fn_15515750]456789:;7в4
-в*
 К
inputs         
p

 
к "К          ┘
&__inference_signature_wrapper_15515464о<=>?@ABC456789:;iвf
в 
_к\
,
input_1!К
input_1         
,
input_2!К
input_2         "/к,
*
lambda К
lambda         