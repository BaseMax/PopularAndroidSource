.class Lcom/ebay/android/widget/RemoteImageViewFailedLoader;
.super Ljava/lang/Object;
.source "RemoteImageViewFailedLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;


# instance fields
.field private final destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

.field private final height:I

.field private final imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final width:I


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/nautilus/domain/data/image/ImageData;II)V
    .locals 1
    .param p1    # Lcom/ebay/android/widget/ImageViewLoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/image/ImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destination may not be null"

    .line 42
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    .line 43
    iput-object p2, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    .line 44
    iput p3, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->width:I

    .line 45
    iput p4, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->height:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public dispatch()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    return-object v0
.end method

.method public bridge synthetic getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAppropriateForDimension(II)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 54
    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->width:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->height:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->height:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isFailed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteImageViewFailedLoader{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
