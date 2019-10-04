.class public final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ItemBidDetails;,
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$ShippingAddress;,
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;,
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;,
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;,
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;,
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BidArray;,
        Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;
    }
.end annotation


# instance fields
.field public allBidders:Lcom/ebay/common/model/AllBiddersData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;)V

    .line 27
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
