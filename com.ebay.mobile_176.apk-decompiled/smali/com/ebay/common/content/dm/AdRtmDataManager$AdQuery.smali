.class abstract Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;
.super Ljava/lang/Object;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AdQuery"
.end annotation


# instance fields
.field public adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

.field public generateRequestContextOnly:Z

.field public iafToken:Ljava/lang/String;

.field public site:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->NONE:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    iput-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;->adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
.end method

.method public abstract validateResult(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;",
            "Ljava/util/List<",
            "Lcom/ebay/common/rtm/RtmContent$Ad;",
            ">;)Z"
        }
    .end annotation
.end method
