.class public final Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetFavoriteSellersResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;
    }
.end annotation


# instance fields
.field public final sellerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/SavedSeller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse;->sellerList:Ljava/util/ArrayList;

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

    .line 24
    new-instance v0, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse;Lcom/ebay/common/net/api/trading/GetFavoriteSellersResponse$1;)V

    .line 25
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
