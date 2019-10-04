.class Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;
.super Ljava/lang/Object;
.source "GalleryImageViewThumbnailLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;
.implements Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager$Observer;


# static fields
.field public static final LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private failed:Z

.field private final height:I

.field private final imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

.field private imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

.field private imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

.field private taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/content/TaskSync<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "localImageLoader"

    const-string v2, "Log Local Image"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method constructor <init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;II)V
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
    .param p4    # Lcom/ebay/nautilus/domain/data/image/GalleryImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destinations cannot be null"

    .line 50
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    const-string/jumbo p1, "viewVisibility cannot be null"

    .line 51
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ViewVisibility;

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 52
    iput-object p3, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 53
    iput-object p4, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    .line 54
    iput p5, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->width:I

    .line 55
    iput p6, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->height:I

    return-void
.end method

.method private checkAndSetDataManager()Z
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    const-class v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "anonymous"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v2, Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager$KeyParams;

    invoke-direct {v2, v0}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v1, v2}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private isLoadable()Z
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyFailure()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    :cond_0
    return-void
.end method

.method private notifySuccess()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iget-object v1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    invoke-interface {v0, p0, v1}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;->unregisterObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    .line 125
    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    return-void
.end method

.method public dispatch()V
    .locals 6

    .line 145
    sget-object v0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "%s: Dispatch image load for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 147
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v4

    aput-object v4, v3, v1

    .line 146
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->isLoadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iput-boolean v1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->failed:Z

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->notifyFailure()V

    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    if-eqz v0, :cond_3

    .line 163
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->notifySuccess()V

    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    if-eqz v0, :cond_4

    return-void

    .line 172
    :cond_4
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->checkAndSetDataManager()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;

    iget-object v1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    iget v2, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->width:I

    iget v3, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->height:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;->loadImageData(Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager$Observer;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;II)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAppropriateForDimension(II)Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->width:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->height:I

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

    .line 73
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFailed()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->failed:Z

    return v0
.end method

.method public onImageLoaded(Lcom/ebay/nautilus/domain/content/dm/GalleryImageThumbnailDataManager;Landroid/graphics/Bitmap;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p3

    if-nez p3, :cond_1

    .line 218
    sget-object p3, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p3, p3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p3, :cond_0

    .line 219
    sget-object p3, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "%s: Success image load for %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 220
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v4

    aput-object v4, v0, v1

    .line 219
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 222
    :cond_0
    new-instance p3, Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-direct {p3, v0, p2, v2}, Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;-><init>(Lcom/ebay/nautilus/domain/data/image/GalleryImageData;Landroid/graphics/Bitmap;Z)V

    iput-object p3, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    .line 223
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->notifySuccess()V

    goto :goto_0

    .line 227
    :cond_1
    sget-object p2, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_2

    .line 228
    sget-object p2, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p3, "%s: Failed image load for %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 229
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 231
    :cond_2
    iput-boolean v1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->failed:Z

    .line 232
    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    .line 233
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->notifyFailure()V

    .line 235
    :goto_0
    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->cancel()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;->failed:Z

    return-void
.end method
