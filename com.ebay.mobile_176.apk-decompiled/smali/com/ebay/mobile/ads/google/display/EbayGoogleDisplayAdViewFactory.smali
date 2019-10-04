.class public Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;
.super Ljava/lang/Object;
.source "EbayGoogleDisplayAdViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustMediaViewDimensions(Lcom/google/android/gms/ads/formats/MediaView;ZI)V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    int-to-double p1, p2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    double-to-int p2, p1

    :cond_0
    int-to-double v0, p2

    const-wide v2, 0x3ffe8f5c28f5c28fL    # 1.91

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 261
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 262
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 263
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/formats/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private static getAppInstallAdView(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;ZLcom/google/android/gms/ads/formats/NativeAppInstallAd;)Lcom/google/android/gms/ads/formats/NativeAdView;
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0d02c5

    goto :goto_0

    :cond_0
    const v0, 0x7f0d02c4

    :goto_0
    const-string v1, "layout_inflater"

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    const p1, 0x7f0a0048

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 52
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->textFromHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setBodyView(Landroid/view/View;)V

    const p1, 0x7f0a0047

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->textFromHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setHeadlineView(Landroid/view/View;)V

    const p1, 0x7f0a0053

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0050

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p3

    const/16 v0, 0x8

    if-eqz p3, :cond_1

    .line 67
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setIconView(Landroid/view/View;)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const p1, 0x7f0a004f

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/MediaView;

    .line 74
    invoke-static {p1, p4, p2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->adjustMediaViewDimensions(Lcom/google/android/gms/ads/formats/MediaView;ZI)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    const p1, 0x7f0a0049

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 78
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->textFromHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setCallToActionView(Landroid/view/View;)V

    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-object p0
.end method

.method private static getContentAdView(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;ZLcom/google/android/gms/ads/formats/NativeContentAd;)Lcom/google/android/gms/ads/formats/NativeAdView;
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0d02c7

    goto :goto_0

    :cond_0
    const v0, 0x7f0d02c6

    :goto_0
    const-string v1, "layout_inflater"

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    const p1, 0x7f0a004e

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 103
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->textFromHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setHeadlineView(Landroid/view/View;)V

    const p1, 0x7f0a0048

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 107
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->textFromHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setBodyView(Landroid/view/View;)V

    const p1, 0x7f0a0047

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 111
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getAdvertiser()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->textFromHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setAdvertiserView(Landroid/view/View;)V

    const p1, 0x7f0a0053

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0050

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p3

    const/16 v0, 0x8

    if-eqz p3, :cond_1

    .line 121
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setLogoView(Landroid/view/View;)V

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const p1, 0x7f0a004f

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/MediaView;

    .line 130
    invoke-static {p1, p4, p2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->adjustMediaViewDimensions(Lcom/google/android/gms/ads/formats/MediaView;ZI)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    const p1, 0x7f0a0049

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 134
    invoke-virtual {p5}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->textFromHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-object p0
.end method

.method private static getDisplayAdView(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;Z)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    move v4, p1

    goto :goto_0

    :cond_1
    move v4, v1

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    int-to-float v1, v4

    .line 164
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr p1, v2

    div-float/2addr v1, p1

    float-to-int p1, v1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/AdUtil;->logNativeAdLoader(Ljava/lang/String;)V

    const/16 v1, 0x238

    if-lt p1, v1, :cond_2

    const/4 p1, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 v6, 0x0

    :goto_1
    const-string p1, "Advertisement"

    .line 171
    instance-of v1, p0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v1, :cond_3

    .line 172
    move-object p1, p0

    check-cast p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->getAdvertisementText(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v5, p1

    .line 175
    instance-of p1, p3, Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz p1, :cond_4

    .line 176
    move-object v7, p3

    check-cast v7, Lcom/google/android/gms/ads/formats/NativeContentAd;

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->getContentAdView(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;ZLcom/google/android/gms/ads/formats/NativeContentAd;)Lcom/google/android/gms/ads/formats/NativeAdView;

    move-result-object p0

    goto :goto_2

    .line 178
    :cond_4
    instance-of p1, p3, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz p1, :cond_5

    .line 179
    move-object v7, p3

    check-cast v7, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->getAppInstallAdView(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;ZLcom/google/android/gms/ads/formats/NativeAppInstallAd;)Lcom/google/android/gms/ads/formats/NativeAdView;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_6

    if-eqz p4, :cond_6

    .line 191
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    .line 196
    new-instance p0, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    const-string v2, "GoogleNativeAds"

    const-string/jumbo v3, "setNativeAd"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Application"

    const-string v7, "CrashError"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-static {p0}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogErrorData(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    return-object v0

    :cond_6
    :goto_3
    return-object p0

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static getDisplayAdView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;)Landroid/view/View;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/formats/NativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 226
    invoke-static {p0, v1, p1, p2, v0}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->getDisplayAdView(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 228
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p0, v1, p1, p2, v0}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->getDisplayAdView(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method
