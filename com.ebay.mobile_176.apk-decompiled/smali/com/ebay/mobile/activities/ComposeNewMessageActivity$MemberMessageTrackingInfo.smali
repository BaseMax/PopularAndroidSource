.class public Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "ComposeNewMessageActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ComposeNewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberMessageTrackingInfo"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private askSellerExperimentState:Ljava/lang/String;

.field private currentPrice:Ljava/lang/String;

.field private messageTagInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;",
            ">;"
        }
    .end annotation
.end field

.field private primaryCategoryId:Ljava/lang/String;

.field private sid:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

.field private siteId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 626
    new-instance v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo$1;

    invoke-direct {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 613
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    .line 614
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->currentPrice:Ljava/lang/String;

    .line 615
    iput-object p2, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->siteId:Ljava/lang/String;

    .line 616
    iput-object p3, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->primaryCategoryId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$900(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;)Ljava/lang/String;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->askSellerExperimentState:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCurrentPrice()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->currentPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTag()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;",
            ">;"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->messageTagInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getPrimaryCategoryId()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->primaryCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->sid:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    return-object v0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->siteId:Ljava/lang/String;

    return-object v0
.end method

.method public setAskSellerExperimentState(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->askSellerExperimentState:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentPrice(Ljava/lang/String;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->currentPrice:Ljava/lang/String;

    return-void
.end method

.method public setMessageTag(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;",
            ">;)V"
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->messageTagInfo:Ljava/util/Map;

    return-void
.end method

.method public setPrimaryCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->primaryCategoryId:Ljava/lang/String;

    return-void
.end method

.method public setSid(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->sid:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    return-void
.end method

.method public setSiteId(Ljava/lang/String;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->siteId:Ljava/lang/String;

    return-void
.end method
