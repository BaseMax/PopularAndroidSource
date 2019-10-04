.class public Lcom/ebay/common/rtm/RtmHelper;
.super Ljava/lang/Object;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/rtm/RtmHelper$parseCampaign;,
        Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;
    }
.end annotation


# static fields
.field public static final RTM_DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field public static final RTM_ITEM_SEARCH_URLS:Ljava/lang/String; = "itemSearchURLs"

.field public static final RTM_SEARCH_DESCRIPTIONS:Ljava/lang/String; = "searchDescriptions"

.field public static final RTM_SSO_SCOPE:Ljava/lang/String; = "ssoScope"

.field public static final RTM_URL:Ljava/lang/String; = "url"


# instance fields
.field private rcr:Lcom/ebay/common/rtm/RtmContentResult;

.field private rtmCampaignKillList:Ljava/lang/String;

.field private rtmWasDownloaded:Z


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmContentResult;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmCampaignKillList:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmWasDownloaded:Z

    .line 36
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    .line 37
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmCampaignKillList:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rtmContentBase64:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    new-instance p2, Lcom/ebay/common/rtm/RtmContent;

    invoke-direct {p2}, Lcom/ebay/common/rtm/RtmContent;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    .line 42
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object p2, p2, Lcom/ebay/common/rtm/RtmContentResult;->rtmContentBase64:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 45
    new-instance p2, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;

    invoke-direct {p2, p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;-><init>(Lcom/ebay/common/rtm/RtmHelper;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContent;->rawContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 48
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object p2, p2, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object p2, p2, Lcom/ebay/common/rtm/RtmContent;->rawContent:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;-><init>(Lcom/ebay/common/rtm/RtmHelper;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContent;->summaryTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContent;->thumbnailURL:Ljava/net/URL;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmWasDownloaded:Z

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    if-nez p1, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rtmContentBase64:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    return-object p0
.end method


# virtual methods
.method public getAds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/rtm/RtmContent$Ad;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    if-nez v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent;->ads:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getCampaign()Lcom/ebay/common/rtm/RtmCampaignType;
    .locals 3

    .line 77
    iget-boolean v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmWasDownloaded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent;->campaignId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmCampaignKillList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmCampaignKillList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 85
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/common/rtm/RtmHelper;->rtmCampaignKillList:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v2, v2, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v2, v2, Lcom/ebay/common/rtm/RtmContent;->campaignId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->UNDEFINED_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    return-object v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent;->campaign:Lcom/ebay/common/rtm/RtmCampaignType;

    return-object v0

    .line 79
    :cond_3
    :goto_0
    sget-object v0, Lcom/ebay/common/rtm/RtmCampaignType;->UNDEFINED_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent;->campaignId:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent;->itemIds:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
