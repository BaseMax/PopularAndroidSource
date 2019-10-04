.class public final Lcom/adyen/threeds2/internal/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/h/c/b;

.field private final b:Lcom/adyen/threeds2/internal/h/c/b;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x103

    .line 38
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/c/b;->a(Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/b/a/a;->a:Lcom/adyen/threeds2/internal/h/c/b;

    const/16 v0, 0x104

    .line 39
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/h/c/b;->a(Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/b/a/a;->b:Lcom/adyen/threeds2/internal/h/c/b;

    const/16 v0, 0x105

    .line 40
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/b/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/h/c/b;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/adyen/threeds2/internal/b/a/a;->a:Lcom/adyen/threeds2/internal/h/c/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/adyen/threeds2/internal/b/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
