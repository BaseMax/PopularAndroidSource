.class public Lcom/yandex/metrica/impl/ad;
.super Lcom/yandex/metrica/impl/c;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ag;


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ou;

    const-string v2, "Deeplink"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ou;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ad;->c:Lcom/yandex/metrica/impl/ob/pa;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ou;

    const-string v2, "Referral url"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ou;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ad;->d:Lcom/yandex/metrica/impl/ob/pa;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/bi;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/bf;

    new-instance v1, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v1, p3}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/e;)V

    invoke-direct {v0, p2, v1}, Lcom/yandex/metrica/impl/bf;-><init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/CounterConfiguration;)V

    invoke-direct {p0, p1, p4, v0}, Lcom/yandex/metrica/impl/c;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/bf;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ad;->e:Z

    .line 54
    iget-object p2, p0, Lcom/yandex/metrica/impl/ad;->a:Lcom/yandex/metrica/impl/bf;

    new-instance p4, Lcom/yandex/metrica/impl/aw;

    iget-object v0, p3, Lcom/yandex/metrica/e;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    invoke-direct {p4, v0}, Lcom/yandex/metrica/impl/aw;-><init>(Lcom/yandex/metrica/PreloadInfo;)V

    invoke-virtual {p2, p4}, Lcom/yandex/metrica/impl/bf;->a(Lcom/yandex/metrica/impl/aw;)V

    .line 55
    iget-object p2, p3, Lcom/yandex/metrica/e;->crashReporting:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ad;->e:Z

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ". With value: "

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/nk;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Lcom/yandex/metrica/impl/bi;

    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    const-string v0, "Null activity parameter for reportAppOpen(Activity)"

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 123
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const-string v1, "Enable activity auto tracking"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/nk;->a(Ljava/lang/String;)V

    .line 1137
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/n;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/n;-><init>(Lcom/yandex/metrica/impl/ad;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 128
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    const-string v0, "Could not enable activity auto tracking. API level should be more than 14 (ICE_CREAM_SANDWICH)"

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/location/Location;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/e;Z)V
    .locals 1

    .line 157
    iget-object v0, p1, Lcom/yandex/metrica/e;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ad;->a(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ad;->b()V

    .line 162
    :cond_0
    iget-object p2, p1, Lcom/yandex/metrica/e;->i:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ad;->b(Ljava/util/Map;)V

    .line 163
    iget-object p1, p1, Lcom/yandex/metrica/e;->h:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ad;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Lcom/yandex/metrica/impl/bi;

    const/4 v1, 0x1

    .line 172
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result p1

    .line 171
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bi;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Z)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ad;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ad;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Invalid Error Environment (key,value) pair: (%s,%s)."

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ad;->e:Z

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ad;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ad;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Invalid App Environment (key,value) pair: (%s,%s)."

    .line 191
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method d(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 112
    sget-object v0, Lcom/yandex/metrica/impl/ad;->c:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 113
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Lcom/yandex/metrica/impl/bi;

    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 117
    sget-object v0, Lcom/yandex/metrica/impl/ad;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Lcom/yandex/metrica/impl/bi;

    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ad;->e:Z

    return v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error received: %s"

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/nk;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ad;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ad;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
