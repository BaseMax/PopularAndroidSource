.class public final Lc/c/a/n/k/d;
.super Lc/c/a/n/l/i;
.source "EditorChoiceViewModel.kt"


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
    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/n/l/i;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/j/c;Lc/c/a/e/d/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/FehrestTabPage;)V
    .locals 9

    const-string v0, "page"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/BaseTabPage;->getPages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/farsitel/bazaar/common/model/Page;

    .line 2
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/Page;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 3
    new-instance p1, Lcom/farsitel/bazaar/common/model/page/ListItem$EditorChoiceHeader;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-direct {p1, v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$EditorChoiceHeader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    .line 4
    invoke-static/range {v1 .. v8}, Lcom/farsitel/bazaar/common/model/Page;->copy$default(Lcom/farsitel/bazaar/common/model/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/Page;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/Page;)V

    return-void
.end method
