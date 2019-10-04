.class public final Lc/c/a/e/d/d/a/a$a;
.super Ljava/lang/Object;
.source "BookmarkDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/d/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lc/c/a/e/d/d/a/a;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    :cond_0
    invoke-interface {p0, p1}, Lc/c/a/e/d/d/a/a;->a(Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAllBookmarkedApp"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
