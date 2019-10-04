.class public interface abstract Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;
.super Ljava/lang/Object;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onAdsContextReady(Ljava/util/List;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/uss/KeyValue;",
            ">;",
            "Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAdsReady(Lcom/ebay/common/rtm/RtmHelper;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V
.end method
