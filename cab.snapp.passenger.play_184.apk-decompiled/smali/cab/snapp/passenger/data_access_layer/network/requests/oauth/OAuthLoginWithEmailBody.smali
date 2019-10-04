.class public Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;
.super Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->setUsername(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->setPassword(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->setGrantType()V

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->setClientId()V

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->setClientSecret()V

    return-void
.end method

.method private setPassword(Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->bodyHashMap:Ljava/util/HashMap;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setUsername(Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->bodyHashMap:Ljava/util/HashMap;

    const-string v1, "username"

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

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->bodyHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method setClientId()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->bodyHashMap:Ljava/util/HashMap;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setClientSecret()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->bodyHashMap:Ljava/util/HashMap;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_secret"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setGrantType()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->bodyHashMap:Ljava/util/HashMap;

    const-string v1, "grant_type"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
