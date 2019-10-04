.class public Lc/c/a/n/l/i;
.super Lc/c/a/n/c/c/t;
.source "FehrestViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/t<",
        "Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public final x:Z

.field public final y:Lc/c/a/e/d/j/c;

.field public final z:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/j/c;Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fehrestRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V

    iput-object p3, p0, Lc/c/a/n/l/i;->y:Lc/c/a/e/d/j/c;

    iput-object p4, p0, Lc/c/a/n/l/i;->z:Lc/c/a/e/d/a/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/l/i;)Lc/c/a/e/d/j/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/l/i;->y:Lc/c/a/e/d/j/c;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/l/i;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/l/i;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->h()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/FehrestTabPage;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/BaseTabPage;->getPages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/Page;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/Page;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;)V
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    new-instance v4, Lcom/farsitel/bazaar/ui/fehrest/FehrestViewModel$makeData$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestViewModel$makeData$1;-><init>(Lc/c/a/n/l/i;Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;Lh/c/b;)V

    const/4 p1, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    :goto_1
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    invoke-virtual {p0, p1}, Lc/c/a/n/l/i;->a(Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/l/i;->x:Z

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/l/i;->z:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/l/i;->z:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/l/i;->z:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->b()I

    move-result v0

    const v1, 0xc3633

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
