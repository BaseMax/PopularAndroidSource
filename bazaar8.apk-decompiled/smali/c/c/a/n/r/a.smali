.class public final Lc/c/a/n/r/a;
.super Ljava/lang/Object;
.source "AppChildMyBazaarFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/r/c;->b(Landroid/os/Bundle;)V
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
        "Lcom/farsitel/bazaar/data/entity/UpgradableCount;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/r/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/r/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/a;->a:Lc/c/a/n/r/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/r/a;->a:Lc/c/a/n/r/c;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getUpgradeableAppCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getMaliciousAppCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/c/a/n/r/f;->c(II)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/r/a;->a:Lc/c/a/n/r/c;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getUpgradeableAppCount()I

    move-result v1

    invoke-static {v0, v1}, Lc/c/a/n/r/c;->b(Lc/c/a/n/r/c;I)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/r/a;->a:Lc/c/a/n/r/c;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getMaliciousAppCount()I

    move-result p1

    invoke-static {v0, p1}, Lc/c/a/n/r/c;->a(Lc/c/a/n/r/c;I)V

    .line 5
    iget-object p1, p0, Lc/c/a/n/r/a;->a:Lc/c/a/n/r/c;

    invoke-static {p1}, Lc/c/a/n/r/c;->c(Lc/c/a/n/r/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->d()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    invoke-virtual {p0, p1}, Lc/c/a/n/r/a;->a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V

    return-void
.end method
