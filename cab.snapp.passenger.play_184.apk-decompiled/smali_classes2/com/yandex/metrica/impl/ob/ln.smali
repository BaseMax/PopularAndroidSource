.class public Lcom/yandex/metrica/impl/ob/ln;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ln;->a:Lorg/a/c;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ln;->a:Lorg/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ln;->a:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uuid"

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ln;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_id"

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ln;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "google_aid"

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ln;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android_id"

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ln;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
