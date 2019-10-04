.class public Lcom/ebay/common/view/DefaultItemAdapter;
.super Lcom/ebay/common/view/ItemAdapter;
.source "DefaultItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/ebay/nautilus/domain/data/EbaySearchListItem;",
        ">",
        "Lcom/ebay/common/view/ItemAdapter<",
        "TItem;>;"
    }
.end annotation


# static fields
.field public static final AUCTION_END_WARNING_TIME:J = 0x36ee80L

.field protected static final DAY:J = 0x5265c00L

.field protected static final HOUR:J = 0x36ee80L

.field protected static final SECOND:J = 0x3e8L

.field protected static final YEAR:J = 0x757b12c00L

.field private static final currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private final binOrBestOffer:Landroid/text/Spannable;

.field protected final buyingFormat:I

.field protected final colorPriceSold:I

.field protected final colorPriceUnsold:I

.field protected final colorPrimary:I

.field protected final colorSecondary:I

.field protected final colorShippingFree:I

.field protected final colorTimeWarning:I

.field private final context:Landroid/content/Context;

.field protected final distinguishRecentlyViewed:Z

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final numberGridColumns:I

.field private final recentlyViewedBackgroundResId:I

.field private final recentlyViewedColorResId:I

.field protected final showFreeShipping:Z

.field protected final showShipping:Z

.field private final standardItemBackgroundResId:I

.field protected final strDays:Ljava/lang/String;

.field protected final strHours:Ljava/lang/String;

.field protected final strMinutes:Ljava/lang/String;

.field protected final strSeconds:Ljava/lang/String;

.field private final useLargeImages:Z

.field private userCurrencyCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 86
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "CurrencyConversion"

    const-string v2, "Log CurrencyConversion"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(TA;ZZZ)V"
        }
    .end annotation

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 92
    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/view/DefaultItemAdapter;-><init>(Landroid/app/Activity;ZZZIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZZIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(TA;ZZZIZ)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/common/view/ItemAdapter;-><init>(Landroid/content/res/Resources;)V

    .line 101
    iput-object p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->context:Landroid/content/Context;

    .line 102
    move-object v0, p1

    check-cast v0, Lcom/ebay/nautilus/shell/app/FwContext;

    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwContext;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 103
    iput-boolean p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->useLargeImages:Z

    const p6, 0x1010038

    .line 105
    invoke-static {p1, p6}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    .line 106
    invoke-static {p1, p6}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result p6

    iput p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorShippingFree:I

    const p6, 0x1010036

    .line 107
    invoke-static {p1, p6}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result p6

    iput p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorPrimary:I

    const p6, 0x7f04015a

    const v0, 0x7f0601a2

    .line 108
    invoke-static {p1, p6, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result p6

    iput p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorPriceSold:I

    const p6, 0x7f0601d9

    const v0, 0x7f040156

    .line 109
    invoke-static {p1, v0, p6}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorPriceUnsold:I

    .line 110
    invoke-static {p1, v0, p6}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result p6

    iput p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorTimeWarning:I

    .line 112
    iget-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v0, 0x7f120002

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strDays:Ljava/lang/String;

    .line 113
    iget-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v0, 0x7f120005

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strHours:Ljava/lang/String;

    .line 114
    iget-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v0, 0x7f120008

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strMinutes:Ljava/lang/String;

    .line 115
    iget-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v0, 0x7f12000b

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strSeconds:Ljava/lang/String;

    .line 116
    iput-boolean p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->showShipping:Z

    .line 117
    iput-boolean p3, p0, Lcom/ebay/common/view/DefaultItemAdapter;->showFreeShipping:Z

    .line 118
    iput-boolean p4, p0, Lcom/ebay/common/view/DefaultItemAdapter;->distinguishRecentlyViewed:Z

    .line 119
    iput p5, p0, Lcom/ebay/common/view/DefaultItemAdapter;->buyingFormat:I

    .line 120
    invoke-direct {p0}, Lcom/ebay/common/view/DefaultItemAdapter;->getBinOrBestOfferText()Landroid/text/Spannable;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->binOrBestOffer:Landroid/text/Spannable;

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 123
    iget-object p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0402fa

    invoke-static {p1, p2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->recentlyViewedBackgroundResId:I

    .line 124
    iget-object p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0403b5

    invoke-static {p1, p2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->standardItemBackgroundResId:I

    .line 125
    iget-object p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0402fb

    invoke-static {p1, p2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->recentlyViewedColorResId:I

    .line 127
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->userCurrencyCode:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/ebay/mobile/search/SearchUtil;->getSearchResultsGridColumns(Landroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->numberGridColumns:I

    return-void
.end method

.method private computeListViewBackgroundResId(I)I
    .locals 3

    .line 367
    iget v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->numberGridColumns:I

    const v1, 0x7f0803a9

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    const p1, 0x7f080434

    return p1

    :cond_1
    return v1
.end method

.method private getBinOrBestOfferText()Landroid/text/Spannable;
    .locals 8

    .line 717
    iget-object v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->context:Landroid/content/Context;

    const v1, 0x1010038

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 721
    iget-object v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v2, 0x7f1202cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 722
    iget-object v2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v3, 0x7f1208b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 725
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    .line 727
    new-instance v6, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 728
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {v6, v2, v3, v5, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 730
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v6, v2, v3, v5, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 732
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v1, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {v6, v2, v3, v5, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v6
.end method

.method private getConvertedPrice(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 5

    if-eqz p1, :cond_7

    .line 640
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 645
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->userCurrencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_1
    move-object p2, p1

    .line 655
    :cond_2
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    .line 658
    iget-object v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->userCurrencyCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 662
    :cond_3
    iget-object v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->userCurrencyCode:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/ebay/common/CurrencyConversionCache;->getConversionRate(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object v1

    .line 664
    sget-object v2, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_4

    .line 665
    sget-object v2, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConvertedPrice query rate for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->userCurrencyCode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 667
    iget-boolean v0, v1, Lcom/ebay/common/model/currency/CurrencyConversionRate;->isExchangeRateAvailable:Z

    if-eqz v0, :cond_5

    .line 669
    new-instance p2, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {p2, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 671
    iget-object p1, v1, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->multiplyBy(Ljava/math/BigDecimal;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object p1

    .line 672
    new-instance p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->userCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getValueAsDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget-object p1, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_6

    .line 675
    sget-object p1, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_5
    sget-object p1, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_6

    .line 678
    sget-object p1, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "Not found or not available"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-object p2

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOrBuyItNowText(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 7

    .line 738
    iget v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    .line 742
    iget-object v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v2, 0x7f1208b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 744
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 745
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    .line 747
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 748
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {v5, v1, v2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 750
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v5, v1, v2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 752
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {v5, v1, v2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v5
.end method

.method private getPriceSpannable(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;Z)Landroid/text/Spannable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TItem;Z)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->context:Landroid/content/Context;

    const v1, 0x1010038

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result v0

    or-int/lit8 v1, p4, 0x2

    .line 774
    :try_start_0
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->unitPriceQuantity:Ljava/lang/String;

    .line 775
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 776
    invoke-static {p1, v2, v3, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Ljava/lang/String;DI)Ljava/lang/String;

    move-result-object p1

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->unitPriceType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 780
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    add-int/2addr p3, v1

    .line 781
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    .line 783
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    if-eqz p4, :cond_0

    .line 785
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 p4, 0x3

    invoke-direct {v3, p4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 787
    :cond_0
    new-instance p4, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 788
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 789
    invoke-interface {p4, v3, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 790
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, p2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPriceSpannableAuctionWithBin(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;Z)Landroid/text/Spannable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TItem;Z)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->context:Landroid/content/Context;

    const v1, 0x1010038

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result v0

    or-int/lit8 v1, p4, 0x2

    if-eqz p4, :cond_0

    .line 819
    :try_start_0
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_0

    :cond_0
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 821
    :goto_0
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->unitPriceQuantity:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 822
    invoke-static {p1, v2, v3, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Ljava/lang/String;DI)Ljava/lang/String;

    move-result-object p1

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->unitPriceType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 826
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    add-int/2addr p3, v1

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    .line 829
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    if-eqz p4, :cond_1

    .line 831
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 p4, 0x3

    invoke-direct {v3, p4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 833
    :cond_1
    new-instance p4, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 834
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 835
    invoke-interface {p4, v3, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 836
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, p2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isUnitPriceAvailable(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .line 495
    iget v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->listingType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->listingType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->listingType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->unitPriceQuantity:Ljava/lang/String;

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->unitPriceType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyCurrencyConversion(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 512
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->userCurrencyCode:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/ebay/common/CurrencyConversionCache;->willFetch(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private resolveImageUrl(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 211
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->imageUrl:Ljava/lang/String;

    .line 213
    iget-boolean v1, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isFromSaaS:Z

    if-nez v1, :cond_1

    .line 215
    iget-boolean v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->useLargeImages:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->superSizeImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->superSizeImageUrl:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->useLargeImages:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->masterImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->masterImageUrl:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private setItemPricing(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/view/ViewCache;",
            "TItem;)Z"
        }
    .end annotation

    .line 384
    invoke-direct {p0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->isUnitPriceAvailable(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 388
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->unitPriceQuantity:Ljava/lang/String;

    invoke-static {v2}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->parseApiValue(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move v9, v0

    .line 393
    :goto_0
    iget v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->listingType:I

    const v2, 0x7f1206a6

    const/4 v11, 0x1

    const/16 v12, 0x8

    packed-switch v0, :pswitch_data_0

    .line 456
    :pswitch_0
    iget-object v4, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object v3, p0

    move v7, v9

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/ebay/common/view/DefaultItemAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v3

    .line 458
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isEbn:Z

    if-nez v0, :cond_11

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isInStorePickup:Z

    if-nez v0, :cond_11

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isPickupAndDropOff:Z

    if-eqz v0, :cond_10

    goto/16 :goto_6

    .line 439
    :pswitch_1
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "MAP"

    .line 442
    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->pricingTreatment:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v3, "STP"

    .line 443
    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->pricingTreatment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    const/4 v11, 0x0

    .line 445
    :cond_4
    :goto_1
    iget-object v4, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object v3, p0

    move v7, v9

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/ebay/common/view/DefaultItemAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v3

    .line 447
    iget-boolean v4, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isEbn:Z

    if-nez v4, :cond_6

    iget-boolean v4, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isInStorePickup:Z

    if-nez v4, :cond_6

    iget-boolean v4, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isPickupAndDropOff:Z

    if-eqz v4, :cond_5

    goto :goto_2

    .line 451
    :cond_5
    iget-object v4, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v4, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 448
    :cond_6
    :goto_2
    iget-object v2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 396
    :pswitch_2
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowAvailable:Z

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_a

    :cond_7
    iget v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->buyingFormat:I

    and-int/2addr v0, v11

    if-nez v0, :cond_a

    .line 399
    iget-object v4, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object v3, p0

    move v7, v9

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/ebay/common/view/DefaultItemAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v3

    .line 401
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isEbn:Z

    if-nez v0, :cond_9

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isInStorePickup:Z

    if-nez v0, :cond_9

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isPickupAndDropOff:Z

    if-eqz v0, :cond_8

    goto :goto_3

    .line 405
    :cond_8
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 402
    :cond_9
    :goto_3
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_a
    :pswitch_3
    if-eqz v9, :cond_c

    .line 412
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowAvailable:Z

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_b

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_c

    .line 415
    :cond_b
    iget-object v4, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v8, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object v3, p0

    move-object v10, p2

    invoke-virtual/range {v3 .. v10}, Lcom/ebay/common/view/DefaultItemAdapter;->setCurrencyWithBaseUnitPriceAuctionWithBin(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v0

    goto :goto_4

    .line 420
    :cond_c
    iget-object v3, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ebay/common/view/DefaultItemAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v0

    :goto_4
    move v3, v0

    .line 423
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isEbn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isInStorePickup:Z

    if-nez v0, :cond_f

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isPickupAndDropOff:Z

    if-eqz v0, :cond_d

    goto :goto_5

    .line 427
    :cond_d
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->buyItNowAvailable:Z

    const v2, 0x7f10003b

    if-eqz v0, :cond_e

    .line 429
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    iget v5, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->bidCount:I

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->bidCount:I

    .line 430
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 429
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ebay/common/view/DefaultItemAdapter;->getOrBuyItNowText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 432
    :cond_e
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    iget v5, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->bidCount:I

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->bidCount:I

    .line 433
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 432
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 424
    :cond_f
    :goto_5
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 462
    :cond_10
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 459
    :cond_11
    :goto_6
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_8
    if-eqz v0, :cond_12

    .line 470
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    const v2, 0x7f1206fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_12
    if-eqz v11, :cond_13

    .line 473
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/ebay/common/view/DefaultItemAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Z

    .line 474
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 477
    :cond_13
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :goto_9
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->bestOfferEnabled:Z

    if-eqz v0, :cond_16

    .line 481
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isEbn:Z

    if-nez v0, :cond_15

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isInStorePickup:Z

    if-nez v0, :cond_15

    iget-boolean p2, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isPickupAndDropOff:Z

    if-eqz p2, :cond_14

    goto :goto_a

    .line 485
    :cond_14
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->binOrBestOffer:Landroid/text/Spannable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 482
    :cond_15
    :goto_a
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {p1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_16
    :goto_b
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setShippingLabel(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/view/ViewCache;",
            "TItem;Z)V"
        }
    .end annotation

    or-int/lit8 v0, p3, 0x2

    .line 229
    invoke-virtual {p0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->showEbayNowLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 231
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-static {}, Lcom/ebay/mobile/common/LocalUtil;->getEbayNowResourceForCountry()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    iget p3, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 235
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->showPickupDropOffLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-static {}, Lcom/ebay/mobile/common/LocalUtil;->getPudoResourceForCountry()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    iget p3, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 241
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->showInStorePickupLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-static {}, Lcom/ebay/mobile/common/LocalUtil;->getInStorePickupResourceForCountry()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    iget p3, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 247
    :cond_2
    invoke-virtual {p0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->showLocalPickupLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const p3, 0x7f120084

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    iget p3, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 253
    :cond_3
    iget-boolean v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->showShipping:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 258
    :try_start_0
    iget v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    .line 260
    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 261
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-static {p2}, Lcom/ebay/nautilus/domain/EbayCurrency;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object p2

    .line 263
    invoke-virtual {p2, v4, v5}, Lcom/ebay/nautilus/domain/EbayCurrency;->isInsignificant(D)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 265
    iget-boolean p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->showFreeShipping:Z

    if-eqz p2, :cond_4

    .line 268
    iget v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorShippingFree:I

    .line 269
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const p3, 0x7f12052e

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 p3, 0x0

    goto :goto_2

    .line 273
    :cond_4
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_5
    invoke-static {p2, v4, v5, v0}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/EbayCurrency;DI)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_6

    .line 284
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    goto :goto_1

    :cond_6
    const/4 p3, 0x0

    .line 286
    :goto_1
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :goto_2
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 289
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 294
    :catch_0
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 298
    :cond_7
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public init(Lcom/ebay/common/view/ViewCache;)V
    .locals 2

    .line 134
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->text:Landroid/widget/TextView;

    iget v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    iget v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 138
    invoke-super {p0, p1}, Lcom/ebay/common/view/ItemAdapter;->init(Lcom/ebay/common/view/ViewCache;)V

    return-void
.end method

.method public markItemAsVisited(Landroid/view/View;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;)V"
        }
    .end annotation

    const v0, 0x7f0a07d1

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 195
    iget-boolean v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->distinguishRecentlyViewed:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ebay/mobile/search/LruVisitedItemCache;->get()Lcom/ebay/common/util/LruHistoryCache;

    move-result-object v1

    iget-wide v2, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ebay/common/util/LruHistoryCache;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 197
    iget p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->recentlyViewedBackgroundResId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v0, :cond_1

    .line 199
    iget p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->recentlyViewedColorResId:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 203
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v0, :cond_1

    .line 205
    iget p1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->standardItemBackgroundResId:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic markItemAsVisited(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->markItemAsVisited(Landroid/view/View;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)V

    return-void
.end method

.method public refresh(Landroid/widget/AbsListView;)V
    .locals 10

    .line 145
    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v0

    .line 146
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 149
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 152
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/view/ViewCache;

    if-nez v5, :cond_1

    goto :goto_2

    .line 155
    :cond_1
    iget-object v6, v5, Lcom/ebay/common/view/ViewCache;->object:Ljava/lang/Object;

    check-cast v6, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    if-nez v6, :cond_2

    goto :goto_2

    .line 159
    :cond_2
    iget-boolean v7, v5, Lcom/ebay/common/view/ViewCache;->isCurrencyConversionPending:Z

    if-eqz v7, :cond_4

    .line 161
    sget-object v7, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v7, v7, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v7, :cond_3

    .line 162
    sget-object v7, Lcom/ebay/common/view/DefaultItemAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "refresh - found pending currency item: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 164
    :cond_3
    invoke-direct {p0, v6}, Lcom/ebay/common/view/DefaultItemAdapter;->notifyCurrencyConversion(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/ebay/common/view/ViewCache;->isCurrencyConversionPending:Z

    .line 165
    iget-boolean v7, v5, Lcom/ebay/common/view/ViewCache;->isCurrencyConversionPending:Z

    if-nez v7, :cond_4

    .line 166
    invoke-direct {p0, v5, v6}, Lcom/ebay/common/view/DefaultItemAdapter;->setItemPricing(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    .line 169
    :cond_4
    iget-boolean v7, v6, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isEbn:Z

    if-nez v7, :cond_6

    iget-boolean v7, v6, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isInStorePickup:Z

    if-nez v7, :cond_6

    iget-boolean v7, v6, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isPickupAndDropOff:Z

    if-eqz v7, :cond_5

    goto :goto_1

    .line 173
    :cond_5
    iget-object v7, v5, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v5, v5, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->endDate:Ljava/util/Date;

    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/ebay/common/view/DefaultItemAdapter;->setTimeLeft(Landroid/widget/TextView;Ljava/util/Date;J)V

    goto :goto_2

    .line 170
    :cond_6
    :goto_1
    iget-object v5, v5, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public refresh(Landroid/widget/ExpandableListView;)V
    .locals 0

    return-void
.end method

.method protected setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 522
    invoke-virtual/range {v0 .. v5}, Lcom/ebay/common/view/DefaultItemAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result p1

    return p1
.end method

.method protected setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "ZTItem;)Z"
        }
    .end annotation

    .line 530
    invoke-direct {p0, p2, p3}, Lcom/ebay/common/view/DefaultItemAdapter;->getConvertedPrice(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 534
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x2

    or-int/2addr v1, v3

    .line 538
    iget-object v4, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    iget-object v5, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v1}, Lcom/ebay/common/view/DefaultItemAdapter;->formatCurrency(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 549
    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-direct {p0, p3, v1, p5, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->getPriceSpannable(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;Z)Landroid/text/Spannable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 554
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 555
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 558
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method protected setCurrencyWithBaseUnitPriceAuctionWithBin(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "ZTItem;)Z"
        }
    .end annotation

    .line 573
    invoke-direct {p0, p2, p3}, Lcom/ebay/common/view/DefaultItemAdapter;->getConvertedPrice(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 577
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x2

    or-int/2addr v1, v3

    .line 581
    iget-object v4, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {p0, v4, p3, v1}, Lcom/ebay/common/view/DefaultItemAdapter;->formatCurrency(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x2

    :cond_1
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 594
    invoke-direct {p0, p4, p5}, Lcom/ebay/common/view/DefaultItemAdapter;->getConvertedPrice(Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 598
    iget-object p6, p5, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    iget-object p4, p4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 599
    iget-object p5, p5, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-direct {p0, p5, p3, p7, p4}, Lcom/ebay/common/view/DefaultItemAdapter;->getPriceSpannableAuctionWithBin(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;Z)Landroid/text/Spannable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 605
    sget-object p4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 606
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 609
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/view/ViewCache;",
            "TItem;)V"
        }
    .end annotation

    .line 504
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/view/ViewCache;",
            "TItem;I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-direct {p0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->notifyCurrencyConversion(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/ebay/common/view/ViewCache;->isCurrencyConversionPending:Z

    .line 309
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    invoke-direct {p0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->resolveImageUrl(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 311
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->eekRating:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->specialText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->specialText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ebay/common/view/DefaultItemAdapter;->resources:Landroid/content/res/Resources;

    const v5, 0x7f12004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->eekRating:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->specialText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :goto_0
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->text:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isEbn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isInStorePickup:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->isPickupAndDropOff:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 328
    :cond_2
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->endDate:Ljava/util/Date;

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ebay/common/view/DefaultItemAdapter;->setTimeLeft(Landroid/widget/TextView;Ljava/util/Date;J)V

    goto :goto_2

    .line 325
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :goto_2
    iget v0, p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->sellingState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 339
    :pswitch_0
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorPriceUnsold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 336
    :pswitch_1
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorPriceSold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->setItemPricing(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z

    move-result v0

    .line 347
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/common/view/DefaultItemAdapter;->setShippingLabel(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;Z)V

    .line 350
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->markItemAsVisited(Landroid/view/View;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)V

    .line 353
    iget-boolean p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->useLargeImages:Z

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rootCellLayout:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 354
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rootCellLayout:Landroid/view/View;

    invoke-direct {p0, p3}, Lcom/ebay/common/view/DefaultItemAdapter;->computeListViewBackgroundResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setItem(Lcom/ebay/common/view/ViewCache;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/DefaultItemAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)V

    return-void
.end method

.method public bridge synthetic setItem(Lcom/ebay/common/view/ViewCache;Ljava/lang/Object;I)V
    .locals 0

    .line 50
    check-cast p2, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/view/DefaultItemAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;I)V

    return-void
.end method

.method protected setTimeLeft(Landroid/widget/TextView;Ljava/util/Date;J)V
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    .line 686
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long p2, v2, p3

    goto :goto_0

    :cond_0
    move-wide p2, v0

    :goto_0
    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 687
    iget v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorTimeWarning:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/ebay/common/view/DefaultItemAdapter;->colorSecondary:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-wide v0, 0x757b12c00L

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    const/4 p2, 0x0

    .line 689
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    if-lez p4, :cond_6

    const-wide/16 v0, 0x3e8

    .line 692
    div-long/2addr p2, v0

    const-wide/16 v0, 0x3c

    .line 693
    rem-long v2, p2, v0

    long-to-int p4, v2

    .line 694
    div-long/2addr p2, v0

    .line 695
    rem-long v2, p2, v0

    long-to-int v2, v2

    .line 696
    div-long/2addr p2, v0

    const-wide/16 v0, 0x18

    .line 697
    rem-long v3, p2, v0

    long-to-int v3, v3

    .line 698
    div-long/2addr p2, v0

    long-to-int p2, p2

    .line 700
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x20

    if-lez p2, :cond_3

    .line 702
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strDays:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strHours:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    .line 704
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strHours:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strMinutes:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    .line 706
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strMinutes:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strSeconds:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 708
    :cond_5
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/common/view/DefaultItemAdapter;->strSeconds:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :goto_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    const p2, 0x7f12045e

    .line 712
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void
.end method

.method protected showEbayNowLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected showInStorePickupLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected showLocalPickupLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected showPickupDropOffLabel(Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
