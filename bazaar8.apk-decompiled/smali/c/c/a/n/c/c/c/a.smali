.class public final Lc/c/a/n/c/c/c/a;
.super Ljava/lang/Object;
.source "BasePageContainerFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/c/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/Page;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/c/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/c/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/core/model/PageContainerState$SinglePage;->a:Lcom/farsitel/bazaar/core/model/PageContainerState$SinglePage;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/Page;

    invoke-static {v0, p1}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;Lcom/farsitel/bazaar/common/model/Page;)V

    .line 5
    iget-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {p1, v4, v3, v2}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;ZILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {p1}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;)V

    .line 7
    iget-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {p1, v4, v3, v2}, Lc/c/a/n/c/c/c/c;->b(Lc/c/a/n/c/c/c/c;ZILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 9
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/PageContainerState$MultiPage;->a:Lcom/farsitel/bazaar/core/model/PageContainerState$MultiPage;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {p1, v4, v3, v2}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;ZILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {p1}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;)V

    .line 13
    iget-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-virtual {p1, v3}, Lc/c/a/n/c/c/c/c;->l(Z)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 15
    :cond_3
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    iget-object v0, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {v0, v4, v3, v2}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;ZILjava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {v0, p1, v4}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V

    .line 18
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 19
    :cond_4
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc/c/a/n/c/c/c/a;->a:Lc/c/a/n/c/c/c/c;

    invoke-static {p1, v3}, Lc/c/a/n/c/c/c/c;->a(Lc/c/a/n/c/c/c/c;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/a;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method
