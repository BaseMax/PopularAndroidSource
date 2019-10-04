.class public Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appmetricaTrackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "track_id"
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "icon"
    .end annotation
.end field

.field private isTopBarHidden:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "top_bar_hidden"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field

.field private shouldRedirectToPWA:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "should_redirect_to_pwa"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "pwa_url"
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
.method public getAppmetricaTrackId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->appmetricaTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 34
    iget v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isShouldRedirectToPWA()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->shouldRedirectToPWA:Z

    return v0
.end method

.method public isTopBarHidden()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->isTopBarHidden:Z

    return v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setShouldRedirectToPWA(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->shouldRedirectToPWA:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->url:Ljava/lang/String;

    return-void
.end method
