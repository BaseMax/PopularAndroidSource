.class final Lcom/ebay/android/widget/GalleryImageViewFileLoader;
.super Ljava/lang/Object;
.source "GalleryImageViewFileLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;
.implements Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager$Observer;


# static fields
.field public static final LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;
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

.field private final use565Decode:Z

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

    sput-object v0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method constructor <init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;IIZ)V
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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destinations cannot be null"

    .line 52
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    const-string/jumbo p1, "viewVisibility cannot be null"

    .line 53
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ViewVisibility;

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 54
    iput-object p3, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 55
    iput-object p4, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    .line 56
    iput p5, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->width:I

    .line 57
    iput p6, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->height:I

    .line 58
    iput-boolean p7, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->use565Decode:Z

    return-void
.end method

.method private checkAndSetDataManager()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    const-class v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "anonymous"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v2, Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager$KeyParams;

    invoke-direct {v2, v0}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private isLoadable()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->height:I

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

    .line 201
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    :cond_0
    return-void
.end method

.method private notifySuccess()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iget-object v1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    invoke-interface {v0, p0, v1}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;->unregisterObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    .line 127
    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    return-void
.end method

.method public dispatch()V
    .locals 7

    .line 147
    sget-object v0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "%s: Dispatch image load for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 149
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v4

    aput-object v4, v3, v1

    .line 148
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->isLoadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iput-boolean v1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->failed:Z

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->notifyFailure()V

    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    if-eqz v0, :cond_3

    .line 165
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->notifySuccess()V

    return-void

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    if-eqz v0, :cond_4

    return-void

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->checkAndSetDataManager()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;

    iget-object v3, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    iget v4, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->width:I

    iget v5, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->height:I

    iget-boolean v6, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->use565Decode:Z

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;->loadImageData(Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager$Observer;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;IIZ)Lcom/ebay/nautilus/domain/content/TaskSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->use565Decode:Z

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

    .line 67
    iget v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->width:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->height:I

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

    .line 76
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFailed()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->failed:Z

    return v0
.end method

.method public onImageLoaded(Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;Landroid/graphics/Bitmap;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 5
    .param p1    # Lcom/ebay/nautilus/domain/content/dm/GalleryImageFileDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 220
    sget-object p1, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 221
    sget-object p1, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "%s: Success image load for %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 222
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v4

    aput-object v4, v0, v1

    .line 221
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 224
    :cond_0
    new-instance p1, Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    invoke-direct {p1, v0, p2, v2}, Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;-><init>(Lcom/ebay/nautilus/domain/data/image/GalleryImageData;Landroid/graphics/Bitmap;Z)V

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    .line 225
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->notifySuccess()V

    goto :goto_0

    .line 229
    :cond_1
    sget-object p1, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_2

    .line 230
    sget-object p1, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "%s: Failed image load for %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 231
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v2

    aput-object v2, v0, v1

    .line 230
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 233
    :cond_2
    iput-boolean v1, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->failed:Z

    .line 234
    iput-object p3, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    .line 235
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->notifyFailure()V

    .line 237
    :goto_0
    iput-object p3, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->taskSync:Lcom/ebay/nautilus/domain/content/TaskSync;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->cancel()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->imageInfo:Lcom/ebay/nautilus/domain/data/image/GalleryLoadImageResult;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;->failed:Z

    return-void
.end method
