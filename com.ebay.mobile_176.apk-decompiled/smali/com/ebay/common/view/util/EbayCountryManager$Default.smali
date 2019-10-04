.class public Lcom/ebay/common/view/util/EbayCountryManager$Default;
.super Ljava/lang/Object;
.source "EbayCountryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/util/EbayCountryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buyerRegFlowBaseUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 3

    .line 776
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "https://reg.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "https://reg.sg.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "https://reg.pl.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_2
    const-string p0, "https://reg.ph.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_3
    const-string p0, "https://reg.cafr.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_4
    const-string p0, "https://reg.my.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_5
    const-string p0, "https://reg.ie.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_6
    const-string p0, "https://reg.ch.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_7
    const-string p0, "https://reg.es.paradise.qa.ebay.com/reg/"

    goto/16 :goto_1

    :sswitch_8
    const-string p0, "https://reg.nl.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_9
    const-string p0, "https://reg.benl.paradise.qa.ebay.com/reg/PartialReg?acntType=business"

    goto :goto_1

    :sswitch_a
    const-string p0, "https://reg.it.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_b
    const-string p0, "https://reg.de.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_c
    const-string p0, "https://reg.fr.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_d
    const-string p0, "https://reg.befr.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_e
    const-string p0, "https://reg.at.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_f
    const-string p0, "https://reg.au.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_10
    const-string p0, "https://reg.uk.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_11
    const-string p0, "https://reg.ca.paradise.qa.ebay.com/reg/"

    goto :goto_1

    :sswitch_12
    const-string p0, "https://reg.qa.ebay.com/reg/"

    goto :goto_1

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0xba

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string v0, "https://scgi.%s/ws/eBayISAPI.dll"

    goto :goto_0

    :cond_1
    :pswitch_0
    const-string v0, "https://reg.%s/reg/"

    .line 867
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteDomain()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "US"

    .line 869
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteDomain()Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/4 v1, 0x1

    .line 870
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

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

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ebayGivingWorksCreditFeesUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 1

    .line 998
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "https://pages.ebay.com/help/sell/GivingWorks-fee-policy.html"

    return-object p0

    :cond_0
    const-string p0, "https://pages.ebay.co.uk/help/sell/charity-fee-credits.html"

    return-object p0
.end method

.method public static ebayGivingWorksTnCUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 1

    .line 987
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "https://charity.ebay.com/terms-and-conditions/"

    return-object p0

    :cond_0
    const-string p0, "https://pages.ebay.co.uk/ebayforcharity/termsandconditions.html"

    return-object p0
.end method

.method public static forgotPasswordUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 897
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "https://www.fyp.stg.stratus.qa.ebay.com/EnterUserInfo?FYPShow"

    return-object p0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "https://scgi.ebay.com/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_0
    const-string p0, "https://scgi.ebay.com.sg/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_1
    const-string p0, "https://scgi.ebay.pl/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_2
    const-string p0, "https://scgi.ebay.ph/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_3
    const-string p0, "https://scgi.cafr.ebay.ca/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_4
    const-string p0, "https://scgi.ebay.com.my/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_5
    const-string p0, "https://scgi.ebay.ie/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_6
    const-string p0, "https://scgi.ebay.ch/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_7
    const-string p0, "https://scgi.ebay.es/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_8
    const-string p0, "https://scgi.ebay.nl/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_9
    const-string p0, "https://scgi.benl.ebay.be/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_a
    const-string p0, "https://scgi.ebay.it/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_b
    const-string p0, "https://scgi.ebay.de/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_c
    const-string p0, "https://scgi.ebay.fr/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_d
    const-string p0, "https://scgi.befr.ebay.be/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_e
    const-string p0, "https://scgi.ebay.at/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_f
    const-string p0, "https://scgi.ebay.com.au/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_10
    const-string p0, "https://scgi.ebay.co.uk/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    :sswitch_11
    const-string p0, "https://scgi.ebay.ca/ws/eBayISAPI.dll?FYPShow"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
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
.end method

.method public static fpaRegistrationUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 716
    :cond_0
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->buyerRegFlowBaseUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object v0

    .line 717
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x47

    if-eq p0, v1, :cond_1

    const/16 v1, 0x4d

    if-eq p0, v1, :cond_1

    const/16 v1, 0x65

    if-eq p0, v1, :cond_1

    const/16 v1, 0xba

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd2

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 731
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?RegisterEnterInfo"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 728
    :cond_1
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FullReg"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getBuyerGspTermsAndConditionsDefault(Lcom/ebay/nautilus/domain/EbaySite;)Ljava/lang/String;
    .locals 0

    .line 1079
    iget p0, p0, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    sparse-switch p0, :sswitch_data_0

    const-string p0, "https://pages.ebay.com/shipping/globalshipping/buyer-tnc.html"

    return-object p0

    :sswitch_0
    const-string p0, "https://pages.ebay.pl/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_1
    const-string p0, "https://pages.cafr.ebay.ca/shipping/globalshipping/buyer-tnc.html"

    return-object p0

    :sswitch_2
    const-string p0, "https://pages.ebay.ie/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_3
    const-string p0, "https://pages.ebay.ch/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_4
    const-string p0, "https://pages.ebay.es/shipping/globalshipping/buyer-tnc.html"

    return-object p0

    :sswitch_5
    const-string p0, "https://pages.ebay.nl/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_6
    const-string p0, "https://pages.benl.ebay.be/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_7
    const-string p0, "https://pages.ebay.it/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_8
    const-string p0, "https://pages.ebay.fr/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_9
    const-string p0, "https://pages.befr.ebay.be/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_a
    const-string p0, "https://pages.ebay.de/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_b
    const-string p0, "https://pages.ebay.com.au/shipping/globalshipping/buyer-tnc.html"

    return-object p0

    :sswitch_c
    const-string p0, "https://pages.ebay.co.uk/shipping/globalshipping/buyer-tnc.html#programfees"

    return-object p0

    :sswitch_d
    const-string p0, "https://pages.ebay.ca/shipping/globalshipping/buyer-tnc.html"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_d
        0x3 -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_a
        0x17 -> :sswitch_9
        0x47 -> :sswitch_8
        0x4d -> :sswitch_a
        0x65 -> :sswitch_7
        0x7b -> :sswitch_6
        0x92 -> :sswitch_5
        0xba -> :sswitch_4
        0xc1 -> :sswitch_3
        0xcd -> :sswitch_2
        0xd2 -> :sswitch_1
        0xd4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getEndItemEarlyUrlDefault(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 1124
    sget-object p0, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Lcom/ebay/nautilus/domain/EbaySite;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p0

    .line 1126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://pages."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/help/sell/end_early.html#fees"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEulaUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f12047f

    if-nez p0, :cond_0

    .line 1138
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1141
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    .line 1185
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string p0, "https://pages.ebay.com.sg/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_1
    const-string p0, "https://pages.ebay.com/ru/ru-ru/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_2
    const-string p0, "https://pages.ebay.pl/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_3
    const-string p0, "https://pages.ebay.ph/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_4
    const-string p0, "https://pages.cafr.ebay.ca/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_5
    const-string p0, "https://pages.ebay.com.my/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_6
    const-string p0, "https://pages.ebay.ie/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_7
    const-string p0, "https://pages.ebay.com.hk/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_8
    const-string p0, "https://pages.ebay.ch/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_9
    const-string p0, "https://pages.ebay.es/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_a
    const-string p0, "https://pages.ebay.nl/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_b
    const-string p0, "https://pages.benl.ebay.be/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_c
    const-string p0, "https://pages.ebay.it/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_d
    const-string p0, "https://pages.ebay.de/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_e
    const-string p0, "https://pages.ebay.fr/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_f
    const-string p0, "https://pages.befr.ebay.be/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_10
    const-string p0, "https://pages.ebay.at/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_11
    const-string p0, "https://pages.ebay.com.au/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_12
    const-string p0, "https://pages.ebay.co.uk/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_13
    const-string p0, "https://pages.ebay.ca/help/policies/user-agreement.html?rt=nc"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0xf -> :sswitch_11
        0x10 -> :sswitch_10
        0x17 -> :sswitch_f
        0x47 -> :sswitch_e
        0x4d -> :sswitch_d
        0x65 -> :sswitch_c
        0x7b -> :sswitch_b
        0x92 -> :sswitch_a
        0xba -> :sswitch_9
        0xc1 -> :sswitch_8
        0xc9 -> :sswitch_7
        0xcd -> :sswitch_6
        0xcf -> :sswitch_5
        0xd2 -> :sswitch_4
        0xd3 -> :sswitch_3
        0xd4 -> :sswitch_2
        0xd7 -> :sswitch_1
        0xd8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static inStorePickupTermsOfServiceUrlFormat(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 878
    iget-object v1, p0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    if-nez v1, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "https://pages.ebay.co.uk/clickandcollect/terms.html?lang=%s"

    return-object p0

    :cond_2
    const-string p0, "https://pages.ebay.com/instorepickup/terms.html?lang=%s"

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static isFeedEnabled(Lcom/ebay/nautilus/domain/EbayCountry;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1042
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1045
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    const/16 v1, 0x17

    if-eq p0, v1, :cond_2

    const/16 v1, 0x4d

    if-eq p0, v1, :cond_2

    const/16 v1, 0x7b

    if-eq p0, v1, :cond_2

    const/16 v1, 0xd2

    if-eq p0, v1, :cond_2

    const/16 v1, 0xd4

    if-eq p0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static ppaRegistrationUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 681
    :cond_0
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->buyerRegFlowBaseUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v2, 0xf

    if-eq p0, v2, :cond_1

    const/16 v2, 0x47

    if-eq p0, v2, :cond_1

    const/16 v2, 0x4d

    if-eq p0, v2, :cond_1

    const/16 v2, 0x65

    if-eq p0, v2, :cond_1

    const/16 v2, 0xba

    if-eq p0, v2, :cond_1

    const/16 v2, 0xd2

    if-eq p0, v2, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 693
    :cond_1
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PartialReg"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ppaUpgradeUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 750
    :cond_0
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->buyerRegFlowBaseUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x47

    if-eq p0, v1, :cond_1

    const/16 v1, 0x4d

    if-eq p0, v1, :cond_1

    const/16 v1, 0x65

    if-eq p0, v1, :cond_1

    const/16 v1, 0xba

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd2

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 765
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?UpgradeBusinessRoleApp"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 762
    :cond_1
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static resonsiveFlowBaseUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 590
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "https://scgi.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_0
    const-string p0, "https://scgi.sg.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_1
    const-string p0, "https://scgi.pl.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_2
    const-string p0, "https://scgi.ph.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_3
    const-string p0, "https://scgi.cafr.ca.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_4
    const-string p0, "https://scgi.my.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_5
    const-string p0, "https://scgi.ie.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_6
    const-string p0, "https://scgi.ch.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_7
    const-string p0, "https://scgi.es.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_8
    const-string p0, "https://scgi.nl.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_9
    const-string p0, "https://scgi.benl.be.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_a
    const-string p0, "https://scgi.it.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_b
    const-string p0, "https://scgi.de.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_c
    const-string p0, "https://scgi.fr.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_d
    const-string p0, "https://scgi.befr.be.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_e
    const-string p0, "https://scgi.at.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_f
    const-string p0, "https://scgi.au.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_10
    const-string p0, "https://scgi.uk.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_11
    const-string p0, "https://scgi.ca.paradise.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    :sswitch_12
    const-string p0, "https://scgi.qa.ebay.com/ws/eBayISAPI.dll"

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteDomain()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "US"

    .line 661
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteDomain()Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "https://scgi.%s/ws/eBayISAPI.dll"

    const/4 v1, 0x1

    .line 662
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

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
.end method

.method public static sellerFeesUrl(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "https://pages.ebay.com.sg/help/sell/fees.html"

    return-object p0

    :sswitch_1
    const-string p0, "https://pages.ebay.ph/help/sell/fees.html"

    return-object p0

    :sswitch_2
    const-string p0, "https://pages.cafr.ebay.ca/help/sell/fees.html"

    return-object p0

    :sswitch_3
    const-string p0, "https://pages.ebay.com.my/help/sell/fees.html"

    return-object p0

    :sswitch_4
    const-string p0, "https://pages.ebay.ie/help/sell/fees.html"

    return-object p0

    :sswitch_5
    const-string p0, "https://pages.ebay.es/help/sell/fees.html"

    return-object p0

    :sswitch_6
    const-string p0, "https://pages.ebay.it/help/sell/fees.html"

    return-object p0

    :sswitch_7
    const-string p0, "https://pages.ebay.com/help/sell/motorfees.html"

    return-object p0

    :sswitch_8
    const-string p0, "https://pages.ebay.de/help/sell/fees.html"

    return-object p0

    :sswitch_9
    const-string p0, "https://pages.ebay.fr/help/sell/fees.html"

    return-object p0

    :sswitch_a
    const-string p0, "https://pages.ebay.at/help/sell/seller-fees.html"

    return-object p0

    :sswitch_b
    const-string p0, "https://pages.ebay.com.au/help/sell/fees.html"

    return-object p0

    :sswitch_c
    const-string p0, "https://pages.ebay.co.uk/help/sell/fees.html"

    return-object p0

    :sswitch_d
    const-string p0, "https://pages.ebay.ca/help/sell/fees.html"

    return-object p0

    :sswitch_e
    const-string p0, "https://pages.ebay.com/help/sell/fees.html"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x2 -> :sswitch_d
        0x3 -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_a
        0x47 -> :sswitch_9
        0x4d -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_6
        0xba -> :sswitch_5
        0xcd -> :sswitch_4
        0xcf -> :sswitch_3
        0xd2 -> :sswitch_2
        0xd3 -> :sswitch_1
        0xd8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static sellerRegistrationUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 1

    .line 574
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->resonsiveFlowBaseUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?SellerSignIn2"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static shipToFundInfoUrl(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/16 v1, 0xd2

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "https://pages.ebay.com/help/pay/payment_hold.html"

    return-object p0

    :cond_2
    const-string p0, "https://pages.ebay.com/help/pay/payment_hold.html"

    return-object p0

    :cond_3
    const-string p0, "https://pages.ebay.com/help/pay/payment_hold.html"

    return-object p0
.end method

.method public static supportsBestOffer(Lcom/ebay/nautilus/domain/EbayCountry;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    return v0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x17 -> :sswitch_0
        0x47 -> :sswitch_0
        0x4d -> :sswitch_0
        0x65 -> :sswitch_0
        0x7b -> :sswitch_0
        0x92 -> :sswitch_0
        0xba -> :sswitch_0
        0xc1 -> :sswitch_0
        0xcd -> :sswitch_0
        0xcf -> :sswitch_0
        0xd2 -> :sswitch_0
        0xd3 -> :sswitch_0
        0xd8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static supportsBestOfferMessage(Lcom/ebay/nautilus/domain/EbayCountry;)Z
    .locals 5

    .line 551
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->supportsBestOffer(Lcom/ebay/nautilus/domain/EbayCountry;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x946

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa83

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "TW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "JP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    return v1

    :cond_4
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static supportsBestOfferTerms(Lcom/ebay/nautilus/domain/EbayCountry;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->supportsBestOffer(Lcom/ebay/nautilus/domain/EbayCountry;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    return v1

    :sswitch_0
    const/4 p0, 0x1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_0
        0x47 -> :sswitch_0
        0x65 -> :sswitch_0
        0x7b -> :sswitch_0
        0xba -> :sswitch_0
        0xcd -> :sswitch_0
        0xcf -> :sswitch_0
        0xd2 -> :sswitch_0
        0xd8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static supportsCategorySuggestions(Lcom/ebay/nautilus/domain/EbayCountry;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x4d

    if-eq p0, v1, :cond_1

    const/16 v1, 0x65

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    return v0

    :cond_1
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static supportsMotorsSelling(Lcom/ebay/nautilus/domain/EbayCountry;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "US"

    .line 1029
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method
