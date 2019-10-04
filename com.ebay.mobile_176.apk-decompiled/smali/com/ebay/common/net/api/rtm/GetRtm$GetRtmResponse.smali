.class public final Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetRtmResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;,
        Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$BodyElement;,
        Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$RootElement;
    }
.end annotation


# instance fields
.field public rcr:Lcom/ebay/common/rtm/RtmContentResult;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 44
    new-instance v0, Lcom/ebay/common/rtm/RtmContentResult;

    invoke-direct {v0}, Lcom/ebay/common/rtm/RtmContentResult;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$RootElement;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;Lcom/ebay/common/net/api/rtm/GetRtm$1;)V

    .line 54
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
