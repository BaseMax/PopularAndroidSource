.class public Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "LeaveFeedbackResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse$RootElement;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

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

    .line 21
    new-instance v0, Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse;Lcom/ebay/common/net/api/trading/LeaveFeedbackResponse$1;)V

    .line 22
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
