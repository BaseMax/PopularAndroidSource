.class interface abstract Lcom/ebay/android/widget/ImageViewLoader;
.super Ljava/lang/Object;
.source "ImageViewLoader.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract dispatch()V
.end method

.method public abstract getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isAppropriateForDecode(Z)Z
.end method

.method public abstract isAppropriateForDimension(II)Z
.end method

.method public abstract isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isFailed()Z
.end method

.method public abstract reset()V
.end method
