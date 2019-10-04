.class Lcom/ebay/android/widget/RemoteImageViewQueueNode;
.super Ljava/lang/Object;
.source "RemoteImageViewQueueNode.java"


# instance fields
.field private finalLoad:Z

.field private final loader:Lcom/ebay/android/widget/ImageViewLoader;

.field private final multiPassLoader:Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;

.field private final viewVisibility:Lcom/ebay/android/widget/ViewVisibility;


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/android/widget/ViewVisibility;Z)V
    .locals 1
    .param p1    # Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/android/widget/ImageViewLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/android/widget/ViewVisibility;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "multiPassLoader nay not be null"

    .line 30
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->multiPassLoader:Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;

    const-string p1, "loader may not be null"

    .line 31
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoader;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    const-string/jumbo p1, "viewVisibility may not be null"

    .line 32
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ViewVisibility;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 33
    iput-boolean p4, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->finalLoad:Z

    return-void
.end method


# virtual methods
.method getLoader()Lcom/ebay/android/widget/ImageViewLoader;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    return-object v0
.end method

.method getMultiPassLoader()Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->multiPassLoader:Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;

    return-object v0
.end method

.method getViewVisibility()Lcom/ebay/android/widget/ViewVisibility;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    return-object v0
.end method

.method isFinalLoad()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->finalLoad:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIVQueueNode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v1}, Lcom/ebay/android/widget/ImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
