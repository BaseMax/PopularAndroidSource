.class public Lb/g/a/a/b;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method public static a(Lb/g/a/a/f;Lb/g/a/e;I)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget v1, p0, Lb/g/a/a/f;->xa:I

    .line 2
    iget-object v2, p0, Lb/g/a/a/f;->Aa:[Lb/g/a/a/c;

    move v3, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3
    iget v2, p0, Lb/g/a/a/f;->ya:I

    .line 4
    iget-object v3, p0, Lb/g/a/a/f;->za:[Lb/g/a/a/c;

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    :goto_0
    if-ge v0, v3, :cond_3

    .line 5
    aget-object v4, v2, v0

    .line 6
    invoke-virtual {v4}, Lb/g/a/a/c;->a()V

    const/4 v5, 0x4

    .line 7
    invoke-virtual {p0, v5}, Lb/g/a/a/f;->p(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-static {p0, p1, p2, v1, v4}, Lb/g/a/a/j;->a(Lb/g/a/a/f;Lb/g/a/e;IILb/g/a/a/c;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {p0, p1, p2, v1, v4}, Lb/g/a/a/b;->a(Lb/g/a/a/f;Lb/g/a/e;IILb/g/a/a/c;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p0, p1, p2, v1, v4}, Lb/g/a/a/b;->a(Lb/g/a/a/f;Lb/g/a/e;IILb/g/a/a/c;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(Lb/g/a/a/f;Lb/g/a/e;IILb/g/a/a/c;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    .line 11
    iget-object v10, v1, Lb/g/a/a/c;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 12
    iget-object v11, v1, Lb/g/a/a/c;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 13
    iget-object v12, v1, Lb/g/a/a/c;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 14
    iget-object v13, v1, Lb/g/a/a/c;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 15
    iget-object v2, v1, Lb/g/a/a/c;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 16
    iget v3, v1, Lb/g/a/a/c;->k:F

    .line 17
    iget-object v4, v1, Lb/g/a/a/c;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 18
    iget-object v4, v1, Lb/g/a/a/c;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 19
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, p2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-nez p2, :cond_3

    .line 20
    iget v8, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ga:I

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 21
    :goto_1
    iget v14, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ga:I

    if-ne v14, v7, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 22
    :goto_2
    iget v15, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ga:I

    if-ne v15, v5, :cond_6

    goto :goto_5

    .line 23
    :cond_3
    iget v8, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ha:I

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 24
    :goto_3
    iget v14, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ha:I

    if-ne v14, v7, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 25
    :goto_4
    iget v15, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ha:I

    if-ne v15, v5, :cond_6

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    move v15, v8

    move-object v8, v10

    move/from16 v16, v14

    move v14, v5

    const/4 v5, 0x0

    :goto_7
    const/16 v20, 0x0

    if-nez v5, :cond_13

    .line 26
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    if-nez v4, :cond_8

    if-eqz v14, :cond_7

    goto :goto_8

    :cond_7
    const/16 v22, 0x4

    goto :goto_9

    :cond_8
    :goto_8
    const/16 v22, 0x1

    .line 27
    :goto_9
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v23

    .line 28
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_9

    if-eq v8, v10, :cond_9

    .line 29
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v7

    add-int v23, v23, v7

    :cond_9
    move/from16 v7, v23

    if-eqz v14, :cond_a

    if-eq v8, v10, :cond_a

    if-eq v8, v12, :cond_a

    move/from16 v23, v3

    move/from16 v22, v5

    const/4 v3, 0x6

    goto :goto_a

    :cond_a
    if-eqz v15, :cond_b

    if-eqz v4, :cond_b

    move/from16 v23, v3

    move/from16 v22, v5

    const/4 v3, 0x4

    goto :goto_a

    :cond_b
    move/from16 v23, v3

    move/from16 v3, v22

    move/from16 v22, v5

    .line 30
    :goto_a
    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_d

    if-ne v8, v12, :cond_c

    move/from16 v24, v15

    .line 31
    iget-object v15, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v25, v2

    const/4 v2, 0x5

    invoke-virtual {v9, v15, v5, v7, v2}, Lb/g/a/e;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_b

    :cond_c
    move-object/from16 v25, v2

    move/from16 v24, v15

    .line 32
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v15, 0x6

    invoke-virtual {v9, v2, v5, v7, v15}, Lb/g/a/e;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 33
    :goto_b
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v9, v2, v5, v7, v3}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/g/a/b;

    goto :goto_c

    :cond_d
    move-object/from16 v25, v2

    move/from16 v24, v15

    :goto_c
    if-eqz v4, :cond_f

    .line 34
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_e

    .line 35
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v9, v3, v2, v6, v5}, Lb/g/a/e;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_d

    :cond_e
    const/4 v6, 0x0

    .line 36
    :goto_d
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v5, 0x6

    invoke-virtual {v9, v2, v3, v6, v5}, Lb/g/a/e;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 37
    :cond_f
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_11

    .line 38
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 39
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v3, p3

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_11

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v3, v8, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v20, v2

    :cond_11
    :goto_e
    if-eqz v20, :cond_12

    move-object/from16 v8, v20

    move/from16 v5, v22

    goto :goto_f

    :cond_12
    const/4 v5, 0x1

    :goto_f
    move/from16 v3, v23

    move/from16 v15, v24

    move-object/from16 v2, v25

    goto/16 :goto_7

    :cond_13
    move-object/from16 v25, v2

    move/from16 v23, v3

    move/from16 v24, v15

    if-eqz v13, :cond_14

    .line 40
    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v5, v2, v3

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_14

    .line 41
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v3

    .line 42
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 43
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v3

    neg-int v3, v3

    const/4 v7, 0x5

    .line 44
    invoke-virtual {v9, v6, v2, v3, v7}, Lb/g/a/e;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_10

    :cond_14
    const/4 v7, 0x5

    :goto_10
    if-eqz v4, :cond_15

    .line 45
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v3, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v3, v2

    .line 46
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    const/4 v3, 0x6

    .line 47
    invoke-virtual {v9, v0, v4, v2, v3}, Lb/g/a/e;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 48
    :cond_15
    iget-object v0, v1, Lb/g/a/a/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b

    .line 50
    iget-boolean v4, v1, Lb/g/a/a/c;->n:Z

    if-eqz v4, :cond_16

    iget-boolean v4, v1, Lb/g/a/a/c;->p:Z

    if-nez v4, :cond_16

    .line 51
    iget v4, v1, Lb/g/a/a/c;->j:I

    int-to-float v4, v4

    goto :goto_11

    :cond_16
    move/from16 v4, v23

    :goto_11
    const/4 v5, 0x0

    move-object/from16 v8, v20

    const/4 v6, 0x0

    const/16 v27, 0x0

    :goto_12
    if-ge v6, v2, :cond_1b

    .line 52
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 53
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ka:[F

    aget v3, v3, p2

    cmpg-float v22, v3, v5

    if-gez v22, :cond_18

    .line 54
    iget-boolean v3, v1, Lb/g/a/a/c;->p:Z

    if-eqz v3, :cond_17

    .line 55
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-virtual {v9, v15, v3, v5, v7}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/g/a/b;

    const/4 v7, 0x6

    goto :goto_14

    :cond_17
    const/4 v7, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    goto :goto_13

    :cond_18
    const/4 v7, 0x4

    :goto_13
    cmpl-float v19, v3, v5

    if-nez v19, :cond_19

    .line 56
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v5, 0x0

    const/4 v7, 0x6

    invoke-virtual {v9, v15, v3, v5, v7}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/g/a/b;

    :goto_14
    move-object/from16 v23, v0

    move/from16 v21, v2

    goto :goto_16

    :cond_19
    const/4 v5, 0x0

    const/4 v7, 0x6

    if-eqz v8, :cond_1a

    .line 57
    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v8, p3

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v21, p3, 0x1

    .line 58
    aget-object v8, v8, v21

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 59
    iget-object v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v0, v7, p3

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 60
    aget-object v7, v7, v21

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v21, v2

    .line 61
    invoke-virtual/range {p1 .. p1}, Lb/g/a/e;->c()Lb/g/a/b;

    move-result-object v2

    move-object/from16 v26, v2

    move/from16 v28, v4

    move/from16 v29, v3

    move-object/from16 v30, v5

    move-object/from16 v31, v8

    move-object/from16 v32, v0

    move-object/from16 v33, v7

    .line 62
    invoke-virtual/range {v26 .. v33}, Lb/g/a/b;->a(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Lb/g/a/b;

    .line 63
    invoke-virtual {v9, v2}, Lb/g/a/e;->a(Lb/g/a/b;)V

    goto :goto_15

    :cond_1a
    move-object/from16 v23, v0

    move/from16 v21, v2

    :goto_15
    move/from16 v27, v3

    move-object v8, v15

    :goto_16
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v21

    move-object/from16 v0, v23

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x5

    goto/16 :goto_12

    :cond_1b
    if-eqz v12, :cond_21

    if-eq v12, v13, :cond_1c

    if-eqz v14, :cond_21

    .line 64
    :cond_1c
    iget-object v0, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v0, p3

    .line 65
    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 66
    aget-object v4, v0, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1d

    aget-object v0, v0, p3

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v0

    goto :goto_17

    :cond_1d
    move-object/from16 v4, v20

    .line 67
    :goto_17
    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v0, v3

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_1e

    aget-object v0, v0, v3

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    goto :goto_18

    :cond_1e
    move-object/from16 v5, v20

    :goto_18
    if-ne v12, v13, :cond_1f

    .line 68
    iget-object v0, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v0, p3

    .line 69
    aget-object v2, v0, v3

    :cond_1f
    if-eqz v4, :cond_3f

    if-eqz v5, :cond_3f

    if-nez p2, :cond_20

    move-object/from16 v0, v25

    .line 70
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:F

    goto :goto_19

    :cond_20
    move-object/from16 v0, v25

    .line 71
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:F

    :goto_19
    move v6, v0

    .line 72
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v3

    .line 73
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v7

    .line 74
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v2, v4

    move v4, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_2d

    :cond_21
    if-eqz v24, :cond_30

    if-eqz v12, :cond_30

    .line 75
    iget v0, v1, Lb/g/a/a/c;->j:I

    if-lez v0, :cond_22

    iget v1, v1, Lb/g/a/a/c;->i:I

    if-ne v1, v0, :cond_22

    const/16 v17, 0x1

    goto :goto_1a

    :cond_22
    const/16 v17, 0x0

    :goto_1a
    move-object v0, v12

    move-object v14, v0

    :goto_1b
    if-eqz v14, :cond_3f

    .line 76
    iget-object v1, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v1, p2

    if-nez v15, :cond_24

    if-ne v14, v13, :cond_23

    goto :goto_1c

    :cond_23
    const/16 v19, 0x4

    const/16 v22, 0x6

    goto/16 :goto_24

    .line 77
    :cond_24
    :goto_1c
    iget-object v1, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 78
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 79
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_25

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1d

    :cond_25
    move-object/from16 v3, v20

    :goto_1d
    if-eq v0, v14, :cond_26

    .line 80
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1e

    :cond_26
    if-ne v14, v12, :cond_28

    if-ne v0, v14, :cond_28

    .line 81
    iget-object v3, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v3, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_27

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1e

    :cond_27
    move-object/from16 v3, v20

    .line 82
    :cond_28
    :goto_1e
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    .line 83
    iget-object v4, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    if-eqz v15, :cond_29

    .line 84
    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    .line 85
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 86
    iget-object v8, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_20

    .line 87
    :cond_29
    iget-object v6, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_2a

    .line 88
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1f

    :cond_2a
    move-object/from16 v7, v20

    .line 89
    :goto_1f
    iget-object v8, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_20
    if-eqz v6, :cond_2b

    .line 90
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v6

    add-int/2addr v4, v6

    :cond_2b
    if-eqz v0, :cond_2c

    .line 91
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2c
    if-eqz v2, :cond_23

    if-eqz v3, :cond_23

    if-eqz v7, :cond_23

    if-eqz v8, :cond_23

    if-ne v14, v12, :cond_2d

    .line 92
    iget-object v0, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    move v6, v0

    goto :goto_21

    :cond_2d
    move v6, v1

    :goto_21
    if-ne v14, v13, :cond_2e

    .line 93
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    move/from16 v18, v0

    goto :goto_22

    :cond_2e
    move/from16 v18, v4

    :goto_22
    if-eqz v17, :cond_2f

    const/16 v21, 0x6

    goto :goto_23

    :cond_2f
    const/16 v21, 0x4

    :goto_23
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v5, v7

    const/16 v19, 0x4

    const/16 v22, 0x6

    move-object v6, v8

    move/from16 v7, v18

    move/from16 v8, v21

    .line 94
    invoke-virtual/range {v0 .. v8}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_24
    move-object v0, v14

    move-object v14, v15

    goto/16 :goto_1b

    :cond_30
    const/16 v19, 0x4

    const/16 v22, 0x6

    if-eqz v16, :cond_3f

    if-eqz v12, :cond_3f

    .line 95
    iget v0, v1, Lb/g/a/a/c;->j:I

    if-lez v0, :cond_31

    iget v1, v1, Lb/g/a/a/c;->i:I

    if-ne v1, v0, :cond_31

    const/16 v17, 0x1

    goto :goto_25

    :cond_31
    const/16 v17, 0x0

    :goto_25
    move-object v0, v12

    move-object v14, v0

    :goto_26
    if-eqz v14, :cond_3c

    .line 96
    iget-object v1, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-eq v14, v12, :cond_3b

    if-eq v14, v13, :cond_3b

    if-eqz v1, :cond_3b

    if-ne v1, v13, :cond_32

    move-object/from16 v15, v20

    goto :goto_27

    :cond_32
    move-object v15, v1

    .line 97
    :goto_27
    iget-object v1, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 98
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 99
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_33

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 100
    :cond_33
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 101
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    .line 102
    iget-object v5, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v5

    if-eqz v15, :cond_35

    .line 103
    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    .line 104
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 105
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_34

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_29

    :cond_34
    move-object/from16 v8, v20

    goto :goto_29

    .line 106
    :cond_35
    iget-object v6, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_36

    .line 107
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_28

    :cond_36
    move-object/from16 v7, v20

    .line 108
    :goto_28
    iget-object v8, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v4

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_29
    if-eqz v6, :cond_37

    .line 109
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v6

    add-int/2addr v5, v6

    :cond_37
    move/from16 v18, v5

    if-eqz v0, :cond_38

    .line 110
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    add-int/2addr v1, v0

    :cond_38
    move v4, v1

    if-eqz v17, :cond_39

    const/16 v21, 0x6

    goto :goto_2a

    :cond_39
    const/16 v21, 0x4

    :goto_2a
    if-eqz v2, :cond_3a

    if-eqz v3, :cond_3a

    if-eqz v7, :cond_3a

    if-eqz v8, :cond_3a

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    move-object v6, v8

    const/4 v8, 0x5

    move/from16 v7, v18

    move-object/from16 p0, v14

    const/4 v14, 0x5

    move/from16 v8, v21

    .line 111
    invoke-virtual/range {v0 .. v8}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2b

    :cond_3a
    move-object/from16 p0, v14

    const/4 v14, 0x5

    goto :goto_2b

    :cond_3b
    move-object/from16 p0, v14

    const/4 v14, 0x5

    move-object v15, v1

    :goto_2b
    move-object/from16 v0, p0

    move-object v14, v15

    goto/16 :goto_26

    :cond_3c
    const/4 v14, 0x5

    .line 112
    iget-object v0, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 113
    iget-object v1, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 114
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    .line 115
    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v15, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_3e

    if-eq v12, v13, :cond_3d

    .line 116
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    invoke-virtual {v9, v2, v1, v0, v14}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/g/a/b;

    goto :goto_2c

    :cond_3d
    if-eqz v15, :cond_3e

    .line 117
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 118
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v8

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v17

    .line 119
    invoke-virtual/range {v0 .. v8}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_3e
    :goto_2c
    if-eqz v15, :cond_3f

    if-eq v12, v13, :cond_3f

    .line 120
    iget-object v0, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v14}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/g/a/b;

    :cond_3f
    :goto_2d
    if-nez v24, :cond_40

    if-eqz v16, :cond_47

    :cond_40
    if-eqz v12, :cond_47

    .line 121
    iget-object v0, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 122
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 123
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_41

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_2e

    :cond_41
    move-object/from16 v3, v20

    .line 124
    :goto_2e
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_42

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_2f

    :cond_42
    move-object/from16 v4, v20

    :goto_2f
    if-eq v11, v13, :cond_44

    .line 125
    iget-object v4, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    .line 126
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_43

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v4

    :cond_43
    move-object/from16 v5, v20

    goto :goto_30

    :cond_44
    move-object v5, v4

    :goto_30
    if-ne v12, v13, :cond_45

    .line 127
    iget-object v0, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v0, p3

    .line 128
    aget-object v0, v0, v2

    move-object/from16 v34, v1

    move-object v1, v0

    move-object/from16 v0, v34

    :cond_45
    if-eqz v3, :cond_47

    if-eqz v5, :cond_47

    const/high16 v4, 0x3f000000    # 0.5f

    .line 129
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v6

    if-nez v13, :cond_46

    goto :goto_31

    :cond_46
    move-object v11, v13

    .line 130
    :goto_31
    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v7, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v7

    .line 131
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_47
    return-void
.end method
