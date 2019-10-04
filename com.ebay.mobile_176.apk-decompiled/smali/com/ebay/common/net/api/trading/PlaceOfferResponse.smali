.class public Lcom/ebay/common/net/api/trading/PlaceOfferResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "PlaceOfferResponse.java"


# static fields
.field public static final ERROR_MINIMUM_PRICE:Ljava/lang/String; = "21917143"


# instance fields
.field public final result:Lcom/ebay/common/model/PlaceOfferResult;

.field rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 27
    new-instance v0, Lcom/ebay/common/model/PlaceOfferResult;

    invoke-direct {v0}, Lcom/ebay/common/model/PlaceOfferResult;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    .line 35
    new-instance v0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/trading/PlaceOfferResponse$1;-><init>(Lcom/ebay/common/net/api/trading/PlaceOfferResponse;)V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    return-void
.end method


# virtual methods
.method public getBestOfferId()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iget-object v0, v0, Lcom/ebay/common/model/PlaceOfferResult;->bestOfferId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTransactionIdAsLong()Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iget-object v1, v1, Lcom/ebay/common/model/PlaceOfferResult;->transactionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iget-object v1, v1, Lcom/ebay/common/model/PlaceOfferResult;->transactionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PlaceOffer"

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->result:Lcom/ebay/common/model/PlaceOfferResult;

    iget-object v4, v4, Lcom/ebay/common/model/PlaceOfferResult;->transactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " into long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/PlaceOfferResponse;->rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
