.class final Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;
.super Lcom/ebay/common/SsoResponse;
.source "SsoScopeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/SsoScopeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SsoScopeResponse"
.end annotation


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorDescription:Ljava/lang/String;

.field public idToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ebay/common/SsoResponse;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/SsoScopeLoader$1;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/ebay/common/SsoScopeLoader;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSO response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    const-string v0, "id_token"

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;->idToken:Ljava/lang/String;

    const-string v0, "error_description"

    .line 122
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;->errorDescription:Ljava/lang/String;

    const-string v0, "error_code"

    .line 123
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/SsoScopeLoader$SsoScopeResponse;->errorCode:Ljava/lang/String;

    return-void
.end method
