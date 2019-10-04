.class public Lcom/yandex/metrica/impl/ob/kp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/by;
    .locals 1

    .line 23
    invoke-static {}, Lcom/yandex/metrica/impl/by;->f()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;
    .locals 0

    .line 17
    invoke-static {p1}, Lcom/yandex/metrica/impl/by;->b(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .locals 0

    .line 27
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/by;->a(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/yandex/metrica/impl/by;->b(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/by;->b(Z)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/yandex/metrica/impl/by;->a(Landroid/location/Location;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/yandex/metrica/impl/by;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/yandex/metrica/impl/by;->c()V

    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/yandex/metrica/impl/by;->b(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/by;->c(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/yandex/metrica/impl/by;->d()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 39
    invoke-static {}, Lcom/yandex/metrica/impl/by;->f()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/yandex/metrica/impl/ad;
    .locals 1

    .line 43
    invoke-static {}, Lcom/yandex/metrica/impl/by;->g()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/by;
    .locals 1

    .line 63
    invoke-static {}, Lcom/yandex/metrica/impl/by;->e()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    return-object v0
.end method
