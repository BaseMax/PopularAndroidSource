.class public Lb/g/a/a/i;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "Helper.java"


# instance fields
.field public pa:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public qa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Lb/g/a/a/i;->pa:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/g/a/a/i;->qa:I

    return-void
.end method


# virtual methods
.method public I()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lb/g/a/a/i;->qa:I

    return-void
.end method

.method public b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 3

    .line 1
    iget v0, p0, Lb/g/a/a/i;->qa:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/g/a/a/i;->pa:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Lb/g/a/a/i;->pa:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/g/a/a/i;->pa:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v1, p0, Lb/g/a/a/i;->qa:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lb/g/a/a/i;->qa:I

    return-void
.end method
