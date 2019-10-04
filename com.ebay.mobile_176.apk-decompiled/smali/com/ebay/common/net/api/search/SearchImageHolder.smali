.class public interface abstract Lcom/ebay/common/net/api/search/SearchImageHolder;
.super Ljava/lang/Object;
.source "SearchImageHolder.java"


# virtual methods
.method public abstract getImageBytes(Ljava/lang/String;)[B
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract putImageBytes(Ljava/lang/String;[B)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
