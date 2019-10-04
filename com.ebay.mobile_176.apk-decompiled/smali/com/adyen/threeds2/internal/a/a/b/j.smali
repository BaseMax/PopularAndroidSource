.class public abstract Lcom/adyen/threeds2/internal/a/a/b/j;
.super Lcom/adyen/threeds2/internal/a/a/b/k;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/a/b/a/d;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/a/a/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/k;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x7e

    .line 75
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->a:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    const/16 v0, 0x7f

    .line 78
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->b:Ljava/lang/String;

    const/16 v0, 0x80

    .line 79
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/j;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->c:Ljava/lang/String;

    const/16 v0, 0x81

    .line 80
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->d:Ljava/lang/String;

    const/16 v0, 0x82

    .line 81
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/j;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->e:Ljava/lang/String;

    const/16 v0, 0x83

    .line 83
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-static {p1}, Lcom/adyen/threeds2/internal/a/a/b/h;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->f:Ljava/util/List;

    .line 86
    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->f:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v0, 0x84

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, p1, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x85

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/a/a/b/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 56
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/j$1;->a:[I

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    new-instance p0, Lcom/adyen/threeds2/internal/g/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7d

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p0

    .line 65
    :pswitch_0
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/e;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/a/b/e;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 63
    :pswitch_1
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/c;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/a/b/c;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 58
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x7c

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p0, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method abstract a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract e()Z
.end method

.method public f()Lcom/adyen/threeds2/internal/a/a/b/a/d;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->a:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/j;->e:Ljava/lang/String;

    return-object v0
.end method
