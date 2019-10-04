.class public Lcom/ebay/common/util/LogisticsUtil;
.super Ljava/lang/Object;
.source "LogisticsUtil.java"


# static fields
.field public static final sPlanOptionTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    .line 15
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "eBayNowImmediateDelivery"

    const-string v2, "EBN-US-IMMEDIATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "eBayNowSameDayDelivery"

    const-string v2, "EBN-US-SAME-DAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "eBayNowNextDayDelivery"

    const-string v2, "EBN-US-NEXT-DAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "eBayNowImmediateShippingClubDelivery"

    const-string v2, "EBN-US-IMMEDIATE-SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "eBayNowSameDayShippingClubDelivery"

    const-string v2, "EBN-US-SAME-DAY-SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "eBayNowNextDayShippingClubDelivery"

    const-string v2, "EBN-US-NEXT-DAY-SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "UK_eBayNowImmediateDelivery"

    const-string v2, "EBN-UK-IMMEDIATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "UK_eBayNowSameDayDelivery"

    const-string v2, "EBN-UK-SAME-DAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "UK_eBayNowNextDayDelivery"

    const-string v2, "EBN-UK-NEXT-DAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "AU_eBayNowImmediateDelivery"

    const-string v2, "EBN-AU-IMMEDIATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "AU_eBayNowSameDayDelivery"

    const-string v2, "EBN-AU-SAME-DAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/ebay/common/util/LogisticsUtil;->sPlanOptionTokenMap:Ljava/util/HashMap;

    const-string v1, "AU_eBayNowNextDayDelivery"

    const-string v2, "EBN-AU-NEXT-DAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
