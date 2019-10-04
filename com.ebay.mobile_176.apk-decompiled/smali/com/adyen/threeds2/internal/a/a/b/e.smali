.class public Lcom/adyen/threeds2/internal/a/a/b/e;
.super Lcom/adyen/threeds2/internal/a/a/b/j;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/j;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x5d

    .line 47
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/e;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->a:Ljava/lang/String;

    const/16 v0, 0x5e

    .line 48
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/e;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->b:Ljava/lang/String;

    const/16 v0, 0x5f

    .line 49
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/e;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->c:Ljava/lang/String;

    const/16 v0, 0x60

    .line 50
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/e;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->d:Ljava/lang/String;

    const/16 v0, 0x61

    .line 51
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/e;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x62

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/e;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
