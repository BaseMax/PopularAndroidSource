.class public abstract Lcom/adyen/threeds2/internal/h/c/c;
.super Lcom/adyen/threeds2/internal/h/c/b;

# interfaces
.implements Lcom/adyen/threeds2/internal/h/b/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/h/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/h/c/b;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/security/PrivateKey;
.end method

.method public g()V
    .locals 1

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/c/c;->e()Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/security/PrivateKey;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
