.class public Lb/g/a/a/f;
.super Lb/g/a/a/p;
.source "ConstraintWidgetContainer.java"


# instance fields
.field public Aa:[Lb/g/a/a/c;

.field public Ba:I

.field public Ca:Z

.field public Da:Z

.field public Ea:I

.field public qa:Z

.field public ra:Lb/g/a/e;

.field public sa:Lb/g/a/a/o;

.field public ta:I

.field public ua:I

.field public va:I

.field public wa:I

.field public xa:I

.field public ya:I

.field public za:[Lb/g/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb/g/a/a/p;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/g/a/a/f;->qa:Z

    .line 3
    new-instance v1, Lb/g/a/e;

    invoke-direct {v1}, Lb/g/a/e;-><init>()V

    iput-object v1, p0, Lb/g/a/a/f;->ra:Lb/g/a/e;

    .line 4
    iput v0, p0, Lb/g/a/a/f;->xa:I

    .line 5
    iput v0, p0, Lb/g/a/a/f;->ya:I

    const/4 v1, 0x4

    .line 6
    new-array v2, v1, [Lb/g/a/a/c;

    iput-object v2, p0, Lb/g/a/a/f;->za:[Lb/g/a/a/c;

    .line 7
    new-array v1, v1, [Lb/g/a/a/c;

    iput-object v1, p0, Lb/g/a/a/f;->Aa:[Lb/g/a/a/c;

    const/4 v1, 0x3

    .line 8
    iput v1, p0, Lb/g/a/a/f;->Ba:I

    .line 9
    iput-boolean v0, p0, Lb/g/a/a/f;->Ca:Z

    .line 10
    iput-boolean v0, p0, Lb/g/a/a/f;->Da:Z

    .line 11
    iput v0, p0, Lb/g/a/a/f;->Ea:I

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v0}, Lb/g/a/e;->j()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/g/a/a/f;->ta:I

    .line 3
    iput v0, p0, Lb/g/a/a/f;->va:I

    .line 4
    iput v0, p0, Lb/g/a/a/f;->ua:I

    .line 5
    iput v0, p0, Lb/g/a/a/f;->wa:I

    .line 6
    invoke-super {p0}, Lb/g/a/a/p;->C()V

    return-void
.end method

.method public J()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 2
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5
    iput-boolean v4, v1, Lb/g/a/a/f;->Ca:Z

    .line 6
    iput-boolean v4, v1, Lb/g/a/a/f;->Da:Z

    .line 7
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v1, Lb/g/a/a/f;->sa:Lb/g/a/a/o;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lb/g/a/a/o;

    invoke-direct {v0, v1}, Lb/g/a/a/o;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v0, v1, Lb/g/a/a/f;->sa:Lb/g/a/a/o;

    .line 10
    :cond_0
    iget-object v0, v1, Lb/g/a/a/f;->sa:Lb/g/a/a/o;

    invoke-virtual {v0, v1}, Lb/g/a/a/o;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 11
    iget v0, v1, Lb/g/a/a/f;->ta:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(I)V

    .line 12
    iget v0, v1, Lb/g/a/a/f;->ua:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o(I)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D()V

    .line 14
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v0}, Lb/g/a/e;->e()Lb/g/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/g/a/a/p;->a(Lb/g/a/c;)V

    goto :goto_0

    .line 15
    :cond_1
    iput v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 16
    iput v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 17
    :goto_0
    iget v0, v1, Lb/g/a/a/f;->Ba:I

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v1, v7}, Lb/g/a/a/f;->p(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual/range {p0 .. p0}, Lb/g/a/a/f;->R()V

    .line 20
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lb/g/a/a/f;->Q()V

    .line 21
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    iput-boolean v8, v0, Lb/g/a/e;->i:Z

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    iput-boolean v4, v0, Lb/g/a/e;->i:Z

    .line 23
    :goto_1
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v0, v8

    .line 24
    aget-object v10, v0, v4

    .line 25
    invoke-virtual/range {p0 .. p0}, Lb/g/a/a/f;->T()V

    .line 26
    iget-object v0, v1, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v11, :cond_5

    .line 27
    iget-object v12, v1, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 28
    instance-of v13, v12, Lb/g/a/a/p;

    if-eqz v13, :cond_4

    .line 29
    check-cast v12, Lb/g/a/a/p;

    invoke-virtual {v12}, Lb/g/a/a/p;->J()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_3
    if-eqz v12, :cond_14

    add-int/lit8 v14, v0, 0x1

    .line 30
    :try_start_0
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v0}, Lb/g/a/e;->j()V

    .line 31
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Lb/g/a/e;)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_6

    .line 32
    iget-object v15, v1, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 33
    iget-object v7, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Lb/g/a/e;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x8

    goto :goto_4

    .line 34
    :cond_6
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v1, v0}, Lb/g/a/a/f;->d(Lb/g/a/e;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 35
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v0}, Lb/g/a/e;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXCEPTION : "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    :goto_5
    const/4 v0, 0x2

    if-eqz v12, :cond_9

    .line 38
    iget-object v7, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    sget-object v8, Lb/g/a/a/j;->a:[Z

    invoke-virtual {v1, v7, v8}, Lb/g/a/a/f;->a(Lb/g/a/e;[Z)V

    :cond_8
    :goto_6
    const/16 v4, 0x8

    goto :goto_8

    .line 39
    :cond_9
    iget-object v7, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(Lb/g/a/e;)V

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v11, :cond_8

    .line 40
    iget-object v8, v1, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 41
    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v12, v4

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v15, :cond_a

    .line 42
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v12

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()I

    move-result v15

    if-ge v12, v15, :cond_a

    .line 43
    sget-object v7, Lb/g/a/a/j;->a:[Z

    const/4 v12, 0x1

    aput-boolean v12, v7, v0

    goto :goto_6

    :cond_a
    const/4 v12, 0x1

    .line 44
    iget-object v15, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v15, v15, v12

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v4, :cond_b

    .line 45
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v4

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v()I

    move-result v8

    if-ge v4, v8, :cond_b

    .line 46
    sget-object v4, Lb/g/a/a/j;->a:[Z

    aput-boolean v12, v4, v0

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_7

    :goto_8
    if-ge v14, v4, :cond_f

    .line 47
    sget-object v7, Lb/g/a/a/j;->a:[Z

    aget-boolean v0, v7, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v0, v11, :cond_c

    .line 48
    iget-object v12, v1, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 49
    iget v15, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 50
    iget v15, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v12

    add-int/2addr v15, v12

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 51
    :cond_c
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 53
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v8, :cond_d

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v8

    if-ge v8, v0, :cond_d

    .line 55
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    .line 56
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    aput-object v8, v0, v12

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    .line 57
    :goto_a
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v8, :cond_e

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v8

    if-ge v8, v7, :cond_e

    .line 59
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(I)V

    .line 60
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aput-object v7, v0, v8

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_b

    :cond_e
    move v8, v13

    goto :goto_b

    :cond_f
    move v8, v13

    const/4 v0, 0x0

    .line 61
    :goto_b
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v12

    if-le v7, v12, :cond_10

    .line 63
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    .line 64
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aput-object v7, v0, v8

    const/4 v0, 0x1

    const/4 v8, 0x1

    .line 65
    :cond_10
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v12

    if-le v7, v12, :cond_11

    .line 67
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(I)V

    .line 68
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    aput-object v7, v0, v12

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_c

    :cond_11
    const/4 v12, 0x1

    :goto_c
    if-nez v8, :cond_13

    .line 69
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aget-object v7, v7, v13

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v15, :cond_12

    if-lez v5, :cond_12

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    if-le v7, v5, :cond_12

    .line 71
    iput-boolean v12, v1, Lb/g/a/a/f;->Ca:Z

    .line 72
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v0, v13

    .line 73
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    const/4 v0, 0x1

    const/4 v8, 0x1

    .line 74
    :cond_12
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v13, :cond_13

    if-lez v6, :cond_13

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v7

    if-le v7, v6, :cond_13

    .line 76
    iput-boolean v12, v1, Lb/g/a/a/f;->Da:Z

    .line 77
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v0, v12

    .line 78
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(I)V

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_d

    :cond_13
    move v12, v0

    move v13, v8

    :goto_d
    move v0, v14

    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 79
    :cond_14
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_15

    .line 80
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 81
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 82
    iget-object v3, v1, Lb/g/a/a/f;->sa:Lb/g/a/a/o;

    invoke-virtual {v3, v1}, Lb/g/a/a/o;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 83
    iget v3, v1, Lb/g/a/a/f;->ta:I

    add-int/2addr v0, v3

    iget v3, v1, Lb/g/a/a/f;->va:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    .line 84
    iget v0, v1, Lb/g/a/a/f;->ua:I

    add-int/2addr v2, v0

    iget v0, v1, Lb/g/a/a/f;->wa:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(I)V

    goto :goto_e

    .line 85
    :cond_15
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 86
    iput v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    :goto_e
    if-eqz v13, :cond_16

    .line 87
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    const/4 v2, 0x1

    .line 88
    aput-object v9, v0, v2

    .line 89
    :cond_16
    iget-object v0, v1, Lb/g/a/a/f;->ra:Lb/g/a/e;

    invoke-virtual {v0}, Lb/g/a/e;->e()Lb/g/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/g/a/a/p;->a(Lb/g/a/c;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lb/g/a/a/p;->I()Lb/g/a/a/f;

    move-result-object v0

    if-ne v1, v0, :cond_17

    .line 91
    invoke-virtual/range {p0 .. p0}, Lb/g/a/a/p;->G()V

    :cond_17
    return-void
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Lb/g/a/a/f;->Ba:I

    return v0
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/g/a/a/f;->Da:Z

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/g/a/a/f;->qa:Z

    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/g/a/a/f;->Ca:Z

    return v0
.end method

.method public Q()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lb/g/a/a/f;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lb/g/a/a/f;->Ba:I

    invoke-virtual {p0, v0}, Lb/g/a/a/f;->a(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/g/a/a/f;->U()V

    return-void
.end method

.method public R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/g/a/a/f;->R()V

    .line 2
    iget v0, p0, Lb/g/a/a/f;->Ba:I

    invoke-virtual {p0, v0}, Lb/g/a/a/f;->a(I)V

    return-void
.end method

.method public final T()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lb/g/a/a/f;->xa:I

    .line 2
    iput v0, p0, Lb/g/a/a/f;->ya:I

    return-void
.end method

.method public U()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v3, v2}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    .line 4
    invoke-virtual {v1, v3, v2}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 12
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(I)V

    .line 13
    iget-object v0, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    iget-object v2, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lb/g/a/a/f;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lb/g/a/a/f;->e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lb/g/a/e;[Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    aput-boolean v0, p2, v1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(Lb/g/a/e;)V

    .line 3
    iget-object v2, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    iget-object v4, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 5
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(Lb/g/a/e;)V

    .line 6
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 7
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 8
    aput-boolean v7, p2, v1

    .line 9
    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    .line 10
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v()I

    move-result v4

    if-ge v5, v4, :cond_1

    .line 11
    aput-boolean v7, p2, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/g/a/a/f;->qa:Z

    return-void
.end method

.method public final d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 22
    iget v0, p0, Lb/g/a/a/f;->xa:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/g/a/a/f;->Aa:[Lb/g/a/a/c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 23
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/a/a/c;

    iput-object v0, p0, Lb/g/a/a/f;->Aa:[Lb/g/a/a/c;

    .line 24
    :cond_0
    iget-object v0, p0, Lb/g/a/a/f;->Aa:[Lb/g/a/a/c;

    iget v1, p0, Lb/g/a/a/f;->xa:I

    new-instance v2, Lb/g/a/a/c;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lb/g/a/a/f;->O()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lb/g/a/a/c;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v2, v0, v1

    .line 25
    iget p1, p0, Lb/g/a/a/f;->xa:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/g/a/a/f;->xa:I

    return-void
.end method

.method public d(Lb/g/a/e;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/g/a/e;)V

    .line 2
    iget-object v0, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    .line 3
    iget-object v4, p0, Lb/g/a/a/p;->pa:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 4
    instance-of v5, v4, Lb/g/a/a/f;

    if-eqz v5, :cond_3

    .line 5
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v5, v1

    .line 6
    aget-object v3, v5, v3

    .line 7
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v5, :cond_0

    .line 8
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 9
    :cond_0
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_1

    .line 10
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 11
    :cond_1
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/g/a/e;)V

    .line 12
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v5, :cond_2

    .line 13
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 14
    :cond_2
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_4

    .line 15
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {p0, p1, v4}, Lb/g/a/a/j;->a(Lb/g/a/a/f;Lb/g/a/e;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 17
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/g/a/e;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_5
    iget v0, p0, Lb/g/a/a/f;->xa:I

    if-lez v0, :cond_6

    .line 19
    invoke-static {p0, p1, v1}, Lb/g/a/a/b;->a(Lb/g/a/a/f;Lb/g/a/e;I)V

    .line 20
    :cond_6
    iget v0, p0, Lb/g/a/a/f;->ya:I

    if-lez v0, :cond_7

    .line 21
    invoke-static {p0, p1, v3}, Lb/g/a/a/b;->a(Lb/g/a/a/f;Lb/g/a/e;I)V

    :cond_7
    return v3
.end method

.method public e(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/g/a/a/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/g/a/a/m;->a(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/g/a/a/m;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lb/g/a/a/m;->a(I)V

    :cond_1
    return-void
.end method

.method public final e(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 5
    iget v0, p0, Lb/g/a/a/f;->ya:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lb/g/a/a/f;->za:[Lb/g/a/a/c;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 6
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/a/a/c;

    iput-object v0, p0, Lb/g/a/a/f;->za:[Lb/g/a/a/c;

    .line 7
    :cond_0
    iget-object v0, p0, Lb/g/a/a/f;->za:[Lb/g/a/a/c;

    iget v2, p0, Lb/g/a/a/f;->ya:I

    new-instance v3, Lb/g/a/a/c;

    invoke-virtual {p0}, Lb/g/a/a/f;->O()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lb/g/a/a/c;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v3, v0, v2

    .line 8
    iget p1, p0, Lb/g/a/a/f;->ya:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/g/a/a/f;->ya:I

    return-void
.end method

.method public p(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lb/g/a/a/f;->Ba:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/g/a/a/f;->Ba:I

    return-void
.end method
