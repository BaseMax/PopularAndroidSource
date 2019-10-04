.class public Lcom/ebay/common/rtm/RtmContentResult;
.super Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
.source "RtmContentResult.java"


# instance fields
.field public transient rc:Lcom/ebay/common/rtm/RtmContent;

.field public rtmContentBase64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtmContent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmContentResult;->version:Ljava/lang/String;

    return-void
.end method
