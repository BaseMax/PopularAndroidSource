.class public Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;
.super Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;
.source "ToggleFollowNotificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/net/api/search/following/BaseFollowingRequest<",
        "Lcom/ebay/common/net/api/search/following/EmptyResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "getInterests"

.field public static final SERVICE_NAME:Ljava/lang/String; = "FollowService"


# instance fields
.field public entityId:Ljava/lang/String;

.field public followType:Lcom/ebay/nautilus/domain/data/FollowType;

.field private putTrueDeleteFalse:Z

.field private type:Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;ZLcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 2
    .param p6    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FollowService"

    const-string v1, "getInterests"

    .line 36
    invoke-direct {p0, v0, v1, p5, p6}, Lcom/ebay/common/net/api/search/following/BaseFollowingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;)V

    const-string p5, "Country must not be non-null, use userContext.ensureCountry()"

    .line 38
    invoke-static {p6, p5}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    .line 40
    iput-object p2, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->entityId:Ljava/lang/String;

    .line 41
    iput-boolean p3, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->putTrueDeleteFalse:Z

    .line 42
    iput-object p4, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->type:Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    return-void
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->putTrueDeleteFalse:Z

    if-eqz v0, :cond_0

    const-string v0, "PUT"

    goto :goto_0

    :cond_0
    const-string v0, "DELETE"

    :goto_0
    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->entityId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    .line 66
    invoke-static {v3}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "relation/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/FollowType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->entityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/notification/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->type:Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;

    .line 67
    invoke-virtual {v3}, Lcom/ebay/common/model/search/following/FollowDescriptor$NotificationEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;
    .locals 1

    .line 48
    new-instance v0, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/EmptyResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/following/ToggleFollowNotificationRequest;->getResponse()Lcom/ebay/common/net/api/search/following/EmptyResponse;

    move-result-object v0

    return-object v0
.end method
