.class public final Lc/c/a/n/A/k;
.super Lc/c/a/d/f/p;
.source "UpgradableBadgeViewModel.kt"


# instance fields
.field public d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

.field public final e:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableCount;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lc/c/a/e/d/b/ba;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/ba;)V
    .locals 2

    const-string v0, "repository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/A/k;->f:Lc/c/a/e/d/b/ba;

    .line 2
    new-instance p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;-><init>(IIII)V

    iput-object p1, p0, Lc/c/a/n/A/k;->d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    .line 3
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    .line 4
    iget-object v0, p0, Lc/c/a/n/A/k;->f:Lc/c/a/e/d/b/ba;

    invoke-virtual {v0}, Lc/c/a/e/d/b/ba;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/n/A/i;

    invoke-direct {v1, p0}, Lc/c/a/n/A/i;-><init>(Lc/c/a/n/A/k;)V

    invoke-virtual {p1, v0, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/A/k;->f:Lc/c/a/e/d/b/ba;

    invoke-virtual {v0}, Lc/c/a/e/d/b/ba;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/n/A/j;

    invoke-direct {v1, p0}, Lc/c/a/n/A/j;-><init>(Lc/c/a/n/A/k;)V

    invoke-virtual {p1, v0, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    .line 6
    iput-object p1, p0, Lc/c/a/n/A/k;->e:Lb/r/r;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/A/k;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/A/k;->a(II)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/A/k;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/A/k;->b(II)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 7

    .line 2
    iget-object v0, p0, Lc/c/a/n/A/k;->d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move v2, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->copy$default(Lcom/farsitel/bazaar/data/entity/UpgradableCount;IIIIILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/A/k;->d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    .line 3
    iget-object p1, p0, Lc/c/a/n/A/k;->d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    invoke-virtual {p0, p1}, Lc/c/a/n/A/k;->a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/c/a/n/A/k;->e:Lb/r/r;

    invoke-virtual {v0, p1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(II)V
    .locals 7

    .line 2
    iget-object v0, p0, Lc/c/a/n/A/k;->d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->copy$default(Lcom/farsitel/bazaar/data/entity/UpgradableCount;IIIIILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/A/k;->d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    .line 3
    iget-object p1, p0, Lc/c/a/n/A/k;->d:Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    invoke-virtual {p0, p1}, Lc/c/a/n/A/k;->a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V

    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableCount;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/A/k;->e:Lb/r/r;

    return-object v0
.end method
