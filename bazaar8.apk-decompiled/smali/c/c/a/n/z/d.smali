.class public final Lc/c/a/n/z/d;
.super Ljava/lang/Object;
.source "SubscriptionFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->jb()Lc/c/a/n/z/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/z/d;->a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/z/d;->a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/c/a/n/z/d;->a:Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->a(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)Lc/c/a/d/d/c;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/ErrorModel;

    invoke-virtual {p0, p1}, Lc/c/a/n/z/d;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method
