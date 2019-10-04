.class public final Lio/fabric/sdk/android/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[Lio/fabric/sdk/android/i;

.field private c:Lio/fabric/sdk/android/services/concurrency/i;

.field private d:Landroid/os/Handler;

.field private e:Lio/fabric/sdk/android/l;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lio/fabric/sdk/android/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/f<",
            "Lio/fabric/sdk/android/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lio/fabric/sdk/android/c$a;->a:Landroid/content/Context;

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final appIdentifier(Ljava/lang/String;)Lio/fabric/sdk/android/c$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 174
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 178
    iput-object p1, p0, Lio/fabric/sdk/android/c$a;->h:Ljava/lang/String;

    return-object p0

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "appIdentifier already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appIdentifier must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final appInstallIdentifier(Ljava/lang/String;)Lio/fabric/sdk/android/c$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 194
    iput-object p1, p0, Lio/fabric/sdk/android/c$a;->g:Ljava/lang/String;

    return-object p0

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "appInstallIdentifier already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appInstallIdentifier must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final build()Lio/fabric/sdk/android/c;
    .locals 11

    .line 227
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->c:Lio/fabric/sdk/android/services/concurrency/i;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/i;->create()Lio/fabric/sdk/android/services/concurrency/i;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/c$a;->c:Lio/fabric/sdk/android/services/concurrency/i;

    .line 231
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/fabric/sdk/android/c$a;->d:Landroid/os/Handler;

    .line 235
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->e:Lio/fabric/sdk/android/l;

    if-nez v0, :cond_3

    .line 236
    iget-boolean v0, p0, Lio/fabric/sdk/android/c$a;->f:Z

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Lio/fabric/sdk/android/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/b;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/c$a;->e:Lio/fabric/sdk/android/l;

    goto :goto_0

    .line 239
    :cond_2
    new-instance v0, Lio/fabric/sdk/android/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/b;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/c$a;->e:Lio/fabric/sdk/android/l;

    .line 244
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 245
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/c$a;->h:Ljava/lang/String;

    .line 248
    :cond_4
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->i:Lio/fabric/sdk/android/f;

    if-nez v0, :cond_5

    .line 249
    sget-object v0, Lio/fabric/sdk/android/f;->EMPTY:Lio/fabric/sdk/android/f;

    iput-object v0, p0, Lio/fabric/sdk/android/c$a;->i:Lio/fabric/sdk/android/f;

    .line 253
    :cond_5
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->b:[Lio/fabric/sdk/android/i;

    if-nez v0, :cond_6

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 256
    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 259
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 261
    new-instance v9, Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->h:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/c$a;->g:Ljava/lang/String;

    .line 262
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v9, v2, v0, v1, v4}, Lio/fabric/sdk/android/services/common/IdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 264
    new-instance v0, Lio/fabric/sdk/android/c;

    iget-object v4, p0, Lio/fabric/sdk/android/c$a;->c:Lio/fabric/sdk/android/services/concurrency/i;

    iget-object v5, p0, Lio/fabric/sdk/android/c$a;->d:Landroid/os/Handler;

    iget-object v6, p0, Lio/fabric/sdk/android/c$a;->e:Lio/fabric/sdk/android/l;

    iget-boolean v7, p0, Lio/fabric/sdk/android/c$a;->f:Z

    iget-object v8, p0, Lio/fabric/sdk/android/c$a;->i:Lio/fabric/sdk/android/f;

    iget-object v1, p0, Lio/fabric/sdk/android/c$a;->a:Landroid/content/Context;

    .line 265
    invoke-static {v1}, Lio/fabric/sdk/android/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v10

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lio/fabric/sdk/android/c;-><init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/i;Landroid/os/Handler;Lio/fabric/sdk/android/l;ZLio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;Landroid/app/Activity;)V

    return-object v0
.end method

.method public final debuggable(Z)Lio/fabric/sdk/android/c$a;
    .locals 0

    .line 202
    iput-boolean p1, p0, Lio/fabric/sdk/android/c$a;->f:Z

    return-object p0
.end method

.method public final executorService(Ljava/util/concurrent/ExecutorService;)Lio/fabric/sdk/android/c$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final handler(Landroid/os/Handler;)Lio/fabric/sdk/android/c$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final initializationCallback(Lio/fabric/sdk/android/f;)Lio/fabric/sdk/android/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/f<",
            "Lio/fabric/sdk/android/c;",
            ">;)",
            "Lio/fabric/sdk/android/c$a;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 215
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->i:Lio/fabric/sdk/android/f;

    if-nez v0, :cond_0

    .line 219
    iput-object p1, p0, Lio/fabric/sdk/android/c$a;->i:Lio/fabric/sdk/android/f;

    return-object p0

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "initializationCallback already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "initializationCallback must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs kits([Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/c$a;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->b:[Lio/fabric/sdk/android/i;

    if-nez v0, :cond_0

    .line 106
    iput-object p1, p0, Lio/fabric/sdk/android/c$a;->b:[Lio/fabric/sdk/android/i;

    return-object p0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Kits already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final logger(Lio/fabric/sdk/android/l;)Lio/fabric/sdk/android/c$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 150
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->e:Lio/fabric/sdk/android/l;

    if-nez v0, :cond_0

    .line 154
    iput-object p1, p0, Lio/fabric/sdk/android/c$a;->e:Lio/fabric/sdk/android/l;

    return-object p0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Logger already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Logger must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final threadPoolExecutor(Lio/fabric/sdk/android/services/concurrency/i;)Lio/fabric/sdk/android/c$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lio/fabric/sdk/android/c$a;->c:Lio/fabric/sdk/android/services/concurrency/i;

    if-nez v0, :cond_0

    .line 130
    iput-object p1, p0, Lio/fabric/sdk/android/c$a;->c:Lio/fabric/sdk/android/services/concurrency/i;

    return-object p0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "PriorityThreadPoolExecutor already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PriorityThreadPoolExecutor must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
