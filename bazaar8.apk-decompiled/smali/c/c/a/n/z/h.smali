.class public final Lc/c/a/n/z/h;
.super Lc/c/a/n/c/d/n;
.source "SubscriptionAdapter.kt"


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

.field public final w:Lc/c/a/n/z/b;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/z/b;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/z/h;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/z/h;->w:Lc/c/a/n/z/b;

    return-void
.end method


# virtual methods
.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/z/h;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Lc/c/a/n/z/h;->w:Lc/c/a/n/z/b;

    const/16 v1, 0x1c

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
