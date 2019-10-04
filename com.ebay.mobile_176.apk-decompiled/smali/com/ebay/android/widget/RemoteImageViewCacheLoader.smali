.class Lcom/ebay/android/widget/RemoteImageViewCacheLoader;
.super Ljava/lang/Object;
.source "RemoteImageViewCacheLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;
.implements Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$Observer;


# instance fields
.field private cacheLookupAttempted:Z

.field private final destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

.field private dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private failed:Z

.field private final height:I

.field private final imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final use565Decode:Z

.field private final width:I


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V
    .locals 1
    .param p1    # Lcom/ebay/android/widget/ImageViewLoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/image/ImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destination may not be null"

    .line 73
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    .line 74
    iput-object p2, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 75
    iput-object p3, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    .line 76
    iput p4, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->width:I

    .line 77
    iput p5, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->height:I

    .line 78
    iput-boolean p6, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->use565Decode:Z

    return-void
.end method

.method private checkAndSetDataManager()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    sget-object v1, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$KeyParams;

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLoadable()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/image/ImageData;->isValid(Lcom/ebay/nautilus/domain/data/image/ImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public dispatch()V
    .locals 7

    .line 163
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 166
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->isLoadable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 167
    iput-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->failed:Z

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    invoke-interface {v0, p0, v2}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    .line 180
    :cond_2
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->cacheLookupAttempted:Z

    if-nez v0, :cond_4

    .line 182
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->checkAndSetDataManager()Z

    .line 183
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    if-nez v0, :cond_3

    return-void

    .line 186
    :cond_3
    iput-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->cacheLookupAttempted:Z

    .line 187
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v3, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->width:I

    iget v4, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->height:I

    iget-boolean v5, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->use565Decode:Z

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->getLargestCachedImage(Lcom/ebay/nautilus/domain/data/image/ImageData;IIZLcom/ebay/nautilus/domain/content/dm/ImageDataManager$Observer;)V

    :cond_4
    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    return-object v0
.end method

.method getStateString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 231
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->failed:Z

    if-eqz v0, :cond_0

    const-string v0, "Failed"

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    if-eqz v0, :cond_1

    const-string v0, "Done"

    goto :goto_0

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->cacheLookupAttempted:Z

    if-eqz v0, :cond_2

    const-string v0, "InFlight"

    goto :goto_0

    :cond_2
    const-string v0, "Other"

    :goto_0
    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->use565Decode:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAppropriateForDimension(II)Z
    .locals 1

    .line 87
    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->width:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->height:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFailed()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->failed:Z

    return v0
.end method

.method public onLoadImageComplete(Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->unregisterObserver(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 202
    :cond_0
    iget-object p2, p1, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;->image:Landroid/graphics/Bitmap;

    :goto_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->failed:Z

    .line 206
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {p1, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    goto :goto_1

    .line 210
    :cond_1
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    .line 211
    iget-object p2, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {p2, p0, p1}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->cacheLookupAttempted:Z

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    .line 154
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->failed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteImageViewCacheLoader{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
