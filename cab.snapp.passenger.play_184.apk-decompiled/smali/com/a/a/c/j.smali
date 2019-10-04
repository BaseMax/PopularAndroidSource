.class public Lcom/a/a/c/j;
.super Lio/fabric/sdk/android/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/j$c;,
        Lcom/a/a/c/j$b;,
        Lcom/a/a/c/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/i<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/c;
    value = {
        Lcom/a/a/c/a/a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CrashlyticsCore"


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/a/a/c/k;

.field private final i:J

.field private j:Lcom/a/a/c/k;

.field private k:Lcom/a/a/c/l;

.field private l:Lcom/a/a/c/i;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:F

.field private q:Z

.field private final r:Lcom/a/a/c/ab;

.field private s:Lio/fabric/sdk/android/services/network/d;

.field private t:Lcom/a/a/c/h;

.field private u:Lcom/a/a/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, v1, v0, v0, v2}, Lcom/a/a/c/j;-><init>(FLcom/a/a/c/l;Lcom/a/a/c/ab;Z)V

    return-void
.end method

.method constructor <init>(FLcom/a/a/c/l;Lcom/a/a/c/ab;Z)V
    .locals 7

    const-string v0, "Crashlytics Exception Handler"

    .line 181
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/m;->buildSingleThreadExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 180
    invoke-direct/range {v1 .. v6}, Lcom/a/a/c/j;-><init>(FLcom/a/a/c/l;Lcom/a/a/c/ab;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private constructor <init>(FLcom/a/a/c/l;Lcom/a/a/c/ab;ZLjava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lio/fabric/sdk/android/i;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/a/a/c/j;->m:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/a/a/c/j;->n:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/a/a/c/j;->o:Ljava/lang/String;

    .line 190
    iput p1, p0, Lcom/a/a/c/j;->p:F

    if-eqz p2, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance p2, Lcom/a/a/c/j$c;

    const/4 p1, 0x0

    invoke-direct {p2, p1}, Lcom/a/a/c/j$c;-><init>(B)V

    :goto_0
    iput-object p2, p0, Lcom/a/a/c/j;->k:Lcom/a/a/c/l;

    .line 192
    iput-object p3, p0, Lcom/a/a/c/j;->r:Lcom/a/a/c/ab;

    .line 193
    iput-boolean p4, p0, Lcom/a/a/c/j;->q:Z

    .line 194
    new-instance p1, Lcom/a/a/c/h;

    invoke-direct {p1, p5}, Lcom/a/a/c/h;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/a/a/c/j;->t:Lcom/a/a/c/h;

    .line 196
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/a/a/c/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/a/a/c/j;->i:J

    return-void
.end method

.method static synthetic a(Lcom/a/a/c/j;)Lcom/a/a/c/k;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/a/a/c/j;->j:Lcom/a/a/c/k;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 414
    iget-boolean v0, p0, Lcom/a/a/c/j;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "prior to logging messages."

    .line 418
    invoke-static {v0}, Lcom/a/a/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 422
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/c/j;->i:J

    sub-long/2addr v0, v2

    .line 423
    iget-object v2, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    invoke-static {p1, p2, p3}, Lcom/a/a/c/j;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Lcom/a/a/c/i;->a(JLjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 214
    iget-boolean v0, v10, Lcom/a/a/c/j;->q:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    return v12

    .line 219
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/common/g;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    invoke-virtual {v0, v11}, Lio/fabric/sdk/android/services/common/g;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v12

    .line 227
    :cond_1
    invoke-static/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/i;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x1

    const-string v2, "com.crashlytics.RequireBuildId"

    .line 231
    invoke-static {v11, v2, v13}, Lio/fabric/sdk/android/services/common/i;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-string v14, "CrashlyticsCore"

    if-nez v2, :cond_2

    .line 1877
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Configured not to require a build ID."

    invoke-interface {v2, v14, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 1881
    :cond_2
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    const/4 v15, 0x0

    .line 238
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initializing Crashlytics "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/j;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v14, v3}, Lio/fabric/sdk/android/l;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v7, Lio/fabric/sdk/android/services/c/b;

    invoke-direct {v7, v10}, Lio/fabric/sdk/android/services/c/b;-><init>(Lio/fabric/sdk/android/i;)V

    .line 241
    new-instance v2, Lcom/a/a/c/k;

    const-string v3, "crash_marker"

    invoke-direct {v2, v3, v7}, Lcom/a/a/c/k;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/c/a;)V

    iput-object v2, v10, Lcom/a/a/c/j;->b:Lcom/a/a/c/k;

    .line 242
    new-instance v2, Lcom/a/a/c/k;

    const-string v3, "initialization_marker"

    invoke-direct {v2, v3, v7}, Lcom/a/a/c/k;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/c/a;)V

    iput-object v2, v10, Lcom/a/a/c/j;->j:Lcom/a/a/c/k;

    .line 245
    new-instance v2, Lio/fabric/sdk/android/services/c/d;

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.crashlytics.android.core.CrashlyticsCore"

    invoke-direct {v2, v3, v4}, Lio/fabric/sdk/android/services/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    invoke-static {v2, v10}, Lcom/a/a/c/ac;->create(Lio/fabric/sdk/android/services/c/c;Lcom/a/a/c/j;)Lcom/a/a/c/ac;

    move-result-object v6

    .line 250
    iget-object v2, v10, Lcom/a/a/c/j;->r:Lcom/a/a/c/ab;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/a/a/c/m;

    iget-object v3, v10, Lcom/a/a/c/j;->r:Lcom/a/a/c/ab;

    invoke-direct {v2, v3}, Lcom/a/a/c/m;-><init>(Lcom/a/a/c/ab;)V

    goto :goto_2

    :cond_4
    move-object v2, v15

    .line 252
    :goto_2
    new-instance v3, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/l;)V

    iput-object v3, v10, Lcom/a/a/c/j;->s:Lio/fabric/sdk/android/services/network/d;

    .line 253
    iget-object v3, v10, Lcom/a/a/c/j;->s:Lio/fabric/sdk/android/services/network/d;

    invoke-interface {v3, v2}, Lio/fabric/sdk/android/services/network/d;->setPinningInfoProvider(Lio/fabric/sdk/android/services/network/f;)V

    .line 2109
    iget-object v5, v10, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 256
    invoke-static {v11, v5, v0, v1}, Lcom/a/a/c/a;->create(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v8

    .line 257
    new-instance v9, Lcom/a/a/c/w;

    iget-object v0, v8, Lcom/a/a/c/a;->packageName:Ljava/lang/String;

    invoke-direct {v9, v11, v0}, Lcom/a/a/c/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Installer package name is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/a/a/c/a;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/a/a/c/i;

    iget-object v3, v10, Lcom/a/a/c/j;->t:Lcom/a/a/c/h;

    iget-object v4, v10, Lcom/a/a/c/j;->s:Lio/fabric/sdk/android/services/network/d;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/a/a/c/i;-><init>(Lcom/a/a/c/j;Lcom/a/a/c/h;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/common/IdManager;Lcom/a/a/c/ac;Lio/fabric/sdk/android/services/c/a;Lcom/a/a/c/a;Lcom/a/a/c/al;)V

    iput-object v0, v10, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    .line 2744
    iget-object v0, v10, Lcom/a/a/c/j;->t:Lcom/a/a/c/h;

    new-instance v1, Lcom/a/a/c/j$4;

    invoke-direct {v1, v10}, Lcom/a/a/c/j$4;-><init>(Lcom/a/a/c/j;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/h;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2793
    iget-object v0, v10, Lcom/a/a/c/j;->t:Lcom/a/a/c/h;

    new-instance v2, Lcom/a/a/c/j$b;

    iget-object v3, v10, Lcom/a/a/c/j;->b:Lcom/a/a/c/k;

    invoke-direct {v2, v3}, Lcom/a/a/c/j$b;-><init>(Lcom/a/a/c/k;)V

    .line 2794
    invoke-virtual {v0, v2}, Lcom/a/a/c/h;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2798
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_5

    .line 2803
    :try_start_1
    iget-object v0, v10, Lcom/a/a/c/j;->k:Lcom/a/a/c/l;

    invoke-interface {v0}, Lcom/a/a/c/l;->crashlyticsDidDetectCrashDuringPreviousExecution()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2805
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v2, v14, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    :cond_5
    :goto_3
    iget-object v0, v10, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 3415
    iget-object v3, v0, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v4, Lcom/a/a/c/i$3;

    invoke-direct {v4, v0}, Lcom/a/a/c/i$3;-><init>(Lcom/a/a/c/i;)V

    invoke-virtual {v3, v4}, Lcom/a/a/c/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 3265
    new-instance v3, Lcom/a/a/c/i$11;

    invoke-direct {v3, v0}, Lcom/a/a/c/i$11;-><init>(Lcom/a/a/c/i;)V

    .line 3272
    new-instance v4, Lcom/a/a/c/n;

    invoke-direct {v4, v3, v2}, Lcom/a/a/c/n;-><init>(Lcom/a/a/c/n$a;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v4, v0, Lcom/a/a/c/i;->k:Lcom/a/a/c/n;

    .line 3273
    iget-object v0, v0, Lcom/a/a/c/i;->k:Lcom/a/a/c/n;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v1, :cond_6

    .line 275
    invoke-static/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/i;->canTryConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 276
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-interface {v0, v14, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/a/a/c/j;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v12

    .line 291
    :cond_6
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Exception handling initialization successful"

    invoke-interface {v0, v14, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :catch_1
    move-exception v0

    .line 285
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v14, v2, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    iput-object v15, v10, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    return v12

    .line 234
    :cond_7
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/k;

    const-string v1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/k;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .line 828
    invoke-static {}, Lcom/a/a/c/j;->getInstance()Lcom/a/a/c/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, v0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 830
    :cond_1
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "CrashlyticsCore"

    invoke-interface {v0, v2, p0, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->logPriorityToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 841
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 842
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private f()V
    .locals 5

    .line 673
    new-instance v0, Lcom/a/a/c/j$1;

    invoke-direct {v0, p0}, Lcom/a/a/c/j$1;-><init>(Lcom/a/a/c/j;)V

    .line 9183
    iget-object v1, p0, Lio/fabric/sdk/android/i;->d:Lio/fabric/sdk/android/h;

    invoke-virtual {v1}, Lio/fabric/sdk/android/h;->getDependencies()Ljava/util/Collection;

    move-result-object v1

    .line 685
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/concurrency/j;

    .line 686
    invoke-virtual {v0, v2}, Lio/fabric/sdk/android/services/concurrency/e;->addDependency(Lio/fabric/sdk/android/services/concurrency/j;)V

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/c/j;->getFabric()Lio/fabric/sdk/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/c;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 691
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x4

    .line 696
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 702
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 700
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 698
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/a/a/c/j;->t:Lcom/a/a/c/h;

    new-instance v1, Lcom/a/a/c/j$3;

    invoke-direct {v1, p0}, Lcom/a/a/c/j$3;-><init>(Lcom/a/a/c/j;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static getInstance()Lcom/a/a/c/j;
    .locals 1

    .line 366
    const-class v0, Lcom/a/a/c/j;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/j;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/Void;
    .locals 9

    const-string v0, "CrashlyticsCore"

    .line 3710
    iget-object v1, p0, Lcom/a/a/c/j;->t:Lcom/a/a/c/h;

    new-instance v2, Lcom/a/a/c/j$2;

    invoke-direct {v2, p0}, Lcom/a/a/c/j$2;-><init>(Lcom/a/a/c/j;)V

    invoke-virtual {v1, v2}, Lcom/a/a/c/h;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 3766
    iget-object v1, p0, Lcom/a/a/c/j;->u:Lcom/a/a/c/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3767
    invoke-interface {v1}, Lcom/a/a/c/a/a;->getCrashEventData()Lcom/a/a/c/a/a/d;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 302
    iget-object v3, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    .line 3863
    iget-object v4, v3, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v5, Lcom/a/a/c/i$7;

    invoke-direct {v5, v3, v1}, Lcom/a/a/c/i$7;-><init>(Lcom/a/a/c/i;Lcom/a/a/c/a/a/d;)V

    invoke-virtual {v4, v5}, Lcom/a/a/c/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    .line 4748
    iget-object v3, v1, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v4, Lcom/a/a/c/i$5;

    invoke-direct {v4, v1}, Lcom/a/a/c/i$5;-><init>(Lcom/a/a/c/i;)V

    invoke-virtual {v3, v4}, Lcom/a/a/c/h;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 308
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/q;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v1

    if-nez v1, :cond_2

    .line 311
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Received null settings, skipping report submission!"

    invoke-interface {v1, v0, v3}, Lio/fabric/sdk/android/l;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-direct {p0}, Lcom/a/a/c/j;->g()V

    return-object v2

    .line 315
    :cond_2
    :try_start_1
    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/s;->featuresData:Lio/fabric/sdk/android/services/settings/m;

    iget-boolean v3, v3, Lio/fabric/sdk/android/services/settings/m;->collectReports:Z

    if-nez v3, :cond_3

    .line 316
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v1, v0, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-direct {p0}, Lcom/a/a/c/j;->g()V

    return-object v2

    .line 321
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    iget-object v4, v1, Lio/fabric/sdk/android/services/settings/s;->sessionData:Lio/fabric/sdk/android/services/settings/p;

    .line 5482
    iget-object v5, v3, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v6, Lcom/a/a/c/i$4;

    invoke-direct {v6, v3, v4}, Lcom/a/a/c/i$4;-><init>(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/p;)V

    invoke-virtual {v5, v6}, Lcom/a/a/c/h;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 322
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Could not finalize previous sessions."

    invoke-interface {v3, v0, v4}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_4
    iget-object v3, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    iget v4, p0, Lcom/a/a/c/j;->p:F

    if-nez v1, :cond_5

    .line 6317
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Could not send reports. Settings are not available."

    invoke-interface {v1, v0, v3}, Lio/fabric/sdk/android/l;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6322
    :cond_5
    iget-object v5, v1, Lio/fabric/sdk/android/services/settings/s;->appData:Lio/fabric/sdk/android/services/settings/e;

    iget-object v5, v5, Lio/fabric/sdk/android/services/settings/e;->reportsUrl:Ljava/lang/String;

    .line 6323
    invoke-virtual {v3, v5}, Lcom/a/a/c/i;->a(Ljava/lang/String;)Lcom/a/a/c/p;

    move-result-object v5

    .line 6325
    invoke-virtual {v3, v1}, Lcom/a/a/c/i;->a(Lio/fabric/sdk/android/services/settings/s;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/a/a/c/i$e;

    iget-object v7, v3, Lcom/a/a/c/i;->e:Lcom/a/a/c/j;

    iget-object v8, v3, Lcom/a/a/c/i;->g:Lcom/a/a/c/ac;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/s;->promptData:Lio/fabric/sdk/android/services/settings/o;

    invoke-direct {v6, v7, v8, v1}, Lcom/a/a/c/i$e;-><init>(Lio/fabric/sdk/android/i;Lcom/a/a/c/ac;Lio/fabric/sdk/android/services/settings/o;)V

    goto :goto_1

    :cond_6
    new-instance v6, Lcom/a/a/c/ag$a;

    invoke-direct {v6}, Lcom/a/a/c/ag$a;-><init>()V

    .line 6328
    :goto_1
    new-instance v1, Lcom/a/a/c/ag;

    iget-object v7, v3, Lcom/a/a/c/i;->h:Lcom/a/a/c/a;

    iget-object v7, v7, Lcom/a/a/c/a;->apiKey:Ljava/lang/String;

    iget-object v8, v3, Lcom/a/a/c/i;->i:Lcom/a/a/c/ag$c;

    iget-object v3, v3, Lcom/a/a/c/i;->j:Lcom/a/a/c/ag$b;

    invoke-direct {v1, v7, v5, v8, v3}, Lcom/a/a/c/ag;-><init>(Ljava/lang/String;Lcom/a/a/c/p;Lcom/a/a/c/ag$c;Lcom/a/a/c/ag$b;)V

    .line 6329
    invoke-virtual {v1, v4, v6}, Lcom/a/a/c/ag;->uploadReports(FLcom/a/a/c/ag$d;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 327
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v3, v0, v4, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    :goto_2
    invoke-direct {p0}, Lcom/a/a/c/j;->g()V

    return-object v2

    :goto_3
    invoke-direct {p0}, Lcom/a/a/c/j;->g()V

    throw v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .line 7109
    iget-object v0, p0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 652
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->canCollectUserIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/j;->m:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .line 8109
    iget-object v0, p0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 656
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->canCollectUserIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/j;->n:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public crash()V
    .locals 1

    .line 606
    new-instance v0, Lcom/a/a/c/g;

    invoke-direct {v0}, Lcom/a/a/c/g;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/c/g;->indexOutOfBounds()V

    return-void
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .line 9109
    iget-object v0, p0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    .line 660
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->canCollectUserIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/j;->o:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/a/a/c/j;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method public getPinningInfoProvider()Lcom/a/a/c/ab;
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/a/a/c/j;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/j;->r:Lcom/a/a/c/ab;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.3.17.dev"

    return-object v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 440
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/c/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lio/fabric/sdk/android/l;->log(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "CrashlyticsCore"

    .line 410
    invoke-direct {p0, v0, v1, p1}, Lcom/a/a/c/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .locals 5

    .line 382
    iget-boolean v0, p0, Lcom/a/a/c/j;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "prior to logging exceptions."

    .line 386
    invoke-static {v0}, Lcom/a/a/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 391
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {p1, v0, v1, v2}, Lio/fabric/sdk/android/l;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 6355
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 6357
    iget-object v3, v0, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v4, Lcom/a/a/c/i$14;

    invoke-direct {v4, v0, v2, v1, p1}, Lcom/a/a/c/i$14;-><init>(Lcom/a/a/c/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/a/a/c/h;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final onPreExecute()Z
    .locals 1

    .line 206
    invoke-super {p0}, Lio/fabric/sdk/android/i;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-direct {p0, v0}, Lcom/a/a/c/j;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 0

    .line 563
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/j;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 0

    .line 572
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/j;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 0

    .line 581
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/j;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 0

    .line 590
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/j;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setListener(Lcom/a/a/c/l;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 631
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Use of setListener is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 635
    iput-object p1, p0, Lcom/a/a/c/j;->k:Lcom/a/a/c/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 633
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 0

    .line 599
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/j;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 525
    iget-boolean v0, p0, Lcom/a/a/c/j;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "prior to setting keys."

    .line 529
    invoke-static {v0}, Lcom/a/a/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "CrashlyticsCore"

    if-nez p1, :cond_4

    .line 534
    invoke-virtual {p0}, Lcom/a/a/c/j;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 535
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->isAppDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 536
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom attribute key must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 538
    :cond_3
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "Attempting to set custom attribute with null key, ignoring."

    invoke-interface {p1, v0, v1, p2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 544
    :cond_4
    invoke-static {p1}, Lcom/a/a/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 546
    iget-object v1, p0, Lcom/a/a/c/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/a/a/c/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 547
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string p2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {p1, v0, p2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez p2, :cond_6

    const-string p2, ""

    goto :goto_1

    .line 552
    :cond_6
    invoke-static {p2}, Lcom/a/a/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 553
    :goto_1
    iget-object v0, p0, Lcom/a/a/c/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object p1, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    iget-object p2, p0, Lcom/a/a/c/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6396
    iget-object v0, p1, Lcom/a/a/c/i;->f:Lcom/a/a/c/h;

    new-instance v1, Lcom/a/a/c/i$2;

    invoke-direct {v1, p1, p2}, Lcom/a/a/c/i$2;-><init>(Lcom/a/a/c/i;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 3

    .line 504
    iget-boolean v0, p0, Lcom/a/a/c/j;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "prior to setting user data."

    .line 508
    invoke-static {v0}, Lcom/a/a/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 512
    :cond_1
    invoke-static {p1}, Lcom/a/a/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/c/j;->n:Ljava/lang/String;

    .line 513
    iget-object p1, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    iget-object v0, p0, Lcom/a/a/c/j;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/c/j;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/j;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 3

    .line 468
    iget-boolean v0, p0, Lcom/a/a/c/j;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "prior to setting user data."

    .line 472
    invoke-static {v0}, Lcom/a/a/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 476
    :cond_1
    invoke-static {p1}, Lcom/a/a/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/c/j;->m:Ljava/lang/String;

    .line 477
    iget-object p1, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    iget-object v0, p0, Lcom/a/a/c/j;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/c/j;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/j;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3

    .line 486
    iget-boolean v0, p0, Lcom/a/a/c/j;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "prior to setting user data."

    .line 490
    invoke-static {v0}, Lcom/a/a/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 494
    :cond_1
    invoke-static {p1}, Lcom/a/a/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/c/j;->o:Ljava/lang/String;

    .line 495
    iget-object p1, p0, Lcom/a/a/c/j;->l:Lcom/a/a/c/i;

    iget-object v0, p0, Lcom/a/a/c/j;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/c/j;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/j;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyPinning(Ljava/net/URL;)Z
    .locals 4

    const/4 v0, 0x0

    .line 6777
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/c/j;->getPinningInfoProvider()Lcom/a/a/c/ab;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6778
    iget-object v1, p0, Lcom/a/a/c/j;->s:Lio/fabric/sdk/android/services/network/d;

    sget-object v2, Lio/fabric/sdk/android/services/network/HttpMethod;->GET:Lio/fabric/sdk/android/services/network/HttpMethod;

    .line 6779
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6778
    invoke-interface {v1, v2, p1}, Lio/fabric/sdk/android/services/network/d;->buildHttpRequest(Lio/fabric/sdk/android/services/network/HttpMethod;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1

    .line 6780
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/c;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 6781
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 6784
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/c;->code()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 621
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Could not verify SSL pinning"

    invoke-interface {v1, v2, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
