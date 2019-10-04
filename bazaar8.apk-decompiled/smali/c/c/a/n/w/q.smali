.class public final Lc/c/a/n/w/q;
.super Lc/c/a/n/c/c/t;
.source "SearchViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/t<",
        "Lc/c/a/n/w/l;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public final B:Lc/c/a/e/d/s/h;

.field public final x:Z

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/s/h;Lc/c/a/n/c/c/u;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3}, Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V

    iput-object p2, p0, Lc/c/a/n/w/q;->B:Lc/c/a/e/d/s/h;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/w/q;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->h()I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lc/c/a/n/w/q;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/w/q;Lcom/farsitel/bazaar/data/entity/SearchItems;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/w/q;->a(Lcom/farsitel/bazaar/data/entity/SearchItems;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/w/q;)Lc/c/a/e/d/s/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/w/q;->B:Lc/c/a/e/d/s/h;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/w/q;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/w/q;->y:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lc/c/a/n/w/l;)V
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    new-instance v3, Lcom/farsitel/bazaar/ui/search/SearchViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/search/SearchViewModel$makeData$1;-><init>(Lc/c/a/n/w/q;Lc/c/a/n/w/l;Lh/c/b;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    :goto_2
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/SearchItems;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/SearchItems;->getPage()Lcom/farsitel/bazaar/common/model/Page;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/Page;)V

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/SearchItems;->getSearchToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/w/q;->y:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lc/c/a/n/w/q;->z:Ljava/lang/CharSequence;

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/n/w/q;->A:Ljava/lang/CharSequence;

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/w/l;

    invoke-virtual {p0, p1}, Lc/c/a/n/w/q;->a(Lc/c/a/n/w/l;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "s"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-char v5, p1, v3

    .line 4
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/w/q;->x:Z

    return v0
.end method

.method public final q()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/w/q;->z:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/w/q;->z:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/w/q;->A:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
