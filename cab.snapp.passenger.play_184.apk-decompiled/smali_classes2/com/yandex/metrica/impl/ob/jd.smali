.class public Lcom/yandex/metrica/impl/ob/jd;
.super Lcom/yandex/metrica/impl/ob/ix;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/jd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ix;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    const-string p2, "LOCATION_TRACKING_ENABLED"

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jd;->c:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jd;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jd;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jd;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/jd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ix;->j()V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "_serviceproviderspreferences"

    return-object v0
.end method
