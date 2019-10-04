.class public final Lcab/snapp/passenger/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/snappnetwork/h;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcab/snapp/passenger/data_access_layer/network/b;

.field private c:Lcab/snapp/authenticator/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/authenticator/c;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcab/snapp/passenger/b/b;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRefreshTokenRequest()Lcab/snapp/snappnetwork/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/c;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcab/snapp/passenger/b/b;->b:Lcab/snapp/passenger/data_access_layer/network/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getAuthInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    const-class v1, Lcab/snapp/snappnetwork/model/c;

    invoke-virtual {v0, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;

    iget-object v2, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    invoke-direct {v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;-><init>(Lcab/snapp/authenticator/c;)V

    .line 36
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthRefreshTokenBody;->getBody()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappnetwork/f;->addBodyParameter(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcab/snapp/snappnetwork/f;->build()Lcab/snapp/snappnetwork/e;

    move-result-object v0

    return-object v0
.end method

.method public final isAuthenticated()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v0

    return v0
.end method

.method public final onRefreshTokenError(I)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcab/snapp/passenger/b/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {v0, p1}, Lcab/snapp/authenticator/c;->removeAccount(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->doRestart()V

    :cond_0
    return-void
.end method

.method public final onTokenRefreshed(Lcab/snapp/snappnetwork/model/c;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/authenticator/c;->setRefreshToken(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/authenticator/c;->invalidateAuthToken(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcab/snapp/passenger/b/b;->c:Lcab/snapp/authenticator/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getExpiresIn()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/authenticator/c;->setExpiredAt(Ljava/lang/String;)V

    return-void
.end method

.method public final setNetworkModules(Lcab/snapp/passenger/data_access_layer/network/b;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/b/b;->b:Lcab/snapp/passenger/data_access_layer/network/b;

    return-void
.end method
