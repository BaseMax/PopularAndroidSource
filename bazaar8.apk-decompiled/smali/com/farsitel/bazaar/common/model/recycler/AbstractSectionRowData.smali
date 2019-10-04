.class public interface abstract Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;
.super Ljava/lang/Object;
.source "AbstractSectionRowData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getActionLabel()Ljava/lang/String;
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentPositionOffset()I
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getReferrer()Ljava/lang/String;
.end method

.method public abstract getSlug()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract setCurrentPosition(I)V
.end method

.method public abstract setCurrentPositionOffset(I)V
.end method
