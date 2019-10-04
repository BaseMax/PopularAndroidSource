.class public final Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetEbayDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;
    }
.end annotation


# instance fields
.field public final detail:Lcom/ebay/common/model/EbayDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 23
    new-instance v0, Lcom/ebay/common/model/EbayDetail;

    invoke-direct {v0}, Lcom/ebay/common/model/EbayDetail;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;->detail:Lcom/ebay/common/model/EbayDetail;

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

    .line 28
    new-instance v0, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse;Lcom/ebay/common/net/api/trading/GetEbayDetailsResponse$1;)V

    .line 29
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
