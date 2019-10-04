.class public Lcom/ebay/common/net/api/fis/AddCreditCardNetLoader;
.super Lcom/ebay/common/net/api/fis/FundingInstrumentServiceNetLoader;
.source "AddCreditCardNetLoader.java"


# instance fields
.field protected final creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

.field protected final iafToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/fis/FundingInstrumentServiceNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 17
    iput-object p2, p0, Lcom/ebay/common/net/api/fis/AddCreditCardNetLoader;->iafToken:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/ebay/common/net/api/fis/AddCreditCardNetLoader;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/ebay/nautilus/domain/net/fis/AddCreditCardRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/fis/AddCreditCardNetLoader;->iafToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/fis/AddCreditCardNetLoader;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/net/fis/AddCreditCardRequest;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V

    return-object v0
.end method
