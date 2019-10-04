.class public Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;
.super Ljava/lang/Object;
.source "EbayFitmentInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayFitmentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FitmentData"
.end annotation


# instance fields
.field public fitmentProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;Ljava/util/List;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->addProperties(Ljava/util/List;)V

    return-void
.end method

.method private addProperties(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->fitmentProperties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->fitmentProperties:Ljava/util/Map;

    :cond_0
    if-eqz p1, :cond_2

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/NameValue;

    .line 90
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/NameValue;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->fitmentProperties:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/ebay/nautilus/domain/data/NameValue;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method
