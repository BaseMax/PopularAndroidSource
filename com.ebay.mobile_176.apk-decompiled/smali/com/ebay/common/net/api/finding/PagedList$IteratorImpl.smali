.class final Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;
.super Ljava/lang/Object;
.source "PagedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/finding/PagedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private final parent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->parent:Ljava/util/List;

    .line 722
    iput p2, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 728
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    .line 734
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->parent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 740
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 746
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->parent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->parent:Ljava/util/List;

    iget v1, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 747
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 754
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 760
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->parent:Ljava/util/List;

    iget v1, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 761
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/ebay/common/net/api/finding/PagedList$IteratorImpl;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .line 774
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 780
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
