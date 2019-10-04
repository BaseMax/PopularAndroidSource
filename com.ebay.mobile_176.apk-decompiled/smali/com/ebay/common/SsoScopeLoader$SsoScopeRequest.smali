.class final Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;
.super Lcom/ebay/common/SsoRequest;
.source "SsoScopeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/SsoScopeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SsoScopeRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/SsoRequest<",
        "Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "ssoScope"

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/ebay/common/SsoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSO request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static create(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;
    .locals 3

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "//EBAYSSO/EBAYCLASSIC"

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbayAppCredentials;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/EbayAppCredentials;

    move-result-object p0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->ssoApiBase:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?OAuthAuthorize2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "grant_type"

    const-string v2, "client_credentials"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "client_id"

    iget-object p0, p0, Lcom/ebay/nautilus/domain/EbayAppCredentials;->appId:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "client_secret"

    .line 147
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo p1, "scope"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scope:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance p1, Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;

    invoke-direct {p1, p0}, Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getResponse()Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;
    .locals 2

    .line 156
    new-instance v0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;-><init>(Lcom/ebay/common/SsoScopeLoader$1;)V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/ebay/common/SsoScopeLoader$SsoScopeRequest;->getResponse()Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;

    move-result-object v0

    return-object v0
.end method
