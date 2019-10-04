.class public final Lc/c/a/n/q/h;
.super Lc/c/a/n/c/d/n;
.source "MaliciousAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lc/c/a/n/q/g;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/q/g;)V
    .locals 1

    const-string v0, "dataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maliciousCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/q/h;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/q/h;->w:Lc/c/a/n/q/g;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/d/n;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/q/h;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppHeaderItem;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/n/q/h;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v0, 0x1c

    iget-object v1, p0, Lc/c/a/n/q/h;->w:Lc/c/a/n/q/g;

    invoke-virtual {p1, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
