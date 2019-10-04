.class public Lcom/ebay/common/SsoScopeLoader;
.super Lcom/ebay/nautilus/shell/content/FwNetLoader;
.source "SsoScopeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;,
        Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;
    }
.end annotation


# static fields
.field protected static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorDescription:Ljava/lang/String;

.field private final iafToken:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private ssoRequestSucceeded:Z

.field private ssoUrl:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "SsoScopeLoader"

    const-string v2, "SSO Scope Loader"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Lcom/ebay/nautilus/domain/app/Authentication;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/FwNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/ebay/common/SsoScopeLoader;->ssoRequestSucceeded:Z

    const-string p1, "Auth cannot be null"

    .line 51
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object p1, p2, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/SsoScopeLoader;->iafToken:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/ebay/common/SsoScopeLoader;->scope:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/ebay/common/SsoScopeLoader;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doInBackgroundInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "Requesting SSO token with scope: %s, url: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ebay/common/SsoScopeLoader;->scope:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/ebay/common/SsoScopeLoader;->url:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/SsoScopeLoader;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    iget-object v3, p0, Lcom/ebay/common/SsoScopeLoader;->iafToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/SsoScopeLoader;->scope:Ljava/lang/String;

    iget-object v5, p0, Lcom/ebay/common/SsoScopeLoader;->url:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;->create(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/common/SsoScopeLoader;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;

    .line 67
    iget-object v3, v0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;->idToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iget-object v1, v0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;->errorDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/ebay/common/SsoScopeLoader;->errorDescription:Ljava/lang/String;

    .line 70
    iget-object v0, v0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/SsoScopeLoader;->errorCode:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/ebay/common/SsoScopeLoader;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/SsoScopeLoader;->ssoUrl:Ljava/lang/String;

    goto :goto_1

    .line 75
    :cond_1
    iput-boolean v2, p0, Lcom/ebay/common/SsoScopeLoader;->ssoRequestSucceeded:Z

    .line 78
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v3

    sget-object v4, Lcom/ebay/mobile/dcs/DcsBoolean;->connection_SiteSpecificSso:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/EbaySite;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 82
    sget-object v4, Lcom/ebay/common/util/EbaySettings;->ssoSiteSpecificApiBase:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v4}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_2
    sget-object v1, Lcom/ebay/common/util/EbaySettings;->ssoApiBase:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :goto_0
    sget-object v2, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_3

    .line 88
    sget-object v2, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSO Endpoint used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 90
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?SSO"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id_token"

    .line 92
    iget-object v0, v0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;->idToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/SsoScopeLoader;->ssoUrl:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public getSsoUrl()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ebay/common/SsoScopeLoader;->ssoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isServiceError()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/ebay/common/SsoScopeLoader;->ssoRequestSucceeded:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
