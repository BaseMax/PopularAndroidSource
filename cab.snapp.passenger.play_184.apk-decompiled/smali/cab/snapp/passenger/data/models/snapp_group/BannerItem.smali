.class public Lcab/snapp/passenger/data/models/snapp_group/BannerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actionTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "action_title"
    .end annotation
.end field

.field private appmetricaTrackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "track_id"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "description"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "image_url"
    .end annotation
.end field

.field private isDark:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_dark"
    .end annotation
.end field

.field private isTopBarHidden:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "top_bar_hidden"
    .end annotation
.end field

.field private referralLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "referral_link"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionTitle()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->actionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAppmetricaTrackId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->appmetricaTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralLink()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->referralLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDark()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->isDark:Z

    return v0
.end method

.method public isTopBarHidden()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->isTopBarHidden:Z

    return v0
.end method

.method public setActionTitle(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->actionTitle:Ljava/lang/String;

    return-void
.end method

.method public setDark(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->isDark:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setReferralLink(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->referralLink:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->title:Ljava/lang/String;

    return-void
.end method
