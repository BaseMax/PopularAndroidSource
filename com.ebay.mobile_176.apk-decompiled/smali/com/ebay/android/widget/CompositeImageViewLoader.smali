.class Lcom/ebay/android/widget/CompositeImageViewLoader;
.super Ljava/lang/Object;
.source "CompositeImageViewLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;
.implements Lcom/ebay/android/widget/ImageViewLoaderCallbacks;


# static fields
.field public static final logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final height:I

.field private final imageData:Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

.field private imageInfo:Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

.field private imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

.field private use565Decode:Z

.field private final viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "localImageLoader"

    const-string v2, "Log Local Image"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/CompositeImageViewLoader;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method constructor <init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/CompositeImageData;IIZ)V
    .locals 1
    .param p1    # Lcom/ebay/android/widget/ImageViewLoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/android/widget/ViewVisibility;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/image/CompositeImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destinations cannot be null"

    .line 40
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    const-string/jumbo p1, "viewVisibility cannot be null"

    .line 41
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ViewVisibility;

    iput-object p1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    const-string p1, "ebayContext cannot be null"

    .line 42
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/kernel/content/EbayContext;

    iput-object p1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 43
    iput-object p4, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    .line 44
    iput p5, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->width:I

    .line 45
    iput p6, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->height:I

    .line 46
    iput-boolean p7, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->use565Decode:Z

    .line 48
    invoke-direct {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->createLoader()Lcom/ebay/android/widget/ImageViewLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    return-void
.end method

.method private createLoader()Lcom/ebay/android/widget/ImageViewLoader;
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;->getGalleryImageData()Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;

    iget-object v3, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v4, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    .line 155
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;->getGalleryImageData()Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    move-result-object v5

    iget v6, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->width:I

    iget v7, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->height:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;II)V

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    instance-of v0, v0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;

    iget-object v3, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v4, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    .line 161
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;->getGalleryImageData()Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    move-result-object v5

    iget v6, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->width:I

    iget v7, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->height:I

    iget-boolean v8, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->use565Decode:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;IIZ)V

    return-object v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    instance-of v0, v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;

    if-nez v0, :cond_2

    .line 166
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;

    iget-object v3, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v4, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v5

    iget v6, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->width:I

    iget v7, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->height:I

    iget-boolean v8, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->use565Decode:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyFailure()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    :cond_0
    return-void
.end method

.method private notifySuccess()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iget-object v1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    invoke-interface {v0, p0, v1}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->cancel()V

    return-void
.end method

.method public dispatch()V
    .locals 5

    .line 140
    sget-object v0, Lcom/ebay/android/widget/CompositeImageViewLoader;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/ebay/android/widget/CompositeImageViewLoader;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "%s: Dispatch image load for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v4

    aput-object v4, v2, v3

    .line 141
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDecode(Z)Z

    move-result p1

    return p1
.end method

.method public isAppropriateForDimension(II)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0, p1, p2}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result p1

    return p1
.end method

.method public isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    instance-of v0, p1, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    if-eqz v0, :cond_2

    .line 68
    check-cast p1, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    .line 69
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    instance-of v0, v0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    instance-of v0, v0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result p1

    return p1

    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;->getGalleryImageData()Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isFailed()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->isFailed()Z

    move-result v0

    return v0
.end method

.method public onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V
    .locals 4

    .line 205
    invoke-direct {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->createLoader()Lcom/ebay/android/widget/ImageViewLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 209
    invoke-virtual {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->dispatch()V

    goto :goto_0

    .line 213
    :cond_0
    sget-object p1, Lcom/ebay/android/widget/CompositeImageViewLoader;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_1

    .line 214
    sget-object p1, Lcom/ebay/android/widget/CompositeImageViewLoader;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "%s: Failed image load for %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v3

    aput-object v3, v1, v2

    .line 214
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->notifyFailure()V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V
    .locals 4
    .param p2    # Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 191
    sget-object p1, Lcom/ebay/android/widget/CompositeImageViewLoader;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 192
    sget-object p1, Lcom/ebay/android/widget/CompositeImageViewLoader;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "%s: Success image load for %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v3

    aput-object v3, v1, v2

    .line 192
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 194
    :cond_0
    iput-object p2, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    .line 195
    invoke-direct {p0}, Lcom/ebay/android/widget/CompositeImageViewLoader;->notifySuccess()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ebay/android/widget/CompositeImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->reset()V

    return-void
.end method
