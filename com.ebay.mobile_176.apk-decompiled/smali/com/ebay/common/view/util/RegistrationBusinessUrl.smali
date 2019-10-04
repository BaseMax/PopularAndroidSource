.class public Lcom/ebay/common/view/util/RegistrationBusinessUrl;
.super Ljava/lang/Object;
.source "RegistrationBusinessUrl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegistrationBusinessUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    .line 17
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sparse-switch p0, :sswitch_data_0

    const-string p0, "https://reg.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_0
    const-string p0, "https://reg.sg.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_1
    const-string p0, "https://reg.pl.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_2
    const-string p0, "https://reg.ph.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_3
    const-string p0, "https://reg.cafr.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_4
    const-string p0, "https://reg.my.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_5
    const-string p0, "https://reg.ie.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_6
    const-string p0, "https://reg.ch.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_7
    const-string p0, "https://reg.es.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_8
    const-string p0, "https://reg.nl.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_9
    const-string p0, "https://reg.benl.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_a
    const-string p0, "https://reg.it.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_b
    const-string p0, "https://reg.de.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_c
    const-string p0, "https://reg.fr.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_d
    const-string p0, "https://reg.befr.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_e
    const-string p0, "https://reg.at.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_f
    const-string p0, "https://reg.au.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_10
    const-string p0, "https://reg.uk.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_11
    const-string p0, "https://reg.ca.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_12
    const-string p0, "https://reg.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :cond_1
    sparse-switch p0, :sswitch_data_1

    const-string p0, "https://reg.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_13
    const-string p0, "https://reg.ebay.sg/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_14
    const-string p0, "https://reg.ebay.pl/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_15
    const-string p0, "https://reg.ebay.ph/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_16
    const-string p0, "https://reg.cafr.ebay.ca/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_17
    const-string p0, "https://reg.ebay.my/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_18
    const-string p0, "https://reg.ebay.ie/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_19
    const-string p0, "https://reg.ebay.ch/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_1a
    const-string p0, "https://reg.ebay.es/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_1b
    const-string p0, "https://reg.ebay.nl/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_1c
    const-string p0, "https://reg.benl.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_1d
    const-string p0, "https://reg.ebay.it/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_1e
    const-string p0, "https://reg.ebay.de/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_1f
    const-string p0, "https://reg.ebay.fr/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_20
    const-string p0, "https://reg.cafr.ebay.ca/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_21
    const-string p0, "https://reg.ebay.at/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_22
    const-string p0, "https://reg.ebay.com.au/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_23
    const-string p0, "https://reg.ebay.co.uk/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_24
    const-string p0, "https://reg.ebay.ca/reg/PartialReg?acntType=business"

    return-object p0

    :sswitch_25
    const-string p0, "https://reg.ebay.com/reg/PartialReg?acntType=business"

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
        0x0 -> :sswitch_25
        0x2 -> :sswitch_24
        0x3 -> :sswitch_23
        0xf -> :sswitch_22
        0x10 -> :sswitch_21
        0x17 -> :sswitch_20
        0x47 -> :sswitch_1f
        0x4d -> :sswitch_1e
        0x65 -> :sswitch_1d
        0x7b -> :sswitch_1c
        0x92 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xc1 -> :sswitch_19
        0xcd -> :sswitch_18
        0xcf -> :sswitch_17
        0xd2 -> :sswitch_16
        0xd3 -> :sswitch_15
        0xd4 -> :sswitch_14
        0xd8 -> :sswitch_13
    .end sparse-switch
.end method
