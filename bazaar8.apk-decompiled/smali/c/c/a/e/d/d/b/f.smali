.class public final Lc/c/a/e/d/d/b/f;
.super Ljava/lang/Object;
.source "BookmarkResponse.kt"


# instance fields
.field public final iconUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "iconUrl"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final price:I
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final priceString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "priceString"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;
    .locals 8

    .line 1
    new-instance v7, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/d/b/f;->packageName:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lc/c/a/e/d/d/b/f;->iconUrl:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lc/c/a/e/d/d/b/f;->name:Ljava/lang/String;

    .line 5
    iget v5, p0, Lc/c/a/e/d/d/b/f;->price:I

    .line 6
    iget-object v6, p0, Lc/c/a/e/d/d/b/f;->priceString:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v0, v7

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-object v7
.end method
