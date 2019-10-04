.class public Lcom/ebay/common/util/LruHistoryCache;
.super Ljava/util/LinkedHashSet;
.source "LruHistoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mMaxEntries:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 35
    invoke-direct {p0, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/16 v0, 0x64

    .line 23
    iput v0, p0, Lcom/ebay/common/util/LruHistoryCache;->mMaxEntries:I

    .line 36
    iput p1, p0, Lcom/ebay/common/util/LruHistoryCache;->mMaxEntries:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use LruHistoryCache.remember() instead of .add()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRecent()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/ebay/common/util/LruHistoryCache;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 70
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public remember(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/ebay/common/util/LruHistoryCache;->remove(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 55
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/common/util/LruHistoryCache;->size()I

    move-result p1

    iget v0, p0, Lcom/ebay/common/util/LruHistoryCache;->mMaxEntries:I

    if-le p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/ebay/common/util/LruHistoryCache;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/util/LruHistoryCache;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
