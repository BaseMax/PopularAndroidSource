.class public abstract Lcom/ebay/common/net/api/search/SearchServiceResponse;
.super Lcom/ebay/nautilus/domain/net/EbayCosResponse;
.source "SearchServiceResponse.java"

# interfaces
.implements Lcom/ebay/common/net/api/search/ISearchTracking;
.implements Lcom/ebay/nautilus/kernel/net/IResponseHeaderHandler;


# static fields
.field protected static final COMPATIBILITY_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final ICON_MESSAGES_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final LABELED_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final LANDING_PAGE_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final MESSAGE_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final MOTOR_FINDER_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final QUERY_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final REGULAR_ITEM_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final REGULAR_ITEM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final RERWITE_ITEM_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final RERWITE_ITEM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final REWRITE_START_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field protected static final REWRITE_START_PATH_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected final dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "items\\.items\\.item\\[(\\d+)\\]"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->REGULAR_ITEM_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "items\\.rewrites\\.rewrite\\[(\\d+)\\]\\.result\\[(\\d+)\\]\\.item\\[(\\d+)\\]"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->RERWITE_ITEM_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "items\\.rewrites\\.rewrite\\[(\\d+)\\]\\.result\\[(\\d+)\\]"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->REWRITE_START_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.labeledItem\\.answer\\[(\\d+)\\]"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->LABELED_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.searchQuery\\.answer\\[(\\d+)\\]"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->QUERY_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.compatibleProduct\\.answer\\[(\\d+)\\]"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->COMPATIBILITY_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.motorAnswers\\.answer\\[(\\d+)\\]"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->MOTOR_FINDER_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.landingPage\\.answer\\[(\\d+)\\]"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->LANDING_PAGE_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.items\\.answer\\[(\\d+)\\]"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->REGULAR_ITEM_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.rewrites\\.rewrite\\[(\\d+)\\]\\.items\\.answer\\[(\\d+)\\]"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->RERWITE_ITEM_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.rewrites\\.rewrite\\[(\\d+)\\]"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->REWRITE_START_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.messages\\.answer\\[(\\d+)\\]"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->MESSAGE_ANSWER_PLATFORM_PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "answers\\.iconMessages\\.answer\\[(\\d+)\\]"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->ICON_MESSAGES_ANSWER_PATH_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lcom/ebay/nautilus/domain/net/EbayCosResponse;-><init>(Z)V

    .line 30
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchServiceResponse;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    return-void
.end method


# virtual methods
.method public abstract fill(Ljava/util/ArrayList;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getEligibleFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraintType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFitmentAnswers()Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;
.end method

.method public abstract getGuaranteedDeliveryDays()I
.end method

.method public abstract getItemConditionFilters()Lcom/ebay/common/model/search/EbayItemConditionHistogram;
.end method

.method public getItemLocationFilters()Lcom/ebay/common/model/search/EbayLocationFilterHistogram;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLayoutMetadata(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
.end method

.method public abstract getLayoutMetadataMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageMetadata()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
.end method

.method public abstract getPriceFilters()Lcom/ebay/common/model/search/EbayPriceFilterHistogram;
.end method

.method public abstract getRewrites(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/RewriteSrpListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSellerOffer()Lcom/ebay/common/model/search/SellerOffer;
.end method

.method public abstract getTotalCountWithDupes()I
.end method

.method public abstract hasEbayPlusToggle()Z
.end method

.method public abstract hasSaveSearchMessage()Z
.end method

.method public abstract isGuaranteedDeliveryEnabled()Z
.end method

.method public isMagEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
