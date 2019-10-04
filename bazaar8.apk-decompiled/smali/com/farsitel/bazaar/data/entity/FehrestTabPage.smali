.class public final Lcom/farsitel/bazaar/data/entity/FehrestTabPage;
.super Lcom/farsitel/bazaar/data/entity/BaseTabPage;
.source "FehrestTabPage.kt"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_pages"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/data/entity/BaseTabPage;-><init>(Ljava/util/List;)V

    return-void
.end method
