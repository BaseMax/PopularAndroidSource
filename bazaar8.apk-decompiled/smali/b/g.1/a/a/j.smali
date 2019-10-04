.class public Lb/g/a/a/j;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field public static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Z

    sput-object v0, Lb/g/a/a/j;->a:[Z

    return-void
.end method

.method public static a(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 16

    move-object/from16 v0, p1

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H()V

    .line 30
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    .line 31
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v2

    .line 32
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v3

    .line 33
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 34
    :goto_0
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_1

    .line 35
    invoke-static {v0, v7}, Lb/g/a/a/j;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 36
    :goto_1
    iget v10, v1, Lb/g/a/a/l;->i:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Lb/g/a/a/l;->i:I

    if-eq v10, v12, :cond_13

    .line 37
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_b

    if-eqz v9, :cond_2

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    if-ne v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_13

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    .line 40
    invoke-virtual {v1, v8}, Lb/g/a/a/l;->b(I)V

    .line 41
    invoke-virtual {v3, v8}, Lb/g/a/a/l;->b(I)V

    .line 42
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    if-eqz v6, :cond_3

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_3

    .line 44
    :cond_3
    invoke-virtual {v3, v1, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto/16 :goto_3

    .line 45
    :cond_4
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_6

    if-eqz v6, :cond_5

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_3

    .line 47
    :cond_5
    invoke-virtual {v3, v1, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto/16 :goto_3

    .line 48
    :cond_6
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_8

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_8

    if-eqz v6, :cond_7

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_3

    :cond_7
    neg-int v7, v7

    .line 50
    invoke-virtual {v1, v3, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto/16 :goto_3

    .line 51
    :cond_8
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    if-eqz v6, :cond_9

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v9

    invoke-virtual {v9, v1}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v9

    invoke-virtual {v9, v3}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    .line 54
    :cond_9
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_a

    .line 55
    invoke-virtual {v1, v11}, Lb/g/a/a/l;->b(I)V

    .line 56
    invoke-virtual {v3, v11}, Lb/g/a/a/l;->b(I)V

    .line 57
    invoke-virtual {v1, v3, v13}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 58
    invoke-virtual {v3, v1, v13}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    goto/16 :goto_3

    .line 59
    :cond_a
    invoke-virtual {v1, v15}, Lb/g/a/a/l;->b(I)V

    .line 60
    invoke-virtual {v3, v15}, Lb/g/a/a/l;->b(I)V

    neg-int v9, v7

    int-to-float v9, v9

    .line 61
    invoke-virtual {v1, v3, v9}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    int-to-float v9, v7

    .line 62
    invoke-virtual {v3, v1, v9}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 63
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    goto/16 :goto_3

    .line 64
    :cond_b
    :goto_2
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    .line 65
    invoke-virtual {v1, v8}, Lb/g/a/a/l;->b(I)V

    .line 66
    invoke-virtual {v3, v8}, Lb/g/a/a/l;->b(I)V

    if-eqz v6, :cond_c

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_3

    .line 68
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto/16 :goto_3

    .line 69
    :cond_d
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_f

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_f

    .line 70
    invoke-virtual {v1, v8}, Lb/g/a/a/l;->b(I)V

    .line 71
    invoke-virtual {v3, v8}, Lb/g/a/a/l;->b(I)V

    if-eqz v6, :cond_e

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_3

    .line 73
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto :goto_3

    .line 74
    :cond_f
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_11

    .line 75
    invoke-virtual {v1, v8}, Lb/g/a/a/l;->b(I)V

    .line 76
    invoke-virtual {v3, v8}, Lb/g/a/a/l;->b(I)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    if-eqz v6, :cond_10

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto :goto_3

    .line 79
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto :goto_3

    .line 80
    :cond_11
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    .line 81
    invoke-virtual {v1, v15}, Lb/g/a/a/l;->b(I)V

    .line 82
    invoke-virtual {v3, v15}, Lb/g/a/a/l;->b(I)V

    if-eqz v6, :cond_12

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v7, v1}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v7, v3}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Lb/g/a/a/l;->b(Lb/g/a/a/l;ILb/g/a/a/m;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lb/g/a/a/l;->b(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto :goto_3

    .line 87
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 89
    :cond_13
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_14

    .line 90
    invoke-static {v0, v8}, Lb/g/a/a/j;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_4

    :cond_14
    const/4 v1, 0x0

    .line 91
    :goto_4
    iget v3, v2, Lb/g/a/a/l;->i:I

    if-eq v3, v12, :cond_26

    iget v3, v4, Lb/g/a/a/l;->i:I

    if-eq v3, v12, :cond_26

    .line 92
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v8

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v7, :cond_1e

    if-eqz v1, :cond_15

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v3

    if-ne v3, v5, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v1, :cond_26

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    .line 95
    invoke-virtual {v2, v8}, Lb/g/a/a/l;->b(I)V

    .line 96
    invoke-virtual {v4, v8}, Lb/g/a/a/l;->b(I)V

    .line 97
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    if-eqz v6, :cond_16

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_a

    .line 99
    :cond_16
    invoke-virtual {v4, v2, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto/16 :goto_a

    .line 100
    :cond_17
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_19

    if-eqz v6, :cond_18

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_a

    .line 102
    :cond_18
    invoke-virtual {v4, v2, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto/16 :goto_a

    .line 103
    :cond_19
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    if-eqz v6, :cond_1a

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto/16 :goto_a

    :cond_1a
    neg-int v0, v1

    .line 105
    invoke-virtual {v2, v4, v0}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    goto/16 :goto_a

    .line 106
    :cond_1b
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    if-eqz v6, :cond_1c

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v3

    invoke-virtual {v3, v4}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    .line 109
    :cond_1c
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_1d

    .line 110
    invoke-virtual {v2, v11}, Lb/g/a/a/l;->b(I)V

    .line 111
    invoke-virtual {v4, v11}, Lb/g/a/a/l;->b(I)V

    .line 112
    invoke-virtual {v2, v4, v13}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 113
    invoke-virtual {v4, v2, v13}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    goto/16 :goto_a

    .line 114
    :cond_1d
    invoke-virtual {v2, v15}, Lb/g/a/a/l;->b(I)V

    .line 115
    invoke-virtual {v4, v15}, Lb/g/a/a/l;->b(I)V

    neg-int v3, v1

    int-to-float v3, v3

    .line 116
    invoke-virtual {v2, v4, v3}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    int-to-float v3, v1

    .line 117
    invoke-virtual {v4, v2, v3}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 118
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(I)V

    .line 119
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    if-lez v1, :cond_26

    .line 120
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    invoke-virtual {v1, v8, v2, v0}, Lb/g/a/a/l;->a(ILb/g/a/a/l;I)V

    goto/16 :goto_a

    .line 121
    :cond_1e
    :goto_5
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    .line 122
    invoke-virtual {v2, v8}, Lb/g/a/a/l;->b(I)V

    .line 123
    invoke-virtual {v4, v8}, Lb/g/a/a/l;->b(I)V

    if-eqz v6, :cond_1f

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto :goto_6

    .line 125
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    .line 126
    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    .line 127
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    invoke-virtual {v1, v8}, Lb/g/a/a/l;->b(I)V

    .line 128
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 129
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    neg-int v0, v0

    .line 130
    invoke-virtual {v2, v8, v1, v0}, Lb/g/a/a/l;->a(ILb/g/a/a/l;I)V

    goto/16 :goto_a

    .line 131
    :cond_20
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_22

    .line 132
    invoke-virtual {v2, v8}, Lb/g/a/a/l;->b(I)V

    .line 133
    invoke-virtual {v4, v8}, Lb/g/a/a/l;->b(I)V

    if-eqz v6, :cond_21

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto :goto_7

    .line 135
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    .line 136
    :goto_7
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    if-lez v1, :cond_26

    .line 137
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    invoke-virtual {v1, v8, v2, v0}, Lb/g/a/a/l;->a(ILb/g/a/a/l;I)V

    goto/16 :goto_a

    .line 138
    :cond_22
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_24

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_24

    .line 139
    invoke-virtual {v2, v8}, Lb/g/a/a/l;->b(I)V

    .line 140
    invoke-virtual {v4, v8}, Lb/g/a/a/l;->b(I)V

    if-eqz v6, :cond_23

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;ILb/g/a/a/m;)V

    goto :goto_8

    .line 142
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;I)V

    .line 143
    :goto_8
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    if-lez v1, :cond_26

    .line 144
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    invoke-virtual {v1, v8, v2, v0}, Lb/g/a/a/l;->a(ILb/g/a/a/l;I)V

    goto :goto_a

    .line 145
    :cond_24
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    .line 146
    invoke-virtual {v2, v15}, Lb/g/a/a/l;->b(I)V

    .line 147
    invoke-virtual {v4, v15}, Lb/g/a/a/l;->b(I)V

    if-eqz v6, :cond_25

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Lb/g/a/a/l;->b(Lb/g/a/a/l;ILb/g/a/a/m;)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Lb/g/a/a/l;->b(Lb/g/a/a/l;ILb/g/a/a/m;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Lb/g/a/a/m;

    move-result-object v1

    invoke-virtual {v1, v2}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Lb/g/a/a/m;

    move-result-object v1

    invoke-virtual {v1, v4}, Lb/g/a/a/n;->a(Lb/g/a/a/n;)V

    goto :goto_9

    .line 152
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Lb/g/a/a/l;->b(Lb/g/a/a/l;F)V

    .line 154
    :goto_9
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    if-lez v1, :cond_26

    .line 155
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    invoke-virtual {v1, v8, v2, v0}, Lb/g/a/a/l;->a(ILb/g/a/a/l;I)V

    :cond_26
    :goto_a
    return-void
.end method

.method public static a(Lb/g/a/a/f;Lb/g/a/e;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    sub-int/2addr v1, v2

    .line 4
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Lb/g/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 5
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Lb/g/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 6
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 7
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 8
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:I

    .line 9
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(II)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result p0

    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    sub-int/2addr p0, v1

    .line 13
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Lb/g/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 14
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Lb/g/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 15
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v1, v0}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 16
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v1, p0}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 17
    iget v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 18
    :cond_1
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Lb/g/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    .line 19
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j:Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lb/g/a/e;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 20
    :cond_2
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:I

    .line 21
    invoke-virtual {p2, v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d(II)V

    :cond_3
    return-void
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 5

    .line 22
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v0, p1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 23
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:F

    const/4 v2, 0x0

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 24
    :goto_0
    aget-object p0, v0, v4

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p0, p1, :cond_2

    :cond_2
    return v3

    :cond_3
    if-nez p1, :cond_6

    .line 25
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:I

    if-eqz p1, :cond_4

    return v3

    .line 26
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    if-nez p1, :cond_5

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    if-eqz p0, :cond_8

    :cond_5
    return v3

    .line 27
    :cond_6
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:I

    if-eqz p1, :cond_7

    return v3

    .line 28
    :cond_7
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:I

    if-nez p1, :cond_9

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v4

    :cond_9
    :goto_1
    return v3
.end method

.method public static a(Lb/g/a/a/f;Lb/g/a/e;IILb/g/a/a/c;)Z
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 156
    iget-object v2, v1, Lb/g/a/a/c;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 157
    iget-object v3, v1, Lb/g/a/a/c;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 158
    iget-object v4, v1, Lb/g/a/a/c;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 159
    iget-object v5, v1, Lb/g/a/a/c;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 160
    iget-object v6, v1, Lb/g/a/a/c;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 161
    iget v7, v1, Lb/g/a/a/c;->k:F

    .line 162
    iget-object v8, v1, Lb/g/a/a/c;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 163
    iget-object v1, v1, Lb/g/a/a/c;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v8, p0

    .line 164
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-nez p2, :cond_3

    .line 165
    iget v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ga:I

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 166
    :goto_0
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ga:I

    if-ne v11, v9, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 167
    :goto_1
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ga:I

    if-ne v6, v1, :cond_2

    :goto_2
    const/4 v1, 0x1

    goto :goto_5

    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    .line 168
    :cond_3
    iget v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ha:I

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 169
    :goto_3
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ha:I

    if-ne v11, v9, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 170
    :goto_4
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ha:I

    if-ne v6, v1, :cond_2

    goto :goto_2

    :goto_5
    move-object v13, v2

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_6
    if-nez v12, :cond_13

    .line 171
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v9

    const/16 v8, 0x8

    if-eq v9, v8, :cond_8

    add-int/lit8 v14, v14, 0x1

    if-nez p2, :cond_6

    .line 172
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v9

    goto :goto_7

    .line 173
    :cond_6
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v9

    :goto_7
    int-to-float v9, v9

    add-float/2addr v15, v9

    if-eq v13, v4, :cond_7

    .line 174
    iget-object v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v15, v9

    .line 175
    :cond_7
    iget-object v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    .line 176
    iget-object v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v9, v9, v17

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    .line 177
    :cond_8
    iget-object v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    .line 178
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v9

    if-eq v9, v8, :cond_e

    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, p2

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_e

    add-int/lit8 v6, v6, 0x1

    if-nez p2, :cond_b

    .line 179
    iget v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:I

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    return v8

    :cond_9
    const/4 v8, 0x0

    .line 180
    iget v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    if-nez v9, :cond_a

    iget v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    if-eqz v9, :cond_e

    :cond_a
    return v8

    :cond_b
    const/4 v8, 0x0

    .line 181
    iget v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:I

    if-eqz v9, :cond_c

    return v8

    .line 182
    :cond_c
    iget v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:I

    if-nez v9, :cond_d

    iget v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    if-eqz v9, :cond_e

    :cond_d
    return v8

    .line 183
    :cond_e
    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_10

    .line 184
    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 185
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v18, v6

    aget-object v6, v9, p3

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_11

    aget-object v6, v9, p3

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v6, v13, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v17, v8

    goto :goto_9

    :cond_10
    move/from16 v18, v6

    :cond_11
    :goto_8
    const/16 v17, 0x0

    :goto_9
    if-eqz v17, :cond_12

    move-object/from16 v13, v17

    goto :goto_a

    :cond_12
    const/4 v12, 0x1

    :goto_a
    move/from16 v6, v18

    const/4 v9, 0x1

    goto/16 :goto_6

    .line 186
    :cond_13
    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v8

    .line 187
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v3

    .line 188
    iget-object v12, v8, Lb/g/a/a/l;->e:Lb/g/a/a/l;

    if-eqz v12, :cond_37

    move-object/from16 v17, v2

    iget-object v2, v3, Lb/g/a/a/l;->e:Lb/g/a/a/l;

    if-nez v2, :cond_14

    goto/16 :goto_1b

    .line 189
    :cond_14
    iget v12, v12, Lb/g/a/a/n;->b:I

    const/4 v0, 0x1

    if-eq v12, v0, :cond_15

    iget v2, v2, Lb/g/a/a/n;->b:I

    if-eq v2, v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    const/4 v0, 0x0

    if-lez v6, :cond_16

    if-eq v6, v14, :cond_16

    return v0

    :cond_16
    if-nez v1, :cond_18

    if-nez v10, :cond_18

    if-eqz v11, :cond_17

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    goto :goto_d

    :cond_18
    :goto_b
    if-eqz v4, :cond_19

    .line 190
    iget-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    int-to-float v0, v0

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    :goto_c
    if-eqz v5, :cond_1a

    .line 191
    iget-object v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 192
    :cond_1a
    :goto_d
    iget-object v2, v8, Lb/g/a/a/l;->e:Lb/g/a/a/l;

    iget v2, v2, Lb/g/a/a/l;->h:F

    .line 193
    iget-object v3, v3, Lb/g/a/a/l;->e:Lb/g/a/a/l;

    iget v3, v3, Lb/g/a/a/l;->h:F

    cmpg-float v12, v2, v3

    if-gez v12, :cond_1b

    sub-float/2addr v3, v2

    goto :goto_e

    :cond_1b
    sub-float v3, v2, v3

    :goto_e
    sub-float/2addr v3, v15

    const-wide/16 v18, 0x1

    if-lez v6, :cond_24

    if-ne v6, v14, :cond_24

    .line 194
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v11, :cond_1c

    const/4 v1, 0x0

    return v1

    :cond_1c
    add-float/2addr v3, v15

    sub-float v3, v3, v16

    if-eqz v10, :cond_1d

    sub-float v16, v16, v0

    sub-float v3, v3, v16

    :cond_1d
    if-eqz v10, :cond_1e

    .line 195
    iget-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 196
    iget-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1e

    .line 197
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    :cond_1e
    :goto_f
    if-eqz v4, :cond_23

    .line 198
    sget-object v0, Lb/g/a/e;->b:Lb/g/a/f;

    if-eqz v0, :cond_1f

    .line 199
    iget-wide v10, v0, Lb/g/a/f;->z:J

    sub-long v10, v10, v18

    iput-wide v10, v0, Lb/g/a/f;->z:J

    .line 200
    iget-wide v10, v0, Lb/g/a/f;->r:J

    add-long v10, v10, v18

    iput-wide v10, v0, Lb/g/a/f;->r:J

    .line 201
    iget-wide v10, v0, Lb/g/a/f;->x:J

    add-long v10, v10, v18

    iput-wide v10, v0, Lb/g/a/f;->x:J

    .line 202
    :cond_1f
    iget-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    if-nez v0, :cond_21

    if-ne v4, v5, :cond_20

    goto :goto_10

    :cond_20
    move-object/from16 v12, p1

    const/4 v10, 0x0

    goto :goto_11

    :cond_21
    :goto_10
    int-to-float v1, v6

    div-float v1, v3, v1

    const/4 v10, 0x0

    cmpl-float v11, v7, v10

    if-lez v11, :cond_22

    .line 203
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ka:[F

    aget v1, v1, p2

    mul-float v1, v1, v3

    div-float/2addr v1, v7

    .line 204
    :cond_22
    iget-object v11, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v2, v11

    .line 205
    iget-object v11, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v11

    iget-object v12, v8, Lb/g/a/a/l;->g:Lb/g/a/a/l;

    invoke-virtual {v11, v12, v2}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    .line 206
    iget-object v11, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v11

    iget-object v12, v8, Lb/g/a/a/l;->g:Lb/g/a/a/l;

    add-float/2addr v2, v1

    invoke-virtual {v11, v12, v2}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    .line 207
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    move-object/from16 v12, p1

    invoke-virtual {v1, v12}, Lb/g/a/a/l;->a(Lb/g/a/e;)V

    .line 208
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    invoke-virtual {v1, v12}, Lb/g/a/a/l;->a(Lb/g/a/e;)V

    .line 209
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    :goto_11
    move-object v4, v0

    goto :goto_f

    :cond_23
    const/4 v0, 0x1

    return v0

    :cond_24
    move-object/from16 v12, p1

    cmpg-float v6, v3, v15

    if-gez v6, :cond_25

    const/4 v6, 0x0

    return v6

    :cond_25
    if-eqz v1, :cond_2a

    sub-float/2addr v3, v0

    .line 210
    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()F

    move-result v0

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    :goto_12
    if-eqz v4, :cond_2b

    .line 211
    sget-object v0, Lb/g/a/e;->b:Lb/g/a/f;

    if-eqz v0, :cond_26

    .line 212
    iget-wide v6, v0, Lb/g/a/f;->z:J

    sub-long v6, v6, v18

    iput-wide v6, v0, Lb/g/a/f;->z:J

    .line 213
    iget-wide v6, v0, Lb/g/a/f;->r:J

    add-long v6, v6, v18

    iput-wide v6, v0, Lb/g/a/f;->r:J

    .line 214
    iget-wide v6, v0, Lb/g/a/f;->x:J

    add-long v6, v6, v18

    iput-wide v6, v0, Lb/g/a/f;->x:J

    .line 215
    :cond_26
    iget-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    if-nez v0, :cond_27

    if-ne v4, v5, :cond_29

    :cond_27
    if-nez p2, :cond_28

    .line 216
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v1

    goto :goto_13

    .line 217
    :cond_28
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    :goto_13
    int-to-float v1, v1

    .line 218
    iget-object v3, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 219
    iget-object v3, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v3

    iget-object v6, v8, Lb/g/a/a/l;->g:Lb/g/a/a/l;

    invoke-virtual {v3, v6, v2}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    .line 220
    iget-object v3, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v3

    iget-object v6, v8, Lb/g/a/a/l;->g:Lb/g/a/a/l;

    add-float/2addr v2, v1

    invoke-virtual {v3, v6, v2}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    .line 221
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    invoke-virtual {v1, v12}, Lb/g/a/a/l;->a(Lb/g/a/e;)V

    .line 222
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v1

    invoke-virtual {v1, v12}, Lb/g/a/a/l;->a(Lb/g/a/e;)V

    .line 223
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    :cond_29
    move-object v4, v0

    goto :goto_12

    :cond_2a
    if-nez v10, :cond_2c

    if-eqz v11, :cond_2b

    goto :goto_14

    :cond_2b
    const/4 v0, 0x1

    goto/16 :goto_1a

    :cond_2c
    :goto_14
    if-eqz v10, :cond_2d

    :goto_15
    sub-float/2addr v3, v0

    goto :goto_16

    :cond_2d
    if-eqz v11, :cond_2e

    goto :goto_15

    :cond_2e
    :goto_16
    add-int/lit8 v0, v14, 0x1

    int-to-float v0, v0

    div-float v0, v3, v0

    if-eqz v11, :cond_30

    const/4 v1, 0x1

    if-le v14, v1, :cond_2f

    add-int/lit8 v0, v14, -0x1

    int-to-float v0, v0

    goto :goto_17

    :cond_2f
    const/high16 v0, 0x40000000    # 2.0f

    :goto_17
    div-float v0, v3, v0

    :cond_30
    add-float v1, v2, v0

    if-eqz v11, :cond_31

    const/4 v3, 0x1

    if-le v14, v3, :cond_31

    .line 224
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    :cond_31
    if-eqz v10, :cond_32

    if-eqz v4, :cond_32

    .line 225
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    :cond_32
    :goto_18
    if-eqz v4, :cond_2b

    .line 226
    sget-object v2, Lb/g/a/e;->b:Lb/g/a/f;

    if-eqz v2, :cond_33

    .line 227
    iget-wide v6, v2, Lb/g/a/f;->z:J

    sub-long v6, v6, v18

    iput-wide v6, v2, Lb/g/a/f;->z:J

    .line 228
    iget-wide v6, v2, Lb/g/a/f;->r:J

    add-long v6, v6, v18

    iput-wide v6, v2, Lb/g/a/f;->r:J

    .line 229
    iget-wide v6, v2, Lb/g/a/f;->x:J

    add-long v6, v6, v18

    iput-wide v6, v2, Lb/g/a/f;->x:J

    .line 230
    :cond_33
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, p2

    if-nez v2, :cond_34

    if-ne v4, v5, :cond_36

    :cond_34
    if-nez p2, :cond_35

    .line 231
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u()I

    move-result v3

    goto :goto_19

    .line 232
    :cond_35
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v3

    :goto_19
    int-to-float v3, v3

    .line 233
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v6

    iget-object v7, v8, Lb/g/a/a/l;->g:Lb/g/a/a/l;

    invoke-virtual {v6, v7, v1}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    .line 234
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v6

    iget-object v7, v8, Lb/g/a/a/l;->g:Lb/g/a/a/l;

    add-float v10, v1, v3

    invoke-virtual {v6, v7, v10}, Lb/g/a/a/l;->a(Lb/g/a/a/l;F)V

    .line 235
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v6

    invoke-virtual {v6, v12}, Lb/g/a/a/l;->a(Lb/g/a/e;)V

    .line 236
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Lb/g/a/a/l;

    move-result-object v4

    invoke-virtual {v4, v12}, Lb/g/a/a/l;->a(Lb/g/a/e;)V

    add-float/2addr v3, v0

    add-float/2addr v1, v3

    :cond_36
    move-object v4, v2

    goto :goto_18

    :goto_1a
    return v0

    :cond_37
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method
