.class public Lcom/yandex/metrica/impl/ob/hw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/hw$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static volatile b:Lcom/yandex/metrica/impl/ob/hw;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Lcom/yandex/metrica/impl/ob/hx;

.field private final f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/yandex/metrica/impl/ob/gf;

.field private i:Lcom/yandex/metrica/impl/ob/hq;

.field private j:Lcom/yandex/metrica/impl/ob/ma;

.field private k:Lcom/yandex/metrica/impl/ob/ie;

.field private l:Lcom/yandex/metrica/impl/ob/hw$a;

.field private m:Ljava/lang/Runnable;

.field private n:Lcom/yandex/metrica/impl/ob/ft;

.field private o:Lcom/yandex/metrica/impl/ob/fs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/ob/hw;->a:J

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/hw;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 98
    new-instance v2, Lcom/yandex/metrica/impl/ob/hx;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/hx;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/gf;

    .line 105
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/hw$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/hw$a;-><init>()V

    .line 107
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->g()Lcom/yandex/metrica/impl/ob/ft;

    move-result-object v5

    .line 108
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->h()Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/hw;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hx;Lcom/yandex/metrica/impl/ob/gf;Lcom/yandex/metrica/impl/ob/hw$a;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hx;Lcom/yandex/metrica/impl/ob/gf;Lcom/yandex/metrica/impl/ob/hw$a;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hw;->g:Z

    .line 293
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hw;->d:Landroid/content/Context;

    .line 294
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hw;->e:Lcom/yandex/metrica/impl/ob/hx;

    .line 295
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/hw;->h:Lcom/yandex/metrica/impl/ob/gf;

    .line 296
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hw;->f:Ljava/util/WeakHashMap;

    .line 297
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/hw;->l:Lcom/yandex/metrica/impl/ob/hw$a;

    .line 298
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/gf;->g()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/hw;->g:Z

    .line 299
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/hw;->n:Lcom/yandex/metrica/impl/ob/ft;

    .line 300
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/hw;->o:Lcom/yandex/metrica/impl/ob/fs;

    return-void
.end method

.method public static a([B)Landroid/location/Location;
    .locals 3

    if-eqz p0, :cond_0

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 236
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 237
    const-class p0, Landroid/location/Location;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    throw p0

    .line 241
    :catch_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;
    .locals 2

    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/ob/hw;->b:Lcom/yandex/metrica/impl/ob/hw;

    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/yandex/metrica/impl/ob/hw;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/hw;->b:Lcom/yandex/metrica/impl/ob/hw;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/yandex/metrica/impl/ob/hw;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/hw;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/hw;->b:Lcom/yandex/metrica/impl/ob/hw;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/yandex/metrica/impl/ob/hw;->b:Lcom/yandex/metrica/impl/ob/hw;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/hw;)Lcom/yandex/metrica/impl/ob/ie;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    return-object p0
.end method

.method public static a(Landroid/location/Location;)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 217
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    throw p0

    .line 222
    :catch_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/hw;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hw;->g()V

    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/hw;)Lcom/yandex/metrica/impl/ob/ma;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/hw;->j:Lcom/yandex/metrica/impl/ob/ma;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/hw;)Lcom/yandex/metrica/impl/ob/hq;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/hw;->i:Lcom/yandex/metrica/impl/ob/hq;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ie;->f()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hw;->e:Lcom/yandex/metrica/impl/ob/hx;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/hx;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 8

    .line 164
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    if-nez v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hw;->l:Lcom/yandex/metrica/impl/ob/hw$a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hw;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->e:Lcom/yandex/metrica/impl/ob/hx;

    .line 166
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hx;->a()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/hw;->j:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/hw;->i:Lcom/yandex/metrica/impl/ob/hq;

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/hw;->n:Lcom/yandex/metrica/impl/ob/ft;

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/hw;->o:Lcom/yandex/metrica/impl/ob/fs;

    .line 165
    invoke-virtual/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/hw$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)Lcom/yandex/metrica/impl/ob/ie;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ie;->e()V

    .line 2187
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->m:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2188
    new-instance v0, Lcom/yandex/metrica/impl/ob/hw$2;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/hw$2;-><init>(Lcom/yandex/metrica/impl/ob/hw;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->m:Ljava/lang/Runnable;

    .line 2197
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hw;->g()V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->e:Lcom/yandex/metrica/impl/ob/hx;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hw;->m:Ljava/lang/Runnable;

    sget-wide v2, Lcom/yandex/metrica/impl/ob/hw;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/hx;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->e:Lcom/yandex/metrica/impl/ob/hx;

    new-instance v1, Lcom/yandex/metrica/impl/ob/hw$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/hw$1;-><init>(Lcom/yandex/metrica/impl/ob/hw;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/hx;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hw;->j:Lcom/yandex/metrica/impl/ob/ma;

    .line 267
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hw;->i:Lcom/yandex/metrica/impl/ob/hq;

    .line 271
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hw;->e:Lcom/yandex/metrica/impl/ob/hx;

    new-instance p2, Lcom/yandex/metrica/impl/ob/hw$3;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/ob/hw$3;-><init>(Lcom/yandex/metrica/impl/ob/hw;)V

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/hx;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->f:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ob/hw;->g:Z

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hw;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hw;->g:Z

    if-eq v0, p1, :cond_1

    .line 250
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/hw;->g:Z

    .line 251
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hw;->h:Lcom/yandex/metrica/impl/ob/gf;

    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hw;->g:Z

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gf;->a(Z)V

    .line 252
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ob/hw;->g:Z

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hw;->f:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hw;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 259
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hw;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hw;->e()V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hw;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Landroid/location/Location;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ie;->b()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/location/Location;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw;->k:Lcom/yandex/metrica/impl/ob/ie;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ie;->c()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
