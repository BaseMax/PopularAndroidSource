.class synthetic Lcom/ebay/mobile/activities/QuickSearchHandler$1;
.super Ljava/lang/Object;
.source "QuickSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/QuickSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 717
    invoke-static {}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->values()[Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->EBAY_ITEM_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_ID:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_QNA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->PRODUCT_REVIEW_SAA:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->TOP_PRODUCTS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/ebay/mobile/activities/QuickSearchHandler$1;->$SwitchMap$com$ebay$mobile$activities$QuickSearchHandler$SearchPrefix:[I

    sget-object v1, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ALL_OFFERS:Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
