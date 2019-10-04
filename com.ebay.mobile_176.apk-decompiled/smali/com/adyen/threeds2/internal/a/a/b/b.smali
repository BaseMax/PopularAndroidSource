.class public final Lcom/adyen/threeds2/internal/a/a/b/b;
.super Lcom/adyen/threeds2/internal/a/a/b/i;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/a/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/adyen/threeds2/internal/a/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/a/c;)V
    .locals 6

    .line 52
    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/d;->CHALLENGE_REQUEST:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adyen/threeds2/internal/a/a/b/i;-><init>(Lcom/adyen/threeds2/internal/a/a/b/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p5, p0, Lcom/adyen/threeds2/internal/a/a/b/b;->a:Lcom/adyen/threeds2/internal/a/a/a/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/b;->a:Lcom/adyen/threeds2/internal/a/a/a/c;

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0}, Lcom/adyen/threeds2/internal/a/a/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/b;->a:Lcom/adyen/threeds2/internal/a/a/a/c;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/a/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adyen/threeds2/internal/a/b/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/adyen/threeds2/internal/a/a/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Lcom/adyen/threeds2/internal/a/a/a/c;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/b;->a:Lcom/adyen/threeds2/internal/a/a/a/c;

    return-object v0
.end method
