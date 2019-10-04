.class public abstract Lc/c/a/n/c/c/c/e;
.super Lb/o/a/z;
.source "PageContainerPagerAdapter.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z


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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p3, v0}, Lb/o/a/z;-><init>(Lb/o/a/n;I)V

    iput-object p1, p0, Lc/c/a/n/c/c/c/e;->g:Ljava/util/List;

    iput-boolean p2, p0, Lc/c/a/n/c/c/c/e;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/c/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(II)I
    .locals 1

    .line 4
    iget-boolean v0, p0, Lc/c/a/n/c/c/c/e;->h:Z

    if-eqz v0, :cond_0

    sub-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    :cond_0
    return p1
.end method

.method public bridge synthetic a(I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/e;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/c/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lc/c/a/n/c/c/c/e;->a(II)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/Page;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
