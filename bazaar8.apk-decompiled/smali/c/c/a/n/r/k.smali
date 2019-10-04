.class public final Lc/c/a/n/r/k;
.super Ljava/lang/Object;
.source "MyBazaarFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->b(Landroid/os/Bundle;)V
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
.field public final synthetic a:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/k;->a:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/n/r/k;->a:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getNeedToShowBadge()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->a(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    invoke-virtual {p0, p1}, Lc/c/a/n/r/k;->a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V

    return-void
.end method
