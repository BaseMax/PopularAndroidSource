.class Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;
.super Ljava/lang/Object;
.source "RemoteImageViewLoaderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ebay/android/widget/RemoteImageViewQueueNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isIntermediateLoader(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->isFinalLoad()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isVisible(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->getViewVisibility()Lcom/ebay/android/widget/ViewVisibility;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/android/widget/ViewVisibility;->isVisible()Z

    move-result p1

    return p1
.end method

.method private signum(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public compare(Lcom/ebay/android/widget/RemoteImageViewQueueNode;Lcom/ebay/android/widget/RemoteImageViewQueueNode;)I
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->isIntermediateLoader(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->isIntermediateLoader(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->signum(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->isVisible(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z

    move-result p1

    invoke-direct {p0, p2}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->isVisible(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->signum(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    check-cast p2, Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->compare(Lcom/ebay/android/widget/RemoteImageViewQueueNode;Lcom/ebay/android/widget/RemoteImageViewQueueNode;)I

    move-result p1

    return p1
.end method

.method getDebugString(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIntermediateLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->isIntermediateLoader(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewLoaderComparator;->isVisible(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
