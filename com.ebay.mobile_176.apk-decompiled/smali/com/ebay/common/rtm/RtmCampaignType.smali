.class public final enum Lcom/ebay/common/rtm/RtmCampaignType;
.super Ljava/lang/Enum;
.source "RtmCampaignType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/rtm/RtmCampaignType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/rtm/RtmCampaignType;

.field public static final enum CELEBRITY_ITEMS_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

.field public static final enum DOWNLOADAPP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

.field public static final enum GOOGLE_DFP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

.field public static final enum HTML_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

.field public static final enum ITEM_LIST_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

.field public static final enum THEMED_SEARCH_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

.field public static final enum UNDEFINED_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lcom/ebay/common/rtm/RtmCampaignType;

    const-string v1, "UNDEFINED_CAMPAIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/rtm/RtmCampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->UNDEFINED_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 6
    new-instance v0, Lcom/ebay/common/rtm/RtmCampaignType;

    const-string v1, "DOWNLOADAPP_CAMPAIGN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/rtm/RtmCampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->DOWNLOADAPP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 7
    new-instance v0, Lcom/ebay/common/rtm/RtmCampaignType;

    const-string v1, "HTML_CAMPAIGN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/rtm/RtmCampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->HTML_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 8
    new-instance v0, Lcom/ebay/common/rtm/RtmCampaignType;

    const-string v1, "THEMED_SEARCH_CAMPAIGN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/rtm/RtmCampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->THEMED_SEARCH_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 9
    new-instance v0, Lcom/ebay/common/rtm/RtmCampaignType;

    const-string v1, "CELEBRITY_ITEMS_CAMPAIGN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/rtm/RtmCampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->CELEBRITY_ITEMS_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 10
    new-instance v0, Lcom/ebay/common/rtm/RtmCampaignType;

    const-string v1, "ITEM_LIST_CAMPAIGN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/rtm/RtmCampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->ITEM_LIST_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 11
    new-instance v0, Lcom/ebay/common/rtm/RtmCampaignType;

    const-string v1, "GOOGLE_DFP_CAMPAIGN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/rtm/RtmCampaignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->GOOGLE_DFP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lcom/ebay/common/rtm/RtmCampaignType;

    sget-object v1, Lcom/ebay/common/rtm/RtmCampaignType;->UNDEFINED_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmCampaignType;->DOWNLOADAPP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/rtm/RtmCampaignType;->HTML_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/rtm/RtmCampaignType;->THEMED_SEARCH_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/rtm/RtmCampaignType;->CELEBRITY_ITEMS_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/rtm/RtmCampaignType;->ITEM_LIST_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/rtm/RtmCampaignType;->GOOGLE_DFP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->$VALUES:[Lcom/ebay/common/rtm/RtmCampaignType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/rtm/RtmCampaignType;
    .locals 1

    .line 3
    const-class v0, Lcom/ebay/common/rtm/RtmCampaignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/rtm/RtmCampaignType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/rtm/RtmCampaignType;
    .locals 1

    .line 3
    sget-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->$VALUES:[Lcom/ebay/common/rtm/RtmCampaignType;

    invoke-virtual {v0}, [Lcom/ebay/common/rtm/RtmCampaignType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/rtm/RtmCampaignType;

    return-object v0
.end method
