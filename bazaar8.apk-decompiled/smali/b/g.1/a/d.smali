.class public Lb/g/a/d;
.super Lb/g/a/b;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Lb/g/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/g/a/b;-><init>(Lb/g/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lb/g/a/b;->a(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 2
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->k:I

    return-void
.end method
