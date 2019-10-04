.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;
.super Ljava/lang/Object;
.source "PlBasicTemplateCalculator.java"


# instance fields
.field private final metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    return-void
.end method

.method private calculatedFee()Ljava/math/BigDecimal;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->itemPrice:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->userRate:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private calculatedFeeAndTax()Ljava/math/BigDecimal;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->calculatedFee()Ljava/math/BigDecimal;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->calculatedTax()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->round(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->round(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private calculatedTax()Ljava/math/BigDecimal;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->calculatedFee()Ljava/math/BigDecimal;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 91
    :cond_0
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->taxMultiplier:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private getCurrencyStringFromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCurrency;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const/4 p1, 0x2

    invoke-static {v0, v1, v2, p1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/EbayCurrency;DI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private round(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 119
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getValueForTemplate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "currentCampaignName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "userRate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "calculatedTax"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "calculatedFee"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v1, "calculatedFeeAndTax"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 48
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->currentCampaignName:Ljava/lang/String;

    return-object p1

    .line 46
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->userRate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_2
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->calculatedTax()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->round(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->getCurrencyStringFromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :pswitch_3
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->calculatedFeeAndTax()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->round(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->getCurrencyStringFromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 40
    :pswitch_4
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->calculatedFee()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->round(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->getCurrencyStringFromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    const-string p1, ""

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7c510ea4 -> :sswitch_4
        -0x22f09718 -> :sswitch_3
        -0x22f062f3 -> :sswitch_2
        -0xfe330b5 -> :sswitch_1
        0x66788bd4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
