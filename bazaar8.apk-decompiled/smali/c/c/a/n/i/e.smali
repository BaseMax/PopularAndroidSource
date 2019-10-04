.class public final Lc/c/a/n/i/e;
.super Ljava/lang/Object;
.source "BazaarForceUpdateDialogFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/i/f;->ab()V
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
        "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/i/f;


# direct methods
.method public constructor <init>(Lc/c/a/n/i/f;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/i/e;->a:Lc/c/a/n/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lc/c/a/n/i/e;->a:Lc/c/a/n/i/f;

    invoke-static {p1}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;)Lc/c/a/n/y/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/y/a;->f()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lc/c/a/n/i/e;->a:Lc/c/a/n/i/f;

    invoke-static {v0}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;)Lc/c/a/n/y/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/n/y/a;->b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/i/e;->a:Lc/c/a/n/i/f;

    .line 5
    invoke-static {v0}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;)Lc/c/a/n/y/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/y/a;->i()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    .line 6
    invoke-static {v0, p1, v1}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {p0, p1}, Lc/c/a/n/i/e;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    return-void
.end method
