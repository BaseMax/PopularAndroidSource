.class public final Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;
.super Ljava/lang/Object;
.source "GetAllBiddersRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParams"
.end annotation


# instance fields
.field public final itemId:J

.field public final tradingApi:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;


# direct methods
.method public constructor <init>(JLcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;->itemId:J

    .line 86
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;->tradingApi:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersRequest$RequestParams;->itemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
