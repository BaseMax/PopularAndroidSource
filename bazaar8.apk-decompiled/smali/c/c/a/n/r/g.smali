.class public final Lc/c/a/n/r/g;
.super Lc/c/a/n/c/d/g;
.source "ChildMyBazaarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/util/ArrayList<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Lc/c/a/e/d/a/a;

.field public final l:Lc/c/a/d/c/b;

.field public final m:Lc/c/a/e/d/u/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/a/a;Lc/c/a/d/c/b;Lc/c/a/e/d/u/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/r/g;->j:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/n/r/g;->k:Lc/c/a/e/d/a/a;

    iput-object p3, p0, Lc/c/a/n/r/g;->l:Lc/c/a/d/c/b;

    iput-object p4, p0, Lc/c/a/n/r/g;->m:Lc/c/a/e/d/u/a;

    return-void
.end method


# virtual methods
.method public final a(II)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f100143

    if-nez p1, :cond_0

    move-object v6, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v4, p0, Lc/c/a/n/r/g;->j:Landroid/content/Context;

    .line 3
    new-array v5, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    .line 5
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lc/c/a/n/r/g;->j:Landroid/content/Context;

    .line 7
    new-array v0, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    .line 9
    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 10
    sget-object v4, Lc/c/a/n/r/j;->a:Lc/c/a/n/r/j;

    .line 11
    iget-object p1, p0, Lc/c/a/n/r/g;->l:Lc/c/a/d/c/b;

    invoke-virtual {p1}, Lc/c/a/d/c/b;->f()Z

    move-result v5

    .line 12
    iget-object p1, p0, Lc/c/a/n/r/g;->l:Lc/c/a/d/c/b;

    invoke-virtual {p1}, Lc/c/a/d/c/b;->e()Z

    move-result v8

    .line 13
    iget-object p1, p0, Lc/c/a/n/r/g;->m:Lc/c/a/e/d/u/a;

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->u()Z

    move-result v9

    .line 14
    invoke-virtual/range {v4 .. v9}, Lc/c/a/n/r/j;->a(ZLjava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lc/c/a/n/r/g;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/g;->l:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/c/a/n/r/j;->a:Lc/c/a/n/r/j;

    iget-object v1, p0, Lc/c/a/n/r/g;->l:Lc/c/a/d/c/b;

    invoke-virtual {v1}, Lc/c/a/d/c/b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lc/c/a/n/r/j;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/g;->k:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->B()V

    return-void
.end method
