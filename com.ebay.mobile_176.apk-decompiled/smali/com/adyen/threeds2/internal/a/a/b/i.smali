.class public abstract Lcom/adyen/threeds2/internal/a/a/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/internal/a/b/b;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/a/b/a/d;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/adyen/threeds2/internal/a/a/b/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->a:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    .line 55
    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->b:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->c:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->d:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x74

    .line 65
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->a:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x75

    .line 66
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x76

    .line 67
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x77

    .line 68
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x78

    .line 69
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x79

    .line 70
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v3, 0x7a

    invoke-static {v3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->f:I

    return-void
.end method

.method public abstract b()Z
.end method

.method public d()Lcom/adyen/threeds2/internal/a/a/b/a/d;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->a:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/adyen/threeds2/internal/a/a/b/i;->f:I

    return v0
.end method
