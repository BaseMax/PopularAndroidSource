.class public Lcom/ebay/common/view/util/OcsUrl;
.super Ljava/lang/Object;
.source "OcsUrl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGbhOcsUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ebay/common/view/util/OcsCountrySite;->getOcsCountrySite(Ljava/lang/String;)Lcom/ebay/common/view/util/OcsCountrySite;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 51
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "https://www.qa.ebay.com/help/home"

    goto :goto_0

    :cond_0
    const-string p0, "https://ocsnext.ebay.com/ocs/home"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getOcsUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/ebay/common/view/util/OcsUrl;->getGbhOcsUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    invoke-static {p0}, Lcom/ebay/common/view/util/OcsUrl;->getSitedOcsUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getSitedOcsUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result v0

    .line 65
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    return-object v2

    :sswitch_0
    const-string p0, "https://www.sg.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_1
    const-string p0, "https://www.pl.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_2
    const-string p0, "https://www.ph.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_3
    const-string p0, "https://www.cafr.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_4
    const-string p0, "https://www.my.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_5
    const-string p0, "https://www.ie.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_6
    const-string p0, "https://www.ch.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_7
    const-string p0, "https://www.es.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_8
    const-string p0, "https://www.nl.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_9
    const-string p0, "https://www.benl.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_a
    const-string p0, "https://www.it.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_b
    const-string p0, "https://www.de.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_c
    const-string p0, "https://www.fr.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_d
    const-string p0, "https://www.befr.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_e
    const-string p0, "https://ocsnext.at.paradise.qa.ebay.com/ocs/home"

    return-object p0

    :sswitch_f
    const-string p0, "https://www.au.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_10
    const-string p0, "https://www.uk.paradise.qa.ebay.com/help/home"

    return-object p0

    :sswitch_11
    const-string p0, "https://ocsnext.ca.paradise.qa.ebay.com/ocs/home"

    return-object p0

    :sswitch_12
    const-string p0, "https://www.qa.ebay.com/help/home"

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_1

    return-object v2

    .line 140
    :sswitch_13
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteDomain()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v2, "https://www.%s/help/home"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {p0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :sswitch_14
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteDomain()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://www.%s/help/home"

    .line 126
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x2 -> :sswitch_11
        0x3 -> :sswitch_10
        0xf -> :sswitch_f
        0x10 -> :sswitch_e
        0x17 -> :sswitch_d
        0x47 -> :sswitch_c
        0x4d -> :sswitch_b
        0x65 -> :sswitch_a
        0x7b -> :sswitch_9
        0x92 -> :sswitch_8
        0xba -> :sswitch_7
        0xc1 -> :sswitch_6
        0xcd -> :sswitch_5
        0xcf -> :sswitch_4
        0xd2 -> :sswitch_3
        0xd3 -> :sswitch_2
        0xd4 -> :sswitch_1
        0xd8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_14
        0x2 -> :sswitch_14
        0x3 -> :sswitch_14
        0xf -> :sswitch_14
        0x10 -> :sswitch_13
        0x17 -> :sswitch_13
        0x47 -> :sswitch_14
        0x4d -> :sswitch_14
        0x65 -> :sswitch_14
        0x7b -> :sswitch_13
        0x92 -> :sswitch_13
        0xba -> :sswitch_14
        0xc1 -> :sswitch_13
        0xcd -> :sswitch_13
        0xcf -> :sswitch_13
        0xd2 -> :sswitch_14
        0xd3 -> :sswitch_13
        0xd4 -> :sswitch_13
        0xd8 -> :sswitch_13
    .end sparse-switch
.end method
