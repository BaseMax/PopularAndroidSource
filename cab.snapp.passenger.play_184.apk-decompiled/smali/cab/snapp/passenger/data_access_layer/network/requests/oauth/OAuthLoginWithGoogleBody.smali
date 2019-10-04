.class public Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;
.super Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;-><init>()V

    .line 16
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->setGoogleToken(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->setFcmEnabled()V

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->setGrantType()V

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->setClientId()V

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->setClientSecret()V

    return-void
.end method

.method private setFcmEnabled()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->bodyHashMap:Ljava/util/HashMap;

    const-string v1, "fcm_enabled"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setGoogleToken(Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->bodyHashMap:Ljava/util/HashMap;

    const-string v1, "google_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 57
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->bodyHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method setClientId()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->bodyHashMap:Ljava/util/HashMap;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setClientSecret()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->bodyHashMap:Ljava/util/HashMap;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_secret"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setGrantType()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->bodyHashMap:Ljava/util/HashMap;

    const-string v1, "grant_type"

    const-string v2, "login_google"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
