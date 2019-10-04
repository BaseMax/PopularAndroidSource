.class public Lcom/ebay/common/rtm/RtmContent;
.super Ljava/lang/Object;
.source "RtmContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/rtm/RtmContent$Parameter;,
        Lcom/ebay/common/rtm/RtmContent$Ad;
    }
.end annotation


# instance fields
.field public ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/rtm/RtmContent$Ad;",
            ">;"
        }
    .end annotation
.end field

.field public appStoreURL:Ljava/net/URL;

.field public bannerImageURL:Ljava/net/URL;

.field public campaign:Lcom/ebay/common/rtm/RtmCampaignType;

.field public campaignId:Ljava/lang/String;

.field public detailsTitle:Ljava/lang/String;

.field public htmlPageURL:Ljava/net/URL;

.field public infoURL:Ljava/net/URL;

.field public itemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public itemSearchURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field public messageId:Ljava/lang/String;

.field public placement:Ljava/lang/String;

.field public rawContent:Ljava/lang/String;

.field public searchDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ssoScope:Ljava/lang/String;

.field public summarySubTitle:Ljava/lang/String;

.field public summaryTitle:Ljava/lang/String;

.field public thumbnailURL:Ljava/net/URL;

.field public trackingClickID:Ljava/lang/String;

.field public trackingURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
