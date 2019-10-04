.class public final Lc/c/a/n/l/d;
.super Ljava/lang/Object;
.source "FehrestFragmentContainer.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
.field public final synthetic a:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/l/d;->a:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
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

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/c/a/n/l/d;->a:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/Page;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->a(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lc/c/a/n/l/d;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method
