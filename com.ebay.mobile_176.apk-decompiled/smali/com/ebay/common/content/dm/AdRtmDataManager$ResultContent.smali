.class public final Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;
.super Ljava/lang/Object;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultContent"
.end annotation


# instance fields
.field public rtmHelper:Lcom/ebay/common/rtm/RtmHelper;

.field public rtmRequestContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/uss/KeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper;)V
    .locals 0

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;->rtmHelper:Lcom/ebay/common/rtm/RtmHelper;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/uss/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;->rtmRequestContext:Ljava/util/List;

    return-void
.end method
