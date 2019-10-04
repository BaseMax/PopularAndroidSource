.class public Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;
.super Ljava/lang/Object;
.source "GoogleTextAdLoader.java"


# static fields
.field public static adQueryOverride:Ljava/lang/String;


# instance fields
.field private final BASE_CHANNEL_ID:Ljava/lang/String;

.field private final CHANNEL_SEPARATOR:Ljava/lang/String;

.field public logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private textAdView:Lcom/google/android/gms/ads/search/SearchAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    .line 40
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->BASE_CHANNEL_ID:Ljava/lang/String;

    const-string v0, "+"

    .line 41
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->CHANNEL_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    return-void
.end method

.method private getCssWidth(Landroid/content/Context;Landroid/view/ViewGroup;)I
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701cf

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 125
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    if-gtz v1, :cond_1

    .line 128
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int v1, p2, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    int-to-float p2, v1

    .line 134
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    div-float/2addr p2, p1

    float-to-int p1, p2

    add-int/lit8 p1, p1, -0x2

    return p1
.end method


# virtual methods
.method public buildAdUnitId(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 146
    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->UK:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p2, p2, Lcom/ebay/nautilus/domain/EbaySite;->name:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 150
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->CAFR:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->FRBE:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->NLBE:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    iget-object p2, p2, Lcom/ebay/nautilus/domain/EbaySite;->id:Ljava/lang/String;

    invoke-static {p2}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p2

    iget-object p2, p2, Lcom/ebay/nautilus/domain/EbaySite;->localeCountry:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 152
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/ebay/nautilus/domain/EbaySite;->localeCountry:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/EbaySite;->localeLanguage:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string v0, "000srp"

    .line 162
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobile-app-ebay-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string/jumbo p1, "search"

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "vip"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildChannel(Z)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "personalized-ads-off"

    goto :goto_0

    :cond_0
    const-string p1, "personalized-ads-on"

    .line 179
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public constructBuilder(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;IZLcom/ebay/nautilus/domain/EbaySite;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 81
    new-instance v0, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setIsSellerRatingsEnabled(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setIsSiteLinksEnabled(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setAdTest(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setPage(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p4}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setNumber(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p4

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getCssWidth(Landroid/content/Context;Landroid/view/ViewGroup;)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setCssWidth(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const-string p2, "#F4F4F4"

    .line 88
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setColorAdSeparator(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const-string p2, "0099f7"

    .line 89
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setColorTitleLink(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const-string p2, "0099f7"

    .line 90
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setColorDomainLink(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const-string p2, "FFFFFF"

    .line 91
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setColorBackground(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const/16 p2, 0x10

    .line 92
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setFontSizeTitle(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const/16 p2, 0xd

    .line 93
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setFontSizeDomainLink(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const/16 p4, 0xf

    .line 94
    invoke-virtual {p1, p4}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setFontSizeAttribution(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setFontSizeDescription(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setIsTitleBold(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setIsTitleUnderlined(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const/16 p2, 0x14

    .line 98
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setAdjustableLineHeight(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    const/16 p2, 0xa

    .line 99
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setAttributionSpacingBelow(I)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setLongerHeadlines(Z)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p5}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->buildChannel(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setChannel(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    iget-object p2, p6, Lcom/ebay/nautilus/domain/EbaySite;->localeLanguage:Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setHostLanguage(Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p1

    if-eqz p5, :cond_0

    const-string p2, "personalizedAds"

    const-string p3, "false"

    .line 108
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->setAdvancedOptionValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "request in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " sent with personalizedAds=false"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->logGtxtAds(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "request in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " sent with personalizedAds=true"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->logGtxtAds(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public getTextAdView()Landroid/view/ViewGroup;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->textAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;)V
    .locals 9

    .line 189
    :try_start_0
    invoke-virtual {p5}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;->getProviderParameters()Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/ProviderParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/ProviderParameters;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Context cannot be null!"

    .line 192
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Ad container cannot be null!"

    .line 193
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "EbaySite cannot be null!"

    .line 194
    invoke-static {p3, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 209
    :cond_1
    invoke-virtual {p5}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->buildAdUnitId(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 213
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/search/SearchAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->textAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    .line 214
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->textAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SEARCH:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/search/SearchAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 215
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->textAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;

    invoke-direct {v0, p0, p4}, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;)V

    .line 218
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->textAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 219
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->textAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    sget-object v1, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->adQueryOverride:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p5}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;->getProviderParameters()Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/ProviderParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/ProviderParameters;->getQuery()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->adQueryOverride:Ljava/lang/String;

    goto :goto_0

    .line 223
    :goto_1
    invoke-virtual {p5}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;->getProviderParameters()Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/ProviderParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/ProviderParameters;->getNumberOfAds()I

    move-result v6

    invoke-virtual {p5}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;->isUserOptedOutOfPersonalizedAds()Z

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    .line 222
    invoke-virtual/range {v2 .. v8}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->constructBuilder(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;IZLcom/ebay/nautilus/domain/EbaySite;)Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;

    move-result-object p2

    .line 226
    sget-boolean p3, Lcom/ebay/mobile/util/AdUtil;->showGoogleNoAdsIndicator:Z

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    .line 227
    invoke-virtual {p4}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->getErrorMapKey()Ljava/lang/String;

    move-result-object p4

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4, v1}, Lcom/ebay/mobile/util/AdUtil;->setErrorForTextAdPlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    :try_start_1
    const-string p3, "loadTextAd"

    .line 231
    invoke-virtual {p5}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;->getPlacementId()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/ebay/mobile/merch/AplsInfo$Product;->GTXT:Lcom/ebay/mobile/merch/AplsInfo$Product;

    invoke-static {p1, p3, p4, p5}, Lcom/ebay/mobile/util/AdUtil;->createGoogleAdsLogTrackPerf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/mobile/merch/AplsInfo$Product;)Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    .line 232
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->textAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest$Builder;->build()Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/search/SearchAdView;->loadAd(Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "GoogleTextAds"

    const-string p3, "loadTextAd"

    .line 236
    invoke-static {p2, p3, p1}, Lcom/ebay/mobile/util/AdUtil;->logGoogleAplsCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 239
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->onAdFailedToLoad(I)V

    :goto_2
    return-void

    :catch_1
    return-void
.end method

.method public logPerfData(Lcom/ebay/mobile/merch/AplsInfo$Cond;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/AdUtil;->logPerfData(Lcom/ebay/nautilus/kernel/net/LogTrackPerf;Lcom/ebay/mobile/merch/AplsInfo$Cond;)V

    return-void
.end method
