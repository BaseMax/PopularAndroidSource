.class public final Lc/c/a/n/z/e;
.super Ljava/lang/Object;
.source "SubscriptionFragment.kt"

# interfaces
.implements Lc/c/a/d/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/f/r<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

.field public final synthetic b:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/z/e;->a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    iput-object p2, p0, Lc/c/a/n/z/e;->b:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-static {p0}, Lc/c/a/d/f/r$a;->b(Lc/c/a/d/f/r;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/z/e;->a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->c(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)Lc/c/a/n/z/i;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/z/e;->b:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    invoke-virtual {p1, v0}, Lc/c/a/n/z/i;->b(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/z/e;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lc/c/a/d/f/r$a;->a(Lc/c/a/d/f/r;)V

    return-void
.end method
