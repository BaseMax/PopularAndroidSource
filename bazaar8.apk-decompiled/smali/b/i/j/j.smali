.class public final Lb/i/j/j;
.super Ljava/lang/Object;
.source "SparseArray.kt"


# direct methods
.method public static final a(Landroid/util/SparseArray;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lb/i/j/i;

    invoke-direct {v0, p0}, Lb/i/j/i;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method
