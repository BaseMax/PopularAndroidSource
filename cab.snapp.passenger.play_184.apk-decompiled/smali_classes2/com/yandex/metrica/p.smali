.class public final Lcom/yandex/metrica/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/bx;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V

    return-void
.end method

.method public static a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    return-void
.end method

.method public static cpcwh(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/bx;->a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object p0

    return-object p0
.end method

.method public static gbc(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static gcni(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gdi(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static gdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static glkl(Landroid/content/Context;)Landroid/location/Location;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->g(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static gmsvn(I)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static guid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-static {}, Lcom/yandex/metrica/impl/bx;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static iifa()Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/yandex/metrica/impl/bx;->a()Z

    move-result v0

    return v0
.end method

.method public static mpn(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pgai()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Lcom/yandex/metrica/impl/bx;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static plat()Ljava/lang/Boolean;
    .locals 1

    .line 39
    invoke-static {}, Lcom/yandex/metrica/impl/bx;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static rce(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/bx;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static rolu(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-static {}, Lcom/yandex/metrica/impl/bx;->f()V

    return-void
.end method

.method public static seb()V
    .locals 0

    .line 95
    invoke-static {}, Lcom/yandex/metrica/impl/bx;->e()V

    return-void
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/yandex/metrica/impl/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static urolu(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-static {}, Lcom/yandex/metrica/impl/bx;->g()V

    return-void
.end method
