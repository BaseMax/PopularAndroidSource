.class public Lb/g/a/c;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field public a:Lb/g/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/a/g<",
            "Lb/g/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/g/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/a/g<",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field public c:[Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/g/a/h;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lb/g/a/h;-><init>(I)V

    iput-object v0, p0, Lb/g/a/c;->a:Lb/g/a/g;

    .line 3
    new-instance v0, Lb/g/a/h;

    invoke-direct {v0, v1}, Lb/g/a/h;-><init>(I)V

    iput-object v0, p0, Lb/g/a/c;->b:Lb/g/a/g;

    const/16 v0, 0x20

    .line 4
    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Lb/g/a/c;->c:[Landroidx/constraintlayout/solver/SolverVariable;

    return-void
.end method
