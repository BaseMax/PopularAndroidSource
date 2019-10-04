.class public final Lcom/adyen/threeds2/internal/a/a/b/c;
.super Lcom/adyen/threeds2/internal/a/a/b/j;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

.field private final b:I

.field private final c:Lcom/adyen/threeds2/internal/a/a/b/a/a;

.field private final d:Lcom/adyen/threeds2/internal/a/a/b/a/e;

.field private final e:Lcom/adyen/threeds2/internal/a/a/b/a;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/j;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x51

    .line 50
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->b:I

    const/16 v0, 0x52

    .line 51
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->c:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    .line 53
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->c:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/e;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/e;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/e;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->d:Lcom/adyen/threeds2/internal/a/a/b/a/e;

    .line 56
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->c:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x55

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x56

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    .line 59
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->c:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/adyen/threeds2/internal/a/a/b/a;->a(Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/a/a/b/a;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->e:Lcom/adyen/threeds2/internal/a/a/b/a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x57

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->b:I

    return v0
.end method

.method a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->d:Lcom/adyen/threeds2/internal/a/a/b/a/e;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/adyen/threeds2/internal/a/a/b/a;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->e:Lcom/adyen/threeds2/internal/a/a/b/a;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/c;->c:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
