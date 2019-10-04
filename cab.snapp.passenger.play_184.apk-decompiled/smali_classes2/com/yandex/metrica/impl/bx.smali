.class public final Lcom/yandex/metrica/impl/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/yandex/metrica/impl/ob/ko;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/ko;

    invoke-static {}, Lcom/yandex/metrica/impl/by;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ko;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    return-void
.end method

.method public static a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1

    .line 118
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/util/List;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/YandexMetricaConfig;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/YandexMetricaConfig;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/util/List;)Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .locals 1

    .line 55
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 93
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ko;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/ko;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V

    return-void
.end method

.method public static a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ko;->a()Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ko;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ko;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/Boolean;
    .locals 1

    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ko;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()V
    .locals 1

    .line 102
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ko;->e()V

    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method public static g(Landroid/content/Context;)Landroid/location/Location;
    .locals 1

    .line 137
    sget-object v0, Lcom/yandex/metrica/impl/bx;->a:Lcom/yandex/metrica/impl/ob/ko;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ko;->g(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static g()V
    .locals 0

    return-void
.end method
