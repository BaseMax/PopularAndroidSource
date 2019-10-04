.class public final Lc/c/a/n/c/c/p;
.super Ljava/lang/Object;
.source "PageViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V
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
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/t;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/t;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/c/p;->a:Lc/c/a/n/c/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/p;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/p;->a:Lc/c/a/n/c/c/t;

    invoke-static {v0}, Lc/c/a/n/c/c/t;->g(Lc/c/a/n/c/c/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/p;->a:Lc/c/a/n/c/c/t;

    invoke-static {v0}, Lc/c/a/n/c/c/t;->g(Lc/c/a/n/c/c/t;)Ljava/util/List;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lc/c/a/n/c/c/p;->a:Lc/c/a/n/c/c/t;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/c/c/t;->b(Lc/c/a/n/c/c/t;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
