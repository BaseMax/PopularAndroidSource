.class public Lcom/ebay/mobile/checkout/prox/ProxHelper;
.super Ljava/lang/Object;
.source "ProxHelper.java"


# static fields
.field public static final countryCodesWithoutPostalCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "AO"

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AG"

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AW"

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BS"

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BZ"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BJ"

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BW"

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BF"

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BI"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CM"

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CF"

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KM"

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CG"

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CD"

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CI"

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CW"

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "DJ"

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "DM"

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TL"

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GQ"

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ER"

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "FJ"

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GM"

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GH"

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GD"

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GN"

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GY"

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "HK"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KI"

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KP"

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MO"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MW"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ML"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MR"

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MU"

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MS"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "NR"

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "NU"

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PA"

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "QA"

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "RW"

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KN"

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "LC"

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MF"

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ST"

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SC"

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SL"

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SB"

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SO"

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SR"

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SY"

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TZ"

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TK"

    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TO"

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TV"

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "UG"

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "VU"

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "YE"

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ZW"

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/checkout/prox/ProxHelper;->countryCodesWithoutPostalCodes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryHasStatesOrProvinces(Ljava/lang/String;)Z
    .locals 0

    .line 284
    invoke-static {p0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getStateProvinceCodes(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getCartLineitemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 607
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "(.*)ItemId=(\\d+);(.*)LId-(\\d+)"

    .line 611
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 612
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 614
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 615
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getCountryById(Ljava/util/List;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;

    .line 379
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->countryId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEditTextValue(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getLocalizedDeliveryEstimate(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;Z)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 877
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 878
    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->text:Ljava/lang/String;

    return-object p0

    .line 880
    :cond_1
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryDateMin:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryDateMin:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/cos/base/DateTime;->value:Ljava/util/Date;

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 882
    :goto_0
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryDateMax:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryDateMax:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/DateTime;->value:Ljava/util/Date;

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 884
    :goto_1
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->label:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    .line 890
    new-instance v2, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    invoke-direct {v2, p0, p2, v1}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 891
    invoke-virtual {v2, p0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setIncludeDayOfWeek(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 892
    invoke-virtual {v2, p0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setReturnJustDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 893
    invoke-virtual {v2}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->build()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 896
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->label:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    .line 899
    :cond_5
    iget-object p0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static getPostalCodeLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120304

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AT"

    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f1202f7

    .line 264
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const-string v1, "AU"

    .line 265
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f1202f8

    .line 266
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "CA"

    .line 267
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f1202fa

    .line 268
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "DE"

    .line 269
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f1202fc

    .line 270
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "FR"

    .line 271
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p1, 0x7f1202fd

    .line 272
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "GB"

    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const p1, 0x7f1202fe

    .line 274
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "IT"

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const p1, 0x7f1202ff

    .line 276
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "US"

    .line 277
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f120302

    .line 278
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static getRenderedLoyaltyContent(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 778
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const v1, 0x7f0d00ca

    .line 781
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v1, 0x7f0a098d

    .line 782
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a098c

    .line 783
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ebay/android/widget/RemoteImageView;

    .line 785
    iget-object v3, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;->rewardsMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 788
    invoke-static {v1, v3, v4}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    .line 789
    iget-object p1, v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz p1, :cond_0

    const v3, 0x7f0a123f

    .line 792
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 793
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 794
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    :cond_0
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;->brandImage:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz p0, :cond_1

    .line 799
    iget-object p1, p0, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    goto :goto_0

    .line 802
    :cond_1
    invoke-virtual {v2, v4}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    :goto_0
    return-object p2

    .line 807
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSelectedCountry(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;",
            ">;)",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 369
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;

    .line 370
    iget-boolean v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->selected:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStateProvinceCodes(Ljava/lang/String;)I
    .locals 1

    const-string v0, "US"

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f030006

    goto :goto_0

    :cond_0
    const-string v0, "CA"

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f030001

    goto :goto_0

    :cond_1
    const-string v0, "AU"

    .line 315
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p0, 0x7f030000

    goto :goto_0

    :cond_2
    const-string v0, "IT"

    .line 317
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f030003

    goto :goto_0

    :cond_3
    const-string v0, "JP"

    .line 319
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x7f030004

    goto :goto_0

    :cond_4
    const-string v0, "IN"

    .line 321
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f030002

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getStateProvinceLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "AU"

    .line 292
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1202f9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "CA"

    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1202fb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "IT"

    .line 296
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120300

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "US"

    .line 298
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120303

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "JP"

    .line 300
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120301

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getSuggestionListAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 706
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 708
    new-instance v2, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 710
    invoke-virtual {v1, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 712
    invoke-virtual {v1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    :goto_1
    if-gt v3, v4, :cond_6

    .line 715
    invoke-virtual {v1, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 720
    :cond_1
    invoke-virtual {v1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 721
    invoke-virtual {v1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 723
    :cond_2
    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 724
    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 726
    :cond_3
    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 727
    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 729
    :cond_4
    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 730
    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 732
    :cond_5
    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 733
    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 736
    :cond_6
    invoke-virtual {v2}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0

    .line 743
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getWebViewIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 755
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "url"

    .line 756
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "use_sso"

    const/4 p1, 0x1

    .line 757
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "back"

    .line 758
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "add_device_id"

    const/4 p1, 0x0

    .line 759
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static isEmptyOrBlank(Ljava/lang/String;)Z
    .locals 1

    .line 363
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static renderAlert(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 2

    .line 544
    new-instance v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;-><init>()V

    const-string v1, "ERROR"

    .line 545
    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    .line 546
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    const/4 p2, 0x1

    .line 547
    invoke-static {p0, p1, v0, p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V

    return-void
.end method

.method public static renderEgdMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;ILandroid/view/LayoutInflater;)Landroid/widget/RelativeLayout;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 907
    invoke-virtual {p2, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const p2, 0x7f0a05ce

    .line 908
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f0a05cb

    .line 909
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 914
    iget-object v3, p0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v3, :cond_0

    .line 916
    iget-object v1, v3, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a123f

    .line 921
    invoke-virtual {v2, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 923
    :cond_1
    invoke-static {p2, p0}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    return-object p1
.end method

.method public static renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V
    .locals 8

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 447
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b8

    const/4 v2, 0x0

    .line 448
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f0a00e4

    .line 449
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 452
    invoke-static {p0, v1, p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderInLineError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)I

    move-result p0

    const/16 v4, 0x8

    if-nez p3, :cond_0

    .line 456
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 461
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 465
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->subMessages:Ljava/util/List;

    if-eqz p3, :cond_4

    const p3, 0x7f0a00e5

    .line 467
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->subMessages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 469
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f0d00e5

    .line 472
    invoke-virtual {v0, p3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0a09fe

    .line 473
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f0a11ee

    .line 474
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a11ec

    .line 475
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 478
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 479
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 483
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 484
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 480
    :cond_2
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 488
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0a03cf

    .line 489
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 495
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public static renderInLineError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)I
    .locals 4
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const v0, 0x7f0a00e9

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00e6

    .line 511
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f040160

    .line 515
    invoke-static {p0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v2, "ERROR"

    .line 516
    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WARNING"

    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f08037f

    move-object p0, v1

    const v1, 0x7f08037f

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7f08037e

    const v2, 0x7f040156

    .line 519
    invoke-static {p0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 523
    :goto_1
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 525
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    invoke-static {p2}, Lcom/ebay/mobile/util/Util;->compatFromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 528
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 531
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static renderLoyaltyContent(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;)V
    .locals 8

    .line 824
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 826
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;->rewards:Ljava/util/List;

    .line 827
    invoke-static {p0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 829
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;

    const v2, 0x7f0d00ca

    const/4 v3, 0x0

    .line 832
    invoke-virtual {p2, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v4, 0x7f0a098d

    .line 833
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a098c

    .line 834
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ebay/android/widget/RemoteImageView;

    .line 836
    iget-object v6, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;->rewardsMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v4, v6, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    .line 837
    iget-object v6, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;->rewardsMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v6, :cond_0

    const v7, 0x7f0a123f

    .line 840
    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 841
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    :cond_0
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;->brandImage:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v0, :cond_1

    .line 847
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->url:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 848
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    goto :goto_1

    .line 850
    :cond_1
    invoke-virtual {v5, v1}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 852
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static renderToolTip(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;)V
    .locals 5

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 563
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ec

    const/4 v2, 0x0

    .line 564
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a132b

    .line 565
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 568
    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    if-eqz v4, :cond_0

    .line 570
    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v4}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 578
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->messagesList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 580
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->messagesList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;

    if-eqz v1, :cond_1

    .line 582
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0x7f0d00ed

    .line 585
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a11ee

    .line 586
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 588
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 594
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public static varargs renderWarning(Landroid/content/Context;Landroid/view/ViewGroup;I[Ljava/lang/Object;)V
    .locals 2

    .line 536
    new-instance v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;-><init>()V

    const-string v1, "WARNING"

    .line 537
    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    .line 538
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    const/4 p2, 0x1

    .line 539
    invoke-static {p0, p1, v0, p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V

    return-void
.end method

.method public static reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 692
    new-instance v8, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    const-string v5, "PROX"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 693
    invoke-virtual {v8, p3}, Lcom/ebay/nautilus/kernel/net/LogTrackError;->setErrorCode(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v8, p5}, Lcom/ebay/nautilus/kernel/net/LogTrackError;->setLongErrorMessage(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v8}, Lcom/ebay/nautilus/kernel/net/LogTrackError;->getUserData()Ljava/util/HashMap;

    move-result-object p0

    const-string/jumbo p1, "xoSessionId"

    .line 696
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-static {v8}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogErrorData(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    return-void
.end method

.method public static reportHttpErrorToApls(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "proxErrorCode"

    .line 631
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "proxErrorDescription"

    .line 632
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 635
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "EbayIdentity"

    const-string v2, "payPalLogin"

    move-object v3, p0

    move-object v4, v5

    .line 638
    invoke-static/range {v1 .. v6}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static reportProxIdlErrorToApls(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Intent;I)V
    .locals 6
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    return-void

    :cond_0
    :pswitch_0
    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    if-eqz p1, :cond_2

    const-string p0, "proxErrorCode"

    .line 663
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p0, "proxErrorDescription"

    .line 664
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v5, p0

    goto :goto_1

    :cond_2
    move-object v5, p2

    .line 667
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 669
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "IDLT_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "EbayIdentity"

    const-string v1, "payPalLogin"

    move-object v3, v4

    .line 670
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static reversePostalCode(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 7

    const v0, 0x7f0a00a4

    .line 200
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00a7

    .line 201
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a00ae

    .line 202
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a008f

    .line 203
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 220
    :goto_0
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/address/Address;->countryHasReversedPostalCode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v5, :cond_6

    .line 224
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 226
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x1

    .line 235
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_6

    .line 243
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    :cond_4
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_5

    .line 253
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static setBottomPadding(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "View group should not be null"

    .line 948
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 950
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 951
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    .line 952
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 953
    invoke-virtual {p0, v0, v2, v1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public static setBottomPaddingToZero(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "View group should not be null"

    .line 934
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 936
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 937
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    .line 938
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    .line 939
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public static setCountryById(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 387
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;

    .line 388
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->countryId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->selected:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setEditTextValue(Landroid/app/Activity;ILjava/lang/String;Z)V
    .locals 4

    .line 345
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 346
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 349
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    if-eqz p3, :cond_0

    .line 351
    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getEditTextValue(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 352
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 p0, 0x1

    invoke-direct {v2, p0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 354
    :cond_0
    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 355
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    const/16 p1, 0x21

    invoke-virtual {v1, v2, v3, p0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static setSelectedStateOrProvince(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 394
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    .line 395
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateId:Ljava/lang/String;

    const-string v2, "default"

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->selected:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateInputFormForCountry(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 151
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reversePostalCode(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getStateProvinceCodes(Ljava/lang/String;)I

    move-result p2

    const v0, 0x7f0a00ae

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-lez p2, :cond_2

    const v1, 0x7f0a00ac

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00af

    .line 158
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    const v2, 0x7f0d050c

    .line 159
    invoke-static {p0, p2, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p0

    const p2, 0x1090009

    .line 161
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 162
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 165
    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, -0x1

    if-le p2, p3, :cond_0

    .line 168
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p1, p2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 182
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    .line 186
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p3, :cond_1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-nez p1, :cond_1

    .line 978
    :cond_0
    new-instance p3, Lcom/ebay/mobile/activities/ActivityResult;

    invoke-direct {p3, p0, p1, p2}, Lcom/ebay/mobile/activities/ActivityResult;-><init>(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    return-object p3
.end method

.method public static validateQuantityUpdate(Landroid/widget/TextView;III)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 406
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v1, p2, :cond_3

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    if-le v1, p3, :cond_2

    .line 421
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return p3

    :cond_2
    return v1

    .line 412
    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 428
    :catch_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v0
.end method

.method public static valueOrEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
