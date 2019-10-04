.class interface abstract Lcom/ebay/mobile/analytics/TrackingQueue;
.super Ljava/lang/Object;
.source "TrackingQueue.java"


# virtual methods
.method public abstract addToQueue(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V
    .param p1    # Lcom/ebay/nautilus/domain/analytics/TrackingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getTasks()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/analytics/TrackingInfo;",
            ">;"
        }
    .end annotation
.end method
