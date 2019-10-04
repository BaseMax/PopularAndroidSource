.class public Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;
.super Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;
.source "SourceFile"


# instance fields
.field private snappAccountManager:Lcab/snapp/authenticator/c;


# direct methods
.method public constructor <init>(Lcab/snapp/authenticator/c;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;-><init>()V

    .line 14
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->snappAccountManager:Lcab/snapp/authenticator/c;

    .line 15
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->setRefreshToken()V

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->setGrantType()V

    .line 17
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->setClientId()V

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->setClientSecret()V

    return-void
.end method

.method private setRefreshToken()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->bodyHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->snappAccountManager:Lcab/snapp/authenticator/c;

    invoke-virtual {v1}, Lcab/snapp/authenticator/c;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->bodyHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method setClientId()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->bodyHashMap:Ljava/util/HashMap;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setClientSecret()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->bodyHashMap:Ljava/util/HashMap;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_secret"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setGrantType()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->bodyHashMap:Ljava/util/HashMap;

    const-string v1, "grant_type"

    const-string v2, "refresh_token"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
