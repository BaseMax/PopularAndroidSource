.class public final Lc/c/a/n/b/d/a/b;
.super Ljava/lang/Object;
.source "ScreenshotAdapter.kt"

# interfaces
.implements Lc/c/a/n/b/d/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/d/a/a;->h()Lc/c/a/n/b/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/b/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/d/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/b/d/a/b;->a:Lc/c/a/n/b/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/d/a/b;->a:Lc/c/a/n/b/d/a/a;

    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;->isImage()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 2
    iget-object v3, p0, Lc/c/a/n/b/d/a/b;->a:Lc/c/a/n/b/d/a/a;

    invoke-static {v3}, Lc/c/a/n/b/d/a/a;->a(Lc/c/a/n/b/d/a/a;)Lc/c/a/n/b/d/a/a$a;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 3
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lc/c/a/n/b/d/a/b;->a:Lc/c/a/n/b/d/a/a;

    invoke-virtual {v5}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-object v0, p0, Lc/c/a/n/b/d/a/b;->a:Lc/c/a/n/b/d/a/a;

    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v3, p1, v4}, Lc/c/a/n/b/d/a/a$a;->a(ILjava/util/List;)V

    :cond_2
    return-void
.end method
