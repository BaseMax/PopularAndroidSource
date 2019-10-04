.class public final Lc/c/a/d/b/h;
.super Ljava/lang/Object;
.source "LiveDataExt.kt"


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "L:Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+TT;>;>;>(",
            "Landroidx/fragment/app/Fragment;",
            "T",
            "L;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+TT;>;",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$observe"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object p0

    new-instance v0, Lc/c/a/d/b/g;

    invoke-direct {v0, p2}, Lc/c/a/d/b/g;-><init>(Lh/f/a/b;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void
.end method
