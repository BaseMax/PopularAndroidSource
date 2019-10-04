.class public final Lc/c/a/n/z/a;
.super Lc/c/a/n/c/d/a;
.source "SubscriptionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lc/c/a/n/z/b;


# direct methods
.method public constructor <init>(Lc/c/a/n/z/b;)V
    .locals 1

    const-string v0, "subscriptionCommunicator"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/z/a;->f:Lc/c/a/n/z/b;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lc/c/a/n/z/h;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p1, v1}, Lc/c/a/f/yb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/yb;

    move-result-object p1

    const-string v0, "ItemSubscriptionAppBindi\u2026      false\n            )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/z/a;->f:Lc/c/a/n/z/b;

    .line 5
    invoke-direct {p2, p1, v0}, Lc/c/a/n/z/h;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/z/b;)V

    return-object p2
.end method
