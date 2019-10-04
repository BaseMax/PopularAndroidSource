.class public final Lc/c/a/n/v/g;
.super Lb/o/a/z;
.source "ScreenshotViewPagerAdapter.kt"


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/o/a/n;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/n;",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lb/o/a/z;-><init>(Lb/o/a/n;)V

    iput-object p2, p0, Lc/c/a/n/v/g;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/v/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/n/v/f;->Y:Lc/c/a/n/v/f$a;

    iget-object v1, p0, Lc/c/a/n/v/g;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;

    invoke-virtual {v0, p1}, Lc/c/a/n/v/f$a;->a(Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;)Lc/c/a/n/v/f;

    move-result-object p1

    return-object p1
.end method
