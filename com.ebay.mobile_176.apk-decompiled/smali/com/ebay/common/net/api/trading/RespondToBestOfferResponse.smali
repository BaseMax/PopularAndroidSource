.class public Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "RespondToBestOfferResponse.java"


# static fields
.field public static final ERROR_COUNTEROFFER_GREATER_QUANTITY_THEN_ORIGINAL_OFFER:Ljava/lang/String; = "21917"

.field public static final ERROR_COUNTEROFFER_GREATER_THAN_BIN:Ljava/lang/String; = "21916"

.field public static final ERROR_COUNTEROFFER_PRICE_LESS_THEN_AUTO_DECLINE_PRICE:Ljava/lang/String; = "21991"


# instance fields
.field rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

.field private status:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;->success:Z

    .line 34
    new-instance v0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse$1;-><init>(Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;)V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;->rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    return-void
.end method

.method static synthetic access$002(Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;->status:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;->rootElement:Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    const-string p1, "Success"

    .line 30
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/ebay/common/net/api/trading/RespondToBestOfferResponse;->success:Z

    :cond_0
    return-void
.end method
