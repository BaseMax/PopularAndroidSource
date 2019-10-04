.class public Lcom/adyen/threeds2/internal/a/a/b/d;
.super Lcom/adyen/threeds2/internal/a/a/b/i;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;Ljava/lang/String;)V
    .locals 6

    .line 45
    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ERROR:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adyen/threeds2/internal/a/a/b/i;-><init>(Lcom/adyen/threeds2/internal/a/a/b/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p5, p0, Lcom/adyen/threeds2/internal/a/a/b/d;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 48
    iput-object p6, p0, Lcom/adyen/threeds2/internal/a/a/b/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    invoke-super {p0}, Lcom/adyen/threeds2/internal/a/a/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x58

    .line 55
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/d;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x59

    .line 56
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/d;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x5a

    .line 57
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/d;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x5b

    .line 58
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/d;->a:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x5c

    .line 59
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
