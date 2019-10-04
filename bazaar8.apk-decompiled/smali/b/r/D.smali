.class public Lb/r/D;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lb/c/a/c/a<",
            "TX;TY;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/r/r;

    invoke-direct {v0}, Lb/r/r;-><init>()V

    .line 2
    new-instance v1, Lb/r/C;

    invoke-direct {v1, v0, p1}, Lb/r/C;-><init>(Lb/r/r;Lb/c/a/c/a;)V

    invoke-virtual {v0, p0, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    return-object v0
.end method
