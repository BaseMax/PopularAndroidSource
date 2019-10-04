.class public Lcom/ebay/common/net/api/search/answers/wire/TrackableSearchItem;
.super Ljava/lang/Object;
.source "TrackableSearchItem.java"


# instance fields
.field public item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

.field public trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

.field public trackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
