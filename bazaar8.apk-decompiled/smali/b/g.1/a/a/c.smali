.class public Lb/g/a/a/c;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field public a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/g/a/a/c;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/g/a/a/c;->m:Z

    .line 4
    iput-object p1, p0, Lb/g/a/a/c;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 5
    iput p2, p0, Lb/g/a/a/c;->l:I

    .line 6
    iput-boolean p3, p0, Lb/g/a/a/c;->m:Z

    return-void
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:[I

    aget v0, p0, p1

    if-eqz v0, :cond_0

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lb/g/a/a/c;->q:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/g/a/a/c;->b()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/g/a/a/c;->q:Z

    return-void
.end method

.method public final b()V
    .locals 12

    .line 1
    iget v0, p0, Lb/g/a/a/c;->l:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v2, p0, Lb/g/a/a/c;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x1

    if-nez v2, :cond_d

    .line 3
    iget v6, p0, Lb/g/a/a/c;->i:I

    add-int/2addr v6, v5

    iput v6, p0, Lb/g/a/a/c;->i:I

    .line 4
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, p0, Lb/g/a/a/c;->l:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 5
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->la:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v8, v6, v7

    .line 6
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    .line 7
    iget-object v6, p0, Lb/g/a/a/c;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v6, :cond_0

    .line 8
    iput-object v4, p0, Lb/g/a/a/c;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 9
    :cond_0
    iget-object v6, p0, Lb/g/a/a/c;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_1

    .line 10
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ma:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, p0, Lb/g/a/a/c;->l:I

    aput-object v4, v6, v7

    .line 11
    :cond_1
    iput-object v4, p0, Lb/g/a/a/c;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 12
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v7, p0, Lb/g/a/a/c;->l:I

    aget-object v6, v6, v7

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_9

    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:[I

    aget v9, v6, v7

    if-eqz v9, :cond_2

    aget v9, v6, v7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    aget v6, v6, v7

    if-ne v6, v1, :cond_9

    .line 13
    :cond_2
    iget v6, p0, Lb/g/a/a/c;->j:I

    add-int/2addr v6, v5

    iput v6, p0, Lb/g/a/a/c;->j:I

    .line 14
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ka:[F

    iget v7, p0, Lb/g/a/a/c;->l:I

    aget v9, v6, v7

    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-lez v11, :cond_3

    .line 15
    iget v11, p0, Lb/g/a/a/c;->k:F

    aget v6, v6, v7

    add-float/2addr v11, v6

    iput v11, p0, Lb/g/a/a/c;->k:F

    .line 16
    :cond_3
    iget v6, p0, Lb/g/a/a/c;->l:I

    invoke-static {v4, v6}, Lb/g/a/a/c;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v6

    if-eqz v6, :cond_6

    cmpg-float v6, v9, v10

    if-gez v6, :cond_4

    .line 17
    iput-boolean v5, p0, Lb/g/a/a/c;->n:Z

    goto :goto_1

    .line 18
    :cond_4
    iput-boolean v5, p0, Lb/g/a/a/c;->o:Z

    .line 19
    :goto_1
    iget-object v6, p0, Lb/g/a/a/c;->h:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lb/g/a/a/c;->h:Ljava/util/ArrayList;

    .line 21
    :cond_5
    iget-object v6, p0, Lb/g/a/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_6
    iget-object v6, p0, Lb/g/a/a/c;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v6, :cond_7

    .line 23
    iput-object v4, p0, Lb/g/a/a/c;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 24
    :cond_7
    iget-object v6, p0, Lb/g/a/a/c;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_8

    .line 25
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->la:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, p0, Lb/g/a/a/c;->l:I

    aput-object v4, v6, v7

    .line 26
    :cond_8
    iput-object v4, p0, Lb/g/a/a/c;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 27
    :cond_9
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_b

    .line 28
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 29
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v7, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_b

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v7, v4, :cond_a

    goto :goto_2

    :cond_a
    move-object v8, v6

    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    move-object v4, v8

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 30
    :cond_d
    iput-object v4, p0, Lb/g/a/a/c;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 31
    iget v0, p0, Lb/g/a/a/c;->l:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lb/g/a/a/c;->m:Z

    if-eqz v0, :cond_e

    .line 32
    iget-object v0, p0, Lb/g/a/a/c;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Lb/g/a/a/c;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_3

    .line 33
    :cond_e
    iget-object v0, p0, Lb/g/a/a/c;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Lb/g/a/a/c;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 34
    :goto_3
    iget-boolean v0, p0, Lb/g/a/a/c;->o:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lb/g/a/a/c;->n:Z

    if-eqz v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    iput-boolean v3, p0, Lb/g/a/a/c;->p:Z

    return-void
.end method
