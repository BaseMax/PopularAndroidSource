.class public Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;
.super Lcom/ebay/common/net/api/fis/FundingInstrumentServiceNetLoader;
.source "UpdateCreditCardNetLoader.java"


# instance fields
.field private final creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

.field private final fundingInstrumentId:Ljava/lang/String;

.field private final iafToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/fis/FundingInstrumentServiceNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 18
    iput-object p2, p0, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;->iafToken:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;->fundingInstrumentId:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/ebay/nautilus/domain/net/fis/UpdateCreditCardRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;->iafToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;->fundingInstrumentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/fis/UpdateCreditCardNetLoader;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/net/fis/UpdateCreditCardRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V

    return-object v0
.end method
