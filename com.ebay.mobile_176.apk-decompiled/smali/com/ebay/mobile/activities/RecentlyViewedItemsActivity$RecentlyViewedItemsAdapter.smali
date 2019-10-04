.class Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecentlyViewedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentlyViewedItemsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/ebay/nautilus/domain/data/EbayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final binOrBestOffer:Landroid/text/Spannable;

.field protected final buyingFormat:I

.field protected final colorEekInfo:I

.field protected final colorPriceSold:I

.field protected final colorPriceUnsold:I

.field protected final colorShippingFree:I

.field protected final colorTextDefault:I

.field protected final colorTimeWarning:I

.field private final eekInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final resources:Landroid/content/res/Resources;

.field protected final showFreeShipping:Z

.field protected final showShipping:Z

.field protected final strDays:Ljava/lang/String;

.field protected final strHours:Ljava/lang/String;

.field protected final strMinutes:Ljava/lang/String;

.field protected final strSeconds:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/EbayItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    const p1, 0x7f0d00fc

    .line 450
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 451
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 452
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    .line 454
    iput-object p4, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->eekInfoMap:Ljava/util/Map;

    const p1, 0x1010036

    .line 456
    invoke-static {p2, p1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorTextDefault:I

    .line 457
    invoke-static {p2, p1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorShippingFree:I

    .line 458
    invoke-virtual {p2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x7f040160

    const p4, 0x7f0601ce

    .line 460
    invoke-static {p2, p3, p4}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result p3

    iput p3, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorPriceSold:I

    const p3, 0x7f040156

    const p4, 0x7f0601d9

    .line 461
    invoke-static {p2, p3, p4}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorPriceUnsold:I

    .line 462
    iget p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorPriceUnsold:I

    iput p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorTimeWarning:I

    .line 463
    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const p3, 0x7f0601a0

    invoke-static {p2, p3, p1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorEekInfo:I

    .line 465
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const p2, 0x7f120002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strDays:Ljava/lang/String;

    .line 466
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const p2, 0x7f120005

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strHours:Ljava/lang/String;

    .line 467
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const p2, 0x7f120008

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strMinutes:Ljava/lang/String;

    .line 468
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const p2, 0x7f12000b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strSeconds:Ljava/lang/String;

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->showShipping:Z

    .line 470
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->showFreeShipping:Z

    const/4 p1, 0x7

    .line 471
    iput p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->buyingFormat:I

    .line 472
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getBinOrBestOfferText()Landroid/text/Spannable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->binOrBestOffer:Landroid/text/Spannable;

    return-void
.end method

.method private convertListingType(Lcom/ebay/nautilus/domain/data/EbayItem;)I
    .locals 1

    .line 529
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/EbayItem;->isBidWithBinAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/EbayItem;->isBinOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    return p1

    .line 533
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/EbayItem;->isListingTypeBid()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getBinOrBestOfferText()Landroid/text/Spannable;
    .locals 8

    .line 817
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 821
    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const v2, 0x7f1202cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 822
    iget-object v2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const v3, 0x7f1208b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 824
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 825
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    .line 827
    new-instance v6, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 828
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {v6, v2, v3, v5, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 830
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v6, v2, v3, v5, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 832
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v1, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {v6, v2, v3, v5, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v6
.end method

.method private getOrBuyItNowText(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 7

    .line 838
    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorTextDefault:I

    .line 842
    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    const v2, 0x7f1208b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 845
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    .line 847
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 848
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {v5, v1, v2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 850
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v5, v1, v2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 852
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {v5, v1, v2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v5
.end method

.method private getPriceSpannable(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbayItem;Z)Landroid/text/Spannable;
    .locals 5

    .line 868
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 872
    :try_start_0
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->unitPriceQuantity:Ljava/lang/String;

    .line 873
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    div-double/2addr v1, v3

    .line 874
    invoke-static {p1, v1, v2, p4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Ljava/lang/String;DI)Ljava/lang/String;

    move-result-object p1

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->unitPriceType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 879
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    add-int/2addr p3, v1

    .line 880
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    .line 882
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    if-eqz p4, :cond_0

    .line 884
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 p4, 0x3

    invoke-direct {v3, p4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 886
    :cond_0
    new-instance p4, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 887
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 888
    invoke-interface {p4, v3, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 889
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, p2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p1

    const-string p2, "SearchResultListAdapter"

    const-string p3, "getPriceSpannable exception"

    .line 894
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPriceSpannableAuctionWithBin(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbayItem;Z)Landroid/text/Spannable;
    .locals 5

    .line 913
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeForegroundColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz p4, :cond_0

    .line 917
    :try_start_0
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 919
    :goto_0
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->unitPriceQuantity:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    div-double/2addr v1, v3

    .line 920
    invoke-static {p1, v1, v2, p4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Ljava/lang/String;DI)Ljava/lang/String;

    move-result-object p1

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/ebay/nautilus/domain/data/EbayItem;->unitPriceType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 925
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    add-int/2addr p3, v1

    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    .line 928
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    if-eqz p4, :cond_1

    .line 930
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 p4, 0x3

    invoke-direct {v3, p4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 932
    :cond_1
    new-instance p4, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 933
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 934
    invoke-interface {p4, v3, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 935
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, p2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {p4, p1, p3, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :goto_1
    const-string p2, "SearchResultListAdapter"

    const-string p3, "getPriceSpannable exception"

    .line 940
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/EbayItem;

    .line 479
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->eekInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->eekInfoMap:Ljava/util/Map;

    iget-wide v1, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 484
    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00fc

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 485
    new-instance p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;

    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->id:J

    invoke-direct {p3, p2, v2, v3}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;-><init>(Landroid/view/View;J)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;

    .line 490
    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->id:J

    iput-wide v2, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->itemId:J

    .line 493
    :goto_1
    invoke-virtual {p0, p3, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbayItem;)V

    .line 495
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->galleryUrl:Ljava/lang/String;

    .line 496
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->pictureUrls:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->pictureUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 499
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->pictureUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    :cond_2
    iget-object v3, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {v3, v2}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 504
    iget-object v2, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->text:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 508
    iget-object v2, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->specialText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->specialText:Landroid/widget/TextView;

    iget v2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorEekInfo:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    iget-object v0, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->specialText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 513
    :cond_3
    iget-object v0, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->specialText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    :goto_2
    iput-object p1, p3, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->object:Ljava/lang/Object;

    .line 517
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x1080062

    .line 520
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 521
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102f0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    iget p1, p3, Landroid/util/TypedValue;->resourceId:I

    .line 523
    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p2
.end method

.method public refresh(Landroid/widget/ListView;)V
    .locals 6

    .line 948
    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v0

    .line 949
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 952
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 955
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/view/ViewCache;

    if-nez v4, :cond_1

    goto :goto_1

    .line 958
    :cond_1
    iget-object v5, v4, Lcom/ebay/common/view/ViewCache;->object:Ljava/lang/Object;

    check-cast v5, Lcom/ebay/nautilus/domain/data/EbayItem;

    if-nez v5, :cond_2

    goto :goto_1

    .line 961
    :cond_2
    iget-object v4, v4, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/EbayItem;->endDate:Ljava/util/Date;

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setTimeLeft(Landroid/widget/TextView;Ljava/util/Date;J)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbayItem;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 698
    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {p3, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object p2, p3

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 700
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_6

    .line 708
    iget-object p3, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->formatCurrency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    const/4 v0, 0x2

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 718
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p5, v1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getPriceSpannable(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbayItem;Z)Landroid/text/Spannable;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    .line 722
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 723
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 726
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 729
    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return v1
.end method

.method protected setCurrencyWithBaseUnitPriceAuctionWithBin(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbayItem;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 737
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 738
    invoke-virtual {p3, p2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object p2, p3

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 739
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_9

    .line 747
    iget-object p3, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {p3, v4, p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->formatCurrency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    const/4 p3, 0x2

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    :goto_2
    if-eqz p6, :cond_7

    if-eqz p7, :cond_7

    if-eqz p5, :cond_4

    .line 758
    iget-object p6, p5, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz p6, :cond_4

    iget-object p6, p5, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz p6, :cond_4

    .line 759
    invoke-virtual {p5, p4}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    move-object p4, p5

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_6

    .line 760
    iget-object p5, p4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz p5, :cond_6

    iget-object p5, p4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz p5, :cond_6

    goto :goto_3

    :cond_6
    move-object p4, v3

    :goto_3
    if-eqz p4, :cond_7

    .line 767
    iget-object p4, p4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-direct {p0, p4, p2, p7, v0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getPriceSpannableAuctionWithBin(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/EbayItem;Z)Landroid/text/Spannable;

    move-result-object v3

    :cond_7
    if-nez v3, :cond_8

    .line 772
    sget-object p4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p4, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 773
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 776
    :cond_8
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 779
    :cond_9
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return v2
.end method

.method public setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbayItem;)V
    .locals 12

    .line 543
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->imageUrl:Ljava/lang/String;

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->masterImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->masterImageUrl:Ljava/lang/String;

    const-string v1, "_26"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/net/image/ConstructDipUrl;->constructDynamicUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_0
    iget-object v1, p1, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {v1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 551
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->text:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->endDate:Ljava/util/Date;

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setTimeLeft(Landroid/widget/TextView;Ljava/util/Date;J)V

    .line 553
    iget v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->sellingState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 559
    :pswitch_0
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorPriceUnsold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorPriceSold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    :goto_0
    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->convertListingType(Lcom/ebay/nautilus/domain/data/EbayItem;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 565
    :cond_1
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->unitPriceQuantity:Ljava/lang/String;

    .line 568
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->unitPriceType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 573
    :try_start_0
    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->unitPriceQuantity:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    const/4 v1, 0x0

    :catch_0
    :cond_3
    move v8, v1

    const v1, 0x7f1206a6

    packed-switch v0, :pswitch_data_1

    .line 627
    :pswitch_2
    iget-object v5, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbayItem;)Z

    move-result v2

    .line 629
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 617
    :pswitch_3
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "MAP"

    .line 620
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->pricingTreatment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 622
    :goto_3
    iget-object v5, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object v4, p0

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbayItem;)Z

    move-result v2

    .line 624
    iget-object v4, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 587
    :pswitch_4
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowAvailable:Z

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->buyingFormat:I

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 590
    iget-object v5, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object v4, p0

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbayItem;)Z

    move-result v2

    .line 592
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    :pswitch_5
    if-eqz v8, :cond_8

    .line 597
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowAvailable:Z

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_8

    .line 600
    :cond_7
    iget-object v5, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v8, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v9, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v10, 0x1

    move-object v4, p0

    move-object v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setCurrencyWithBaseUnitPriceAuctionWithBin(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbayItem;)Z

    move-result v0

    goto :goto_4

    .line 605
    :cond_8
    iget-object v5, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v7, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->setCurrency(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;ZLcom/ebay/nautilus/domain/data/EbayItem;)Z

    move-result v0

    .line 608
    :goto_4
    iget-boolean v1, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->buyItNowAvailable:Z

    const v4, 0x7f10003b

    if-eqz v1, :cond_9

    .line 609
    iget-object v1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    iget v6, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->bidCount:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->bidCount:I

    .line 610
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    .line 609
    invoke-virtual {v5, v4, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->getOrBuyItNowText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 612
    :cond_9
    iget-object v1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->resources:Landroid/content/res/Resources;

    iget v6, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->bidCount:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->bidCount:I

    .line 613
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    .line 612
    invoke-virtual {v5, v4, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    move v2, v0

    goto/16 :goto_2

    :goto_6
    if-eqz v0, :cond_a

    .line 634
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    const v1, 0x7f1206fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 637
    :cond_a
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    iget-boolean v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->bestOfferEnabled:Z

    if-eqz v0, :cond_b

    .line 640
    iget-object v0, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->binOrBestOffer:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_b
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shippingType:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shippingType:Ljava/lang/String;

    const-string v1, "FreePickup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shipToLocation:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shipToLocation:Ljava/lang/String;

    const-string v1, "None"

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 646
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const v0, 0x7f120084

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 647
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    iget p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorTextDefault:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 649
    :cond_c
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->showShipping:Z

    if-eqz v0, :cond_10

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_10

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 654
    :try_start_1
    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorTextDefault:I

    .line 656
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v4, v6

    if-gez v1, :cond_e

    .line 660
    iget-boolean p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->showFreeShipping:Z

    if-eqz p2, :cond_d

    .line 662
    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorShippingFree:I

    .line 663
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const v1, 0x7f12052e

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 666
    :cond_d
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 670
    :cond_e
    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->formatCurrency(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_f

    const/4 v1, 0x2

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    .line 676
    :cond_f
    iget-object v1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :goto_7
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 679
    iget-object p2, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 683
    :catch_1
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 687
    :cond_10
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setTimeLeft(Landroid/widget/TextView;Ljava/util/Date;J)V
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    .line 785
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

    .line 786
    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorTimeWarning:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->colorTextDefault:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-wide v0, 0x757b12c00L

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    const/4 p2, 0x0

    .line 789
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    if-lez p4, :cond_6

    const-wide/16 v0, 0x3e8

    .line 792
    div-long/2addr p2, v0

    const-wide/16 v0, 0x3c

    .line 793
    rem-long v2, p2, v0

    long-to-int p4, v2

    .line 794
    div-long/2addr p2, v0

    .line 795
    rem-long v2, p2, v0

    long-to-int v2, v2

    .line 796
    div-long/2addr p2, v0

    const-wide/16 v0, 0x18

    .line 797
    rem-long v3, p2, v0

    long-to-int v3, v3

    .line 798
    div-long/2addr p2, v0

    long-to-int p2, p2

    .line 800
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x20

    if-lez p2, :cond_3

    .line 802
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strDays:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strHours:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    .line 804
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strHours:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strMinutes:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    .line 806
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strMinutes:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strSeconds:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 808
    :cond_5
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->strSeconds:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :goto_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    const p2, 0x7f12045e

    .line 812
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void
.end method
