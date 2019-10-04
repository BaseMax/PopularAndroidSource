.class public Lcom/raizlabs/android/dbflow/d/d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/d/d$a;,
        Lcom/raizlabs/android/dbflow/d/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Z


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/d/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field public isInTransaction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/d/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    sput-boolean v1, Lcom/raizlabs/android/dbflow/d/d;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->f:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->g:Ljava/util/Set;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/d;->isInTransaction:Z

    .line 97
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/d;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 90
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    .line 91
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    .line 93
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->f:Ljava/util/Set;

    .line 94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->g:Ljava/util/Set;

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/d/d;->isInTransaction:Z

    .line 97
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/d/d;->h:Z

    return-void
.end method

.method private a(Landroid/net/Uri;Z)V
    .locals 8

    .line 255
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 262
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 263
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 265
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    new-instance v7, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-direct {v7, v5}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v5

    invoke-static {v5}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v5

    .line 269
    invoke-virtual {v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/t;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 275
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    .line 276
    iget-boolean v2, p0, Lcom/raizlabs/android/dbflow/d/d;->isInTransaction:Z

    if-nez v2, :cond_3

    .line 278
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/d/d$b;

    .line 279
    invoke-interface {v2, v1, v0, v3}, Lcom/raizlabs/android/dbflow/d/d$b;->onModelStateChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/w;)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 283
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/raizlabs/android/dbflow/d/g;

    .line 284
    invoke-interface {p2, v1, v0}, Lcom/raizlabs/android/dbflow/d/g;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_2

    :cond_2
    return-void

    .line 289
    :cond_3
    iget-boolean p2, p0, Lcom/raizlabs/android/dbflow/d/d;->h:Z

    if-nez p2, :cond_4

    .line 290
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 291
    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/sql/d;->getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;

    move-result-object p1

    .line 293
    :cond_4
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/d/d;->f:Ljava/util/Set;

    monitor-enter p2

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/d/d;->f:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->g:Ljava/util/Set;

    monitor-enter p1

    .line 299
    :try_start_1
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/d/d;->g:Ljava/util/Set;

    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/sql/d;->getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 296
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static clearRegisteredObserverCount()V
    .locals 2

    .line 55
    sget-object v0, Lcom/raizlabs/android/dbflow/d/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static setShouldForceNotify(Z)V
    .locals 0

    .line 63
    sput-boolean p0, Lcom/raizlabs/android/dbflow/d/d;->b:Z

    return-void
.end method

.method public static shouldNotify()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/raizlabs/android/dbflow/d/d;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/raizlabs/android/dbflow/d/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addContentChangeListener(Lcom/raizlabs/android/dbflow/d/d$a;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addModelChangeListener(Lcom/raizlabs/android/dbflow/d/d$b;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnTableChangedListener(Lcom/raizlabs/android/dbflow/d/g;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginTransaction()V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/d;->isInTransaction:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/d;->isInTransaction:Z

    :cond_0
    return-void
.end method

.method public endTransactionAndNotify()V
    .locals 7

    .line 132
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/d;->isInTransaction:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/d;->isInTransaction:Z

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 136
    invoke-virtual {p0, v2}, Lcom/raizlabs/android/dbflow/d/d;->onChange(Z)V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->f:Ljava/util/Set;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/d;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 140
    invoke-direct {p0, v3, v2}, Lcom/raizlabs/android/dbflow/d/d;->a(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/d;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/d;->g:Ljava/util/Set;

    monitor-enter v1

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 146
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/raizlabs/android/dbflow/d/g;

    .line 147
    iget-object v5, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 148
    invoke-virtual {v2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v6

    .line 147
    invoke-interface {v4, v5, v6}, Lcom/raizlabs/android/dbflow/d/g;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 152
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 143
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    return-void
.end method

.method public isSubscribed()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    .line 238
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/d/d$b;

    .line 239
    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/w;

    invoke-interface {v0, v1, v2, v3}, Lcom/raizlabs/android/dbflow/d/d$b;->onModelStateChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/w;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/d/g;

    .line 243
    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/d/g;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const/4 p1, 0x0

    .line 250
    invoke-direct {p0, p2, p1}, Lcom/raizlabs/android/dbflow/d/d;->a(Landroid/net/Uri;Z)V

    return-void
.end method

.method public registerForContentChanges(Landroid/content/ContentResolver;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-static {p2, v0}, Lcom/raizlabs/android/dbflow/sql/d;->getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    sget-object p1, Lcom/raizlabs/android/dbflow/d/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 218
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/d/d;->registerForContentChanges(Landroid/content/ContentResolver;Ljava/lang/Class;)V

    return-void
.end method

.method public removeContentChangeListener(Lcom/raizlabs/android/dbflow/d/d$a;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeModelChangeListener(Lcom/raizlabs/android/dbflow/d/d$b;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTableChangedListener(Lcom/raizlabs/android/dbflow/d/g;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNotifyAllUris(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/d/d;->h:Z

    return-void
.end method

.method public unregisterForContentChanges(Landroid/content/Context;)V
    .locals 0

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 228
    sget-object p1, Lcom/raizlabs/android/dbflow/d/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 229
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/d;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method
