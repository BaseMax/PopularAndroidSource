.class public Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;
.super Ljava/lang/Object;
.source "MotorFinderAnswerMapper.java"


# instance fields
.field private answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

.field private contexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    .line 31
    invoke-direct {p0}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->extractCompatibleProductContext()V

    return-void
.end method

.method private extractCompatibleProductContext()V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsFinderMetadata:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaDataHolder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsFinderMetadata:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaDataHolder;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaDataHolder;->productTypes:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_3

    .line 48
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->contexts:Ljava/util/Map;

    .line 49
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsFinderMetadata:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaDataHolder;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaDataHolder;->productTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;

    if-eqz v1, :cond_1

    .line 51
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;->findersByPartType:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;->findersByPartType:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartTypeMetaData;

    if-eqz v3, :cond_3

    .line 56
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartTypeMetaData;->finders:Ljava/util/List;

    if-nez v4, :cond_4

    goto :goto_1

    .line 59
    :cond_4
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartTypeMetaData;->finders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;

    .line 61
    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;->displayName:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    if-eqz v6, :cond_5

    .line 63
    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;->displayName:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/ebay/nautilus/domain/data/cos/base/Text;->getText(Z)Ljava/lang/String;

    move-result-object v6

    .line 64
    iget-object v7, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->contexts:Ljava/util/Map;

    .line 65
    invoke-direct {p0, v1, v3, v5}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->getCompatibleProductContext(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartTypeMetaData;Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    move-result-object v5

    .line 64
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void

    .line 44
    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->contexts:Ljava/util/Map;

    return-void
.end method

.method private getCompatibleProductContext(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartTypeMetaData;Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;
    .locals 6

    .line 80
    new-instance v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;-><init>()V

    .line 81
    new-instance v1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductMetadata;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductMetadata;-><init>()V

    .line 82
    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleProductMetadata:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductMetadata;

    .line 83
    new-instance v2, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;->productType:Ljava/lang/String;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartTypeMetaData;->partType:Ljava/lang/String;

    iget-object v5, p3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;->queryType:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleMetaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    .line 86
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;->displayName:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductMetadata;->displayName:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    .line 87
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;->productType:Ljava/lang/String;

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductMetadata;->productType:Ljava/lang/String;

    .line 88
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;->queryProperties:Ljava/util/List;

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductMetadata;->compatibilityProperties:Ljava/util/List;

    .line 90
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/ProductTypeMetaData;->productType:Ljava/lang/String;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartTypeMetaData;->partType:Ljava/lang/String;

    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;->queryType:Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1, p2, v1}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->getCompatibleProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductUtil;->convertToGarageProduct(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;)Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    :cond_0
    const-string p1, "BY_VEHICLE"

    .line 97
    iget-object p2, p3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;->queryType:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->personalizedGarageProducts:Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    if-nez p1, :cond_1

    .line 100
    new-instance p1, Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;-><init>()V

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->personalizedGarageProducts:Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    .line 102
    :cond_1
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->personalizedGarageProducts:Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    iget-object p2, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->userSavedProductsUsage:Lcom/ebay/nautilus/domain/data/compatibility/UserSavedProductsUsage;

    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;->userSavedProductsUsage:Lcom/ebay/nautilus/domain/data/compatibility/UserSavedProductsUsage;

    .line 105
    :cond_2
    iget-object p1, p3, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/SelectionMetaData;->trackingList:Ljava/util/List;

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->trackingList:Ljava/util/List;

    return-object v0
.end method

.method public static newMapper(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;
    .locals 1

    .line 36
    new-instance v0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;-><init>(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)V

    return-object v0
.end method


# virtual methods
.method public getCompatibleProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->compatibleProducts:Ljava/util/List;

    .line 120
    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/compatibility/MotorsCompatibilityUtil;->getCompatibleProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;

    move-result-object p1

    return-object p1
.end method

.method public getCompatibleProductContexts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->contexts:Ljava/util/Map;

    return-object v0
.end method
