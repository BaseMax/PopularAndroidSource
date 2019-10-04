.class public Lcom/yandex/metrica/impl/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/k$a;


# static fields
.field private static a:Lcom/yandex/metrica/impl/by;

.field private static b:Lcom/yandex/metrica/impl/o;

.field private static volatile c:Z

.field private static final d:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/yandex/metrica/IIdentifierCallback$Reason;",
            "Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Lcom/yandex/metrica/impl/bg;

.field private h:Lcom/yandex/metrica/impl/ad;

.field private i:Lcom/yandex/metrica/impl/al;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private final k:Lcom/yandex/metrica/impl/ob/lv;

.field private final l:Lcom/yandex/metrica/impl/ba;

.field private m:Lcom/yandex/metrica/impl/j;

.field private final n:Lcom/yandex/metrica/impl/ob/u;

.field private o:Ljava/util/concurrent/Executor;

.field private p:Lcom/yandex/metrica/IIdentifierCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/o;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/o;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/by;->b:Lcom/yandex/metrica/impl/o;

    .line 52
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/yandex/metrica/impl/by;->d:Ljava/util/EnumMap;

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/ni;

    const-string v1, "YMM-APT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ni;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/by;->e:Ljava/util/concurrent/Executor;

    .line 84
    sget-object v0, Lcom/yandex/metrica/impl/by;->d:Ljava/util/EnumMap;

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->UNKNOWN:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    sget-object v2, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;->UNKNOWN:Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/yandex/metrica/impl/by;->d:Ljava/util/EnumMap;

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    sget-object v2, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/yandex/metrica/impl/by;->d:Ljava/util/EnumMap;

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->NETWORK:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    sget-object v2, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;->NETWORK:Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/ob/ni;

    const-string v1, "YMM-RH"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ni;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/by;->j:Ljava/util/concurrent/ExecutorService;

    .line 78
    new-instance v0, Lcom/yandex/metrica/impl/ob/ni;

    const-string v1, "YMM-YM"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ni;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/by;->o:Ljava/util/concurrent/Executor;

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing of Metrica"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", Release type"

    .line 1055
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Version 3.2.2"

    .line 1056
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", API Level 70"

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Dated 09.08.2018."

    .line 1058
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->d()Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/nk;->a(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    .line 95
    new-instance p1, Lcom/yandex/metrica/impl/ob/u;

    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/u;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/by;->n:Lcom/yandex/metrica/impl/ob/u;

    .line 97
    invoke-static {}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->b()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 99
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v6, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    new-instance v4, Lcom/yandex/metrica/impl/bi;

    iget-object p1, p0, Lcom/yandex/metrica/impl/by;->n:Lcom/yandex/metrica/impl/ob/u;

    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->j:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    invoke-direct {v4, p1, v0, v1, v6}, Lcom/yandex/metrica/impl/bi;-><init>(Lcom/yandex/metrica/impl/ob/u;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 103
    sget-object p1, Lcom/yandex/metrica/impl/by;->b:Lcom/yandex/metrica/impl/o;

    invoke-virtual {p1, v4}, Lcom/yandex/metrica/impl/o;->a(Lcom/yandex/metrica/impl/bi;)V

    .line 105
    iget-object p1, p0, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fq;->f()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/yandex/metrica/impl/ob/gc;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/gc;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    .line 108
    new-instance p1, Lcom/yandex/metrica/impl/f;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/f;-><init>(Lcom/yandex/metrica/impl/ob/gc;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/f;->a(Landroid/content/Context;)V

    .line 110
    new-instance p1, Lcom/yandex/metrica/impl/ob/lv;

    invoke-direct {p1, v4, v0}, Lcom/yandex/metrica/impl/ob/lv;-><init>(Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/ob/gc;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    .line 111
    iget-object p1, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    invoke-virtual {v4, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/ob/lw;)V

    .line 113
    new-instance p1, Lcom/yandex/metrica/impl/ba;

    iget-object v1, p0, Lcom/yandex/metrica/impl/by;->o:Ljava/util/concurrent/Executor;

    invoke-direct {p1, v4, v0, v1}, Lcom/yandex/metrica/impl/ba;-><init>(Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/ob/gc;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/by;->l:Lcom/yandex/metrica/impl/ba;

    .line 115
    new-instance v5, Lcom/yandex/metrica/impl/k;

    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/k;-><init>(Landroid/os/Handler;)V

    .line 116
    invoke-virtual {v5, p0}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/k$a;)V

    .line 117
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/k;)V

    .line 119
    new-instance p1, Lcom/yandex/metrica/impl/bg;

    iget-object v2, p0, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/by;->n:Lcom/yandex/metrica/impl/ob/u;

    iget-object v7, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/bg;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/k;Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/lw;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/by;->g:Lcom/yandex/metrica/impl/bg;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/by;Lcom/yandex/metrica/IIdentifierCallback;)Lcom/yandex/metrica/IIdentifierCallback;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/by;->p:Lcom/yandex/metrica/IIdentifierCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/by;)Lcom/yandex/metrica/impl/ad;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;

    return-object p0
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 130
    sget-object v0, Lcom/yandex/metrica/impl/by;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/yandex/metrica/impl/by;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/by;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .locals 4

    const-class v0, Lcom/yandex/metrica/impl/by;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/by;->b:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/o;->d()Z

    move-result v1

    .line 140
    sget-object v2, Lcom/yandex/metrica/impl/by;->b:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/o;->a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;

    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/by;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    .line 142
    sget-object p0, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;

    iget-object p0, p0, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;

    if-nez p0, :cond_3

    .line 143
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/yandex/metrica/e;->logs:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 144
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/nk;->a()V

    .line 146
    :cond_0
    sget-object p0, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;

    .line 2303
    iget-object v2, p0, Lcom/yandex/metrica/impl/by;->g:Lcom/yandex/metrica/impl/bg;

    invoke-virtual {v2, p1, v1}, Lcom/yandex/metrica/impl/bg;->a(Lcom/yandex/metrica/e;Z)Lcom/yandex/metrica/impl/ad;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;

    .line 2304
    iget-object p1, p0, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ad;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3236
    iget-object v1, p0, Lcom/yandex/metrica/impl/by;->m:Lcom/yandex/metrica/impl/j;

    if-nez v1, :cond_1

    .line 3237
    new-instance v1, Lcom/yandex/metrica/impl/be;

    iget-object v2, p0, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;

    new-instance v3, Lcom/yandex/metrica/impl/by$1;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/by$1;-><init>(Lcom/yandex/metrica/impl/by;)V

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/be;-><init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/j$a;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/by;->m:Lcom/yandex/metrica/impl/j;

    .line 3243
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/by;->i:Lcom/yandex/metrica/impl/al;

    iget-object v2, p0, Lcom/yandex/metrica/impl/by;->m:Lcom/yandex/metrica/impl/j;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/al;->a(Lcom/yandex/metrica/impl/j;)V

    goto :goto_0

    .line 3245
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/by;->i:Lcom/yandex/metrica/impl/al;

    iget-object v2, p0, Lcom/yandex/metrica/impl/by;->m:Lcom/yandex/metrica/impl/j;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/al;->b(Lcom/yandex/metrica/impl/j;)V

    .line 3247
    :goto_0
    iget-object p0, p0, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ad;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    return-void

    .line 148
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 149
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p0

    const-string p1, "Appmetrica already has been activated!"

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1

    .line 251
    invoke-static {}, Lcom/yandex/metrica/impl/by;->i()Lcom/yandex/metrica/impl/ag;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ag;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 255
    invoke-static {}, Lcom/yandex/metrica/impl/by;->i()Lcom/yandex/metrica/impl/ag;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ag;->a(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;
    .locals 0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/by;->a(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Lcom/yandex/metrica/impl/by;->e()Lcom/yandex/metrica/impl/by;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .locals 3

    const-class v0, Lcom/yandex/metrica/impl/by;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Lcom/yandex/metrica/impl/by;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/by;-><init>(Landroid/content/Context;)V

    .line 161
    sput-object v1, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;

    .line 4200
    iget-object p0, v1, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 4208
    iget-object p0, v1, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    iget-object v2, p1, Lcom/yandex/metrica/e;->d:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/lv;->a(Ljava/util/List;)V

    .line 4209
    iget-object p0, v1, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    iget-object v2, p1, Lcom/yandex/metrica/e;->b:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/lv;->a(Ljava/util/Map;)V

    .line 4210
    iget-object p0, v1, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    iget-object v2, p1, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/lv;->a(Ljava/lang/String;)V

    .line 4212
    :cond_0
    iget-object p0, v1, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lv;->c()V

    .line 4202
    iget-object p0, v1, Lcom/yandex/metrica/impl/by;->n:Lcom/yandex/metrica/impl/ob/u;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/u;->a(Lcom/yandex/metrica/e;)V

    .line 4203
    iget-object p0, v1, Lcom/yandex/metrica/impl/by;->j:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/yandex/metrica/impl/ob/ng$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/by;->f:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/yandex/metrica/impl/ob/ng$a;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 162
    sget-object p0, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/by;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    sput-boolean v0, Lcom/yandex/metrica/impl/by;->c:Z

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 171
    sget-boolean v0, Lcom/yandex/metrica/impl/by;->c:Z

    return v0
.end method

.method public static declared-synchronized e()Lcom/yandex/metrica/impl/by;
    .locals 2

    const-class v0, Lcom/yandex/metrica/impl/by;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f()Lcom/yandex/metrica/impl/by;
    .locals 1

    .line 188
    invoke-static {}, Lcom/yandex/metrica/impl/by;->e()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized g()Lcom/yandex/metrica/impl/ad;
    .locals 2

    const-class v0, Lcom/yandex/metrica/impl/by;

    monitor-enter v0

    .line 192
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/by;->e()Lcom/yandex/metrica/impl/by;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized h()Z
    .locals 2

    const-class v0, Lcom/yandex/metrica/impl/by;

    monitor-enter v0

    .line 196
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yandex/metrica/impl/by;->a:Lcom/yandex/metrica/impl/by;

    iget-object v1, v1, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method static i()Lcom/yandex/metrica/impl/ag;
    .locals 1

    .line 229
    invoke-static {}, Lcom/yandex/metrica/impl/by;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/yandex/metrica/impl/by;->e()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/by;->h:Lcom/yandex/metrica/impl/ad;

    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/by;->b:Lcom/yandex/metrica/impl/o;

    return-object v0
.end method

.method static synthetic l()Ljava/util/EnumMap;
    .locals 1

    .line 44
    sget-object v0, Lcom/yandex/metrica/impl/by;->d:Ljava/util/EnumMap;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/lv;->b(Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/lv;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 1

    .line 373
    new-instance v0, Lcom/yandex/metrica/impl/by$3;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/by$3;-><init>(Lcom/yandex/metrica/impl/by;Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/by;->p:Lcom/yandex/metrica/IIdentifierCallback;

    .line 391
    iget-object p1, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->p:Lcom/yandex/metrica/IIdentifierCallback;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/lv;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->l:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lv;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/c;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->g:Lcom/yandex/metrica/impl/bg;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bg;->a(Lcom/yandex/metrica/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->l:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/yandex/metrica/c;)Lcom/yandex/metrica/b;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->g:Lcom/yandex/metrica/impl/bg;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bg;->b(Lcom/yandex/metrica/c;)Lcom/yandex/metrica/b;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 4

    .line 134
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 1332
    new-instance v1, Lcom/yandex/metrica/impl/al;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/al;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1334
    new-instance v0, Lcom/yandex/metrica/impl/be;

    iget-object v2, p0, Lcom/yandex/metrica/impl/by;->g:Lcom/yandex/metrica/impl/bg;

    const-string v3, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 1337
    invoke-static {v3}, Lcom/yandex/metrica/c;->a(Ljava/lang/String;)Lcom/yandex/metrica/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/c$a;->a()Lcom/yandex/metrica/c;

    move-result-object v3

    .line 1336
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/bg;->b(Lcom/yandex/metrica/c;)Lcom/yandex/metrica/b;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/by$2;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/by$2;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/yandex/metrica/impl/be;-><init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/j$a;)V

    .line 1334
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/al;->a(Lcom/yandex/metrica/impl/j;)V

    .line 134
    iput-object v1, p0, Lcom/yandex/metrica/impl/by;->i:Lcom/yandex/metrica/impl/al;

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->i:Lcom/yandex/metrica/impl/al;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 259
    invoke-static {}, Lcom/yandex/metrica/impl/by;->i()Lcom/yandex/metrica/impl/ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ag;->a(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 263
    invoke-static {}, Lcom/yandex/metrica/impl/by;->i()Lcom/yandex/metrica/impl/ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ag;->setStatisticsSending(Z)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lv;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/by;->k:Lcom/yandex/metrica/impl/ob/lv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lv;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
