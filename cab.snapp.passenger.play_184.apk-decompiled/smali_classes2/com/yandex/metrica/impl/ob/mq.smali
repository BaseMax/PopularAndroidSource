.class Lcom/yandex/metrica/impl/ob/mq;
.super Lcom/yandex/metrica/impl/ob/mm;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/mq$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/telephony/PhoneStateListener;

.field private c:Z

.field private d:Lcom/yandex/metrica/impl/ob/ma;

.field private final e:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a<",
            "Lcom/yandex/metrica/impl/ob/my;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a<",
            "[",
            "Lcom/yandex/metrica/impl/ob/mn;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/yandex/metrica/impl/ob/mp;

.field private final j:Lcom/yandex/metrica/impl/ob/mv;

.field private final k:Lcom/yandex/metrica/impl/ob/ms;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mm;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/mq;->c:Z

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->f:Lcom/yandex/metrica/impl/d$a;

    .line 62
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->h:Landroid/content/Context;

    const-string v0, "phone"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->a:Landroid/telephony/TelephonyManager;

    const-string p1, "YMM-TP"

    .line 64
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->g:Landroid/os/Handler;

    .line 68
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->g:Landroid/os/Handler;

    new-instance v0, Lcom/yandex/metrica/impl/ob/mq$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/mq$1;-><init>(Lcom/yandex/metrica/impl/ob/mq;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    new-instance p1, Lcom/yandex/metrica/impl/ob/mp;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/mp;-><init>(Lcom/yandex/metrica/impl/ob/mq;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->i:Lcom/yandex/metrica/impl/ob/mp;

    .line 74
    new-instance p1, Lcom/yandex/metrica/impl/ob/mv;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/mv;-><init>(Lcom/yandex/metrica/impl/ob/mq;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->j:Lcom/yandex/metrica/impl/ob/mv;

    .line 75
    new-instance p1, Lcom/yandex/metrica/impl/ob/ms;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/ms;-><init>(Lcom/yandex/metrica/impl/ob/mq;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->k:Lcom/yandex/metrica/impl/ob/ms;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/mq;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->b:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/mq;Lcom/yandex/metrica/impl/ob/ma;)Lcom/yandex/metrica/impl/ob/ma;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq;->d:Lcom/yandex/metrica/impl/ob/ma;

    return-object p1
.end method

.method private declared-synchronized a(Landroid/telephony/SignalStrength;)V
    .locals 3

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/my;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/my;->b()Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2249
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2264
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    const/16 v1, 0x63

    if-ne v1, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    goto :goto_0

    .line 2252
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 2253
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p1

    const/16 v2, -0x78

    if-ne v2, p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_3

    goto :goto_0

    .line 2254
    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 239
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/mn;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/mq;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mq;->a(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/mq;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/ob/mq;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/mq;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/mq;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/mq;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/mq;->b:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/mq;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/mq;->a:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private declared-synchronized k()[Lcom/yandex/metrica/impl/ob/mn;
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/mn;

    goto :goto_1

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mq;->f()[Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->d:Lcom/yandex/metrica/impl/ob/ma;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/mq$2;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/mq$2;-><init>(Lcom/yandex/metrica/impl/ob/mq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/mo;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mq;->k()[Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/mo;->a([Lcom/yandex/metrica/impl/ob/mn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/mz;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mq;->e()Lcom/yandex/metrica/impl/ob/my;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/mz;->a(Lcom/yandex/metrica/impl/ob/my;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/mq$3;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/mq$3;-><init>(Lcom/yandex/metrica/impl/ob/mq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->a:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->h:Landroid/content/Context;

    return-object v0
.end method

.method declared-synchronized e()Lcom/yandex/metrica/impl/ob/my;
    .locals 4

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/my;

    goto :goto_1

    .line 168
    :cond_1
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/my;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mq;->i:Lcom/yandex/metrica/impl/ob/mp;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mq;->j:Lcom/yandex/metrica/impl/ob/mv;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/mq;->k:Lcom/yandex/metrica/impl/ob/ms;

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/my;-><init>(Lcom/yandex/metrica/impl/ob/mx;Lcom/yandex/metrica/impl/ob/mx;Lcom/yandex/metrica/impl/ob/mx;)V

    .line 170
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/my;->b()Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mn;->a()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/my;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/my;->b()Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/my;->b()Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mn;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/mn;->a(Ljava/lang/Integer;)V

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()[Lcom/yandex/metrica/impl/ob/mn;
    .locals 7

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mq;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    .line 203
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mq;->h:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1030
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/au;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mq;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 208
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 209
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 2164
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 2165
    new-instance v5, Lcom/yandex/metrica/impl/ob/mn$c;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/mn$c;-><init>()V

    goto :goto_1

    .line 2167
    :cond_0
    instance-of v5, v4, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_1

    .line 2168
    new-instance v5, Lcom/yandex/metrica/impl/ob/mn$a;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/mn$a;-><init>()V

    goto :goto_1

    .line 2170
    :cond_1
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_2

    .line 2171
    new-instance v5, Lcom/yandex/metrica/impl/ob/mn$d;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/mn$d;-><init>()V

    goto :goto_1

    :cond_2
    const/16 v5, 0x12

    .line 2173
    invoke-static {v5}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_3

    .line 2174
    new-instance v5, Lcom/yandex/metrica/impl/ob/mn$e;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/mn$e;-><init>()V

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    .line 2159
    :cond_4
    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/mn$b;->a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_5

    .line 211
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 218
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_8

    .line 219
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mq;->e()Lcom/yandex/metrica/impl/ob/my;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/my;->b()Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v0

    if-nez v0, :cond_7

    new-array v0, v2, [Lcom/yandex/metrica/impl/ob/mn;

    return-object v0

    :cond_7
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/mn;

    aput-object v0, v1, v2

    return-object v1

    .line 226
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/mn;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/mn;

    return-object v0
.end method

.method declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mq;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->d:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/lp;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mq;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->d:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/lp;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mq;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->d:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/lp;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mq;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq;->d:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/lp;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
