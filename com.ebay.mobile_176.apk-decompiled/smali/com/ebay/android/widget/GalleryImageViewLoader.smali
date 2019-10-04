.class Lcom/ebay/android/widget/GalleryImageViewLoader;
.super Ljava/lang/Object;
.source "GalleryImageViewLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;
.implements Lcom/ebay/android/widget/ImageViewLoaderCallbacks;


# instance fields
.field private currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final height:I

.field private final imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

.field private imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

.field private final use565Decode:Z

.field private final viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

.field private final width:I


# direct methods
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destinations cannot be null"

    .line 36
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    const-string/jumbo p1, "viewVisibility cannot be null"

    .line 37
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ViewVisibility;

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 38
    iput-object p3, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 39
    iput-object p4, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    .line 40
    iput p5, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->width:I

    .line 41
    iput p6, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->height:I

    .line 42
    iput-boolean p7, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->use565Decode:Z

    .line 44
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewLoader;->createInitialLoader()Lcom/ebay/android/widget/ImageViewLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    return-void
.end method

.method private createInitialLoader()Lcom/ebay/android/widget/ImageViewLoader;
    .locals 9

    .line 145
    iget v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->width:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 146
    new-instance v7, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v3, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v4, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    iget v5, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->width:I

    iget v6, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->height:I

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;II)V

    return-object v7

    .line 150
    :cond_0
    new-instance v8, Lcom/ebay/android/widget/GalleryImageViewFileLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v3, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v4, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    iget v5, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->width:I

    iget v6, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->height:I

    iget-boolean v7, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->use565Decode:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;IIZ)V

    return-object v8
.end method

.method private createNextLoader()Lcom/ebay/android/widget/ImageViewLoader;
    .locals 9

    .line 137
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    instance-of v0, v0, Lcom/ebay/android/widget/GalleryImageViewThumbnailLoader;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/ebay/android/widget/GalleryImageViewFileLoader;

    iget-object v3, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v4, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v5, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    iget v6, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->width:I

    iget v7, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->height:I

    iget-boolean v8, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->use565Decode:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/ebay/android/widget/GalleryImageViewFileLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;IIZ)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyFailure()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    :cond_0
    return-void
.end method

.method private notifySuccess()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->imageViewLoaderCallbacks:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iget-object v1, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v1}, Lcom/ebay/android/widget/ImageViewLoader;->getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->cancel()V

    :cond_0
    return-void
.end method

.method public dispatch()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    :cond_0
    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object v0

    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDecode(Z)Z

    move-result p1

    return p1
.end method

.method public isAppropriateForDimension(II)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

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

    .line 62
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result p1

    return p1
.end method

.method public isFailed()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->isFailed()Z

    move-result v0

    return v0
.end method

.method public onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewLoader;->createNextLoader()Lcom/ebay/android/widget/ImageViewLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->reset()V

    .line 185
    iput-object p1, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 186
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewLoader;->dispatch()V

    goto :goto_0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewLoader;->notifyFailure()V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V
    .locals 0
    .param p2    # Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 171
    invoke-direct {p0}, Lcom/ebay/android/widget/GalleryImageViewLoader;->notifySuccess()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/ebay/android/widget/GalleryImageViewLoader;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ebay/android/widget/GalleryImageViewLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->reset()V

    :cond_0
    return-void
.end method
