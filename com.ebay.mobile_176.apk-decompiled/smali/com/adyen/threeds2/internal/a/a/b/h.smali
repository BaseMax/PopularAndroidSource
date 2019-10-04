.class Lcom/adyen/threeds2/internal/a/a/b/h;
.super Lcom/adyen/threeds2/internal/a/a/b/k;


# static fields
.field private static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/h;->a:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/k;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x6b

    .line 69
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/h;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->b:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_4

    const/16 v0, 0x6d

    .line 74
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/h;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->c:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_3

    const/16 v0, 0x6f

    .line 79
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->d:Z

    .line 80
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/h;->a:Ljava/util/Collection;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x70

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_EXTENSION_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x71

    .line 84
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->e:Lorg/json/JSONObject;

    .line 85
    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/h;->e:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1f7b

    if-gt p1, v0, :cond_2

    return-void

    .line 86
    :cond_2
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x72

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    .line 76
    :cond_3
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x6e

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    .line 71
    :cond_4
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x6c

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x73

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method

.method static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/a/a/b/h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    new-instance v3, Lcom/adyen/threeds2/internal/a/a/b/h;

    invoke-direct {v3, v2}, Lcom/adyen/threeds2/internal/a/a/b/h;-><init>(Lorg/json/JSONObject;)V

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
