.class public Lcom/yandex/metrica/ConfigurationService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/ConfigurationService$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/fb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/ob/es;

.field private c:Lcom/yandex/metrica/impl/ob/ew;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 101
    new-instance p1, Lcom/yandex/metrica/ConfigurationService$a;

    invoke-direct {p1}, Lcom/yandex/metrica/ConfigurationService$a;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[ConfigurationService:%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/ob/es;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/es;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->b:Lcom/yandex/metrica/impl/ob/es;

    .line 65
    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/yandex/metrica/impl/ob/ey;

    iget-object v2, p0, Lcom/yandex/metrica/ConfigurationService;->b:Lcom/yandex/metrica/impl/ob/es;

    .line 67
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/es;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const/16 v3, 0x1a

    .line 1075
    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1085
    new-instance v3, Lcom/yandex/metrica/impl/ob/et;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/ob/et;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 2080
    :cond_0
    new-instance v3, Lcom/yandex/metrica/impl/ob/er;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/ob/er;-><init>(Landroid/content/Context;)V

    .line 67
    :goto_0
    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ey;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/ez;)V

    .line 68
    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ew;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->c:Lcom/yandex/metrica/impl/ob/ew;

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->c:Lcom/yandex/metrica/impl/ob/ew;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ew;->a()Z

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->a:Ljava/util/Map;

    new-instance v2, Lcom/yandex/metrica/impl/ob/fd;

    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/yandex/metrica/impl/ob/fd;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ey;)V

    const-string v3, "com.yandex.metrica.configuration.ACTION_START"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->a:Ljava/util/Map;

    new-instance v2, Lcom/yandex/metrica/impl/ob/fc;

    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationService;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/impl/ob/fc;-><init>(Lcom/yandex/metrica/impl/ob/ey;)V

    const-string v1, "com.yandex.metrica.configuration.ACTION_SCHEDULED_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 107
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ew;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ew;->b()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p3, p2

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/metrica/impl/ob/fb;

    if-eqz p3, :cond_2

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/ConfigurationService;->b:Lcom/yandex/metrica/impl/ob/es;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p3, p2}, Lcom/yandex/metrica/impl/ob/es;->a(Lcom/yandex/metrica/impl/ob/fb;Landroid/os/Bundle;)V

    :cond_2
    const/4 p1, 0x2

    return p1
.end method
