.class public final Lc/c/a/n/z/g;
.super Ljava/lang/Object;
.source "SubscriptionFragment.kt"

# interfaces
.implements Lc/c/a/n/z/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->tb()Lc/c/a/n/z/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/z/g;->a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemData"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/z/g;->a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    invoke-static {v0, p1, p2}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->a(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;Landroid/view/View;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 7

    const-string v0, "itemData"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getProductSku()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lb/w/p;

    return-void
.end method
