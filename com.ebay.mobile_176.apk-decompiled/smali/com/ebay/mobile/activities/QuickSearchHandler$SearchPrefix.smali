.class final enum Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;
.super Ljava/lang/Enum;
.source "QuickSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/QuickSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SearchPrefix"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix$IntentBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum ALL_OFFERS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum EBAY_ITEM_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum NORMAL:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum PRODUCT_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum PRODUCT_REVIEW:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum PRODUCT_REVIEW_QNA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum PRODUCT_REVIEW_SAA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

.field public static final enum TOP_PRODUCTS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 101
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->NORMAL:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    .line 102
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "EBAY_ITEM_ID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->EBAY_ITEM_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    .line 103
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "PRODUCT_ID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    .line 104
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "PRODUCT_REVIEW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    .line 105
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "PRODUCT_REVIEW_QNA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_QNA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    .line 106
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "PRODUCT_REVIEW_SAA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_SAA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    .line 107
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "TOP_PRODUCTS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->TOP_PRODUCTS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    .line 108
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const-string v1, "ALL_OFFERS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ALL_OFFERS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    const/16 v0, 0x8

    .line 99
    new-array v0, v0, [Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->NORMAL:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->EBAY_ITEM_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_QNA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_SAA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->TOP_PRODUCTS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ALL_OFFERS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    aput-object v1, v0, v9

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->$VALUES:[Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSearchPrefix(Ljava/lang/String;)Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;
    .locals 1

    .line 113
    invoke-static {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isEbayItemIdPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->EBAY_ITEM_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isEbayProductId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0

    .line 117
    :cond_1
    invoke-static {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isProductReviewsPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0

    .line 119
    :cond_2
    invoke-static {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isProductReviewsQnaPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_QNA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0

    .line 121
    :cond_3
    invoke-static {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isProductReviewsSaaPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_SAA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0

    .line 123
    :cond_4
    invoke-static {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isTopProductsPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->TOP_PRODUCTS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0

    .line 125
    :cond_5
    invoke-static {p0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isAllOffersPrefix(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 126
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ALL_OFFERS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0

    .line 128
    :cond_6
    sget-object p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->NORMAL:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0
.end method

.method private static isAllOffersPrefix(Ljava/lang/String;)Z
    .locals 2

    .line 272
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Prp$B;->epidSearchSupport:Lcom/ebay/mobile/dcs/Dcs$Prp$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "aop:"

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, "aop:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isEbayItemIdPrefix(Ljava/lang/String;)Z
    .locals 4

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "id:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "id:"

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    const/16 v3, 0x13

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {p0, v0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isKeywordNumeric(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method private static isEbayProductId(Ljava/lang/String;)Z
    .locals 8

    .line 153
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Prp$B;->feature:Lcom/ebay/mobile/dcs/Dcs$Prp$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Prp$B;->epidSearchSupport:Lcom/ebay/mobile/dcs/Dcs$Prp$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "epid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, " +"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 165
    aget-object v0, p0, v2

    const-string v1, "epid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    array-length v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    aget-object v1, p0, v4

    const-string v5, "iid:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    aget-object v1, p0, v4

    const-string v5, "iid:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    array-length v5, p0

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    aget-object v5, p0, v6

    const-string/jumbo v7, "var:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    aget-object p0, p0, v6

    const-string/jumbo v3, "var:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 176
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_5

    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_8

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_8

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_b

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p0, :cond_b

    .line 210
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    return v4

    :cond_c
    :goto_4
    return v2
.end method

.method private static isKeywordNumeric(Ljava/lang/String;I)Z
    .locals 0

    if-lez p1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isProductReviewsPrefix(Ljava/lang/String;)Z
    .locals 2

    .line 220
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$ProductReviews$B;->searchSupportForReviewsPrefix:Lcom/ebay/mobile/dcs/Dcs$ProductReviews$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "reviews:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "reviews:"

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->isKeywordNumeric(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isProductReviewsQnaPrefix(Ljava/lang/String;)Z
    .locals 2

    .line 229
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$ProductReviews$B;->searchSupportForReviewsQnaPrefix:Lcom/ebay/mobile/dcs/Dcs$ProductReviews$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "qna:"

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string/jumbo v0, "qna:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isProductReviewsSaaPrefix(Ljava/lang/String;)Z
    .locals 2

    .line 236
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$ProductReviews$B;->searchSupportForReviewsQnaPrefix:Lcom/ebay/mobile/dcs/Dcs$ProductReviews$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "saa:"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string/jumbo v0, "saa:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTopProductsPrefix(Ljava/lang/String;)Z
    .locals 7

    .line 243
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Product$B;->tppSearchSupport:Lcom/ebay/mobile/dcs/Dcs$Product$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, " +"

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 252
    aget-object v0, p0, v1

    const-string/jumbo v2, "tppc:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p0, v1

    const-string/jumbo v2, "tppb:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 255
    :cond_1
    aget-object v0, p0, v1

    const-string/jumbo v2, "tppc:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 256
    aget-object v0, p0, v1

    const-string/jumbo v3, "tppc:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_2
    aget-object v0, p0, v1

    const-string/jumbo v3, "tppb:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 260
    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 262
    aget-object v3, p0, v4

    const-string/jumbo v5, "tppb:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    aget-object p0, p0, v4

    const-string/jumbo v2, "tppb:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 265
    :cond_3
    aget-object p0, p0, v4

    const-string/jumbo v0, "tppc:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_4
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;
    .locals 1

    .line 99
    const-class v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;
    .locals 1

    .line 99
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->$VALUES:[Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v0}, [Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    return-object v0
.end method
