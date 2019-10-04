.class public final Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$a;
.super Lc/c/a/n/c/c/c/e;
.source "FehrestFragmentContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ZLb/o/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;Z",
            "Lb/o/a/n;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc/c/a/n/c/c/c/e;-><init>(Ljava/util/List;ZLb/o/a/n;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$a;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c(I)Landroidx/fragment/app/Fragment;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lc/c/a/n/c/c/c/e;->a(II)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/Page;

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->za:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;

    .line 3
    new-instance v10, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getSlug()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getItems()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getReferrer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v7, p1

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v1, v10

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;ILh/f/b/f;)V

    .line 8
    invoke-virtual {v0, v10}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;->a(Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;)Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method
