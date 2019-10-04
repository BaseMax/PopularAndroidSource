.class public Lcom/google/android/gms/internal/jx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jx$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/google/android/gms/internal/jx;


# instance fields
.field private final A:Lcom/google/android/gms/internal/ia;

.field private final B:Lcom/google/android/gms/internal/hu;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/Boolean;

.field private F:J

.field private G:Ljava/nio/channels/FileLock;

.field private H:Ljava/nio/channels/FileChannel;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:J

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Z

.field final a:Lcom/google/android/gms/internal/js;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final d:J

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/ic;

.field private final h:Lcom/google/android/gms/internal/jj;

.field private final i:Lcom/google/android/gms/internal/iz;

.field private final j:Lcom/google/android/gms/internal/mq;

.field private final k:Lcom/google/android/gms/internal/jr;

.field private final l:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final m:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final n:Lcom/google/android/gms/internal/na;

.field private final o:Lcom/google/android/gms/internal/ix;

.field private final p:Lcom/google/android/gms/internal/id;

.field private final q:Lcom/google/android/gms/internal/iv;

.field private final r:Lcom/google/android/gms/internal/jd;

.field private final s:Lcom/google/android/gms/common/util/d;

.field private final t:Lcom/google/android/gms/internal/ln;

.field private final u:Lcom/google/android/gms/internal/lr;

.field private final v:Lcom/google/android/gms/internal/ij;

.field private final w:Lcom/google/android/gms/internal/ky;

.field private final x:Lcom/google/android/gms/internal/iu;

.field private final y:Lcom/google/android/gms/internal/jh;

.field private final z:Lcom/google/android/gms/internal/mw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/kx;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->C:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/kx;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/jx;->K:J

    invoke-static {}, Lcom/google/android/gms/common/util/e;->zzamg()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    iget-object p1, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/jx;->d:J

    new-instance p1, Lcom/google/android/gms/internal/ic;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ic;-><init>(Lcom/google/android/gms/internal/jx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    new-instance p1, Lcom/google/android/gms/internal/jj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/jj;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->h:Lcom/google/android/gms/internal/jj;

    new-instance p1, Lcom/google/android/gms/internal/iz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/iz;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->i:Lcom/google/android/gms/internal/iz;

    new-instance p1, Lcom/google/android/gms/internal/na;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/na;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->n:Lcom/google/android/gms/internal/na;

    new-instance p1, Lcom/google/android/gms/internal/ix;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ix;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->o:Lcom/google/android/gms/internal/ix;

    new-instance p1, Lcom/google/android/gms/internal/ij;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ij;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->v:Lcom/google/android/gms/internal/ij;

    new-instance p1, Lcom/google/android/gms/internal/iu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/iu;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->x:Lcom/google/android/gms/internal/iu;

    new-instance p1, Lcom/google/android/gms/internal/id;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/id;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->p:Lcom/google/android/gms/internal/id;

    new-instance p1, Lcom/google/android/gms/internal/iv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/iv;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->q:Lcom/google/android/gms/internal/iv;

    new-instance p1, Lcom/google/android/gms/internal/ia;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ia;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->A:Lcom/google/android/gms/internal/ia;

    new-instance p1, Lcom/google/android/gms/internal/hu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/hu;-><init>(Lcom/google/android/gms/internal/jx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->B:Lcom/google/android/gms/internal/hu;

    new-instance p1, Lcom/google/android/gms/internal/jd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/jd;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->r:Lcom/google/android/gms/internal/jd;

    new-instance p1, Lcom/google/android/gms/internal/ln;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ln;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->t:Lcom/google/android/gms/internal/ln;

    new-instance p1, Lcom/google/android/gms/internal/lr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->u:Lcom/google/android/gms/internal/lr;

    new-instance p1, Lcom/google/android/gms/internal/ky;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ky;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->w:Lcom/google/android/gms/internal/ky;

    new-instance p1, Lcom/google/android/gms/internal/mw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mw;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->z:Lcom/google/android/gms/internal/mw;

    new-instance p1, Lcom/google/android/gms/internal/jh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/jh;-><init>(Lcom/google/android/gms/internal/jx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->y:Lcom/google/android/gms/internal/jh;

    new-instance p1, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/jx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->l:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance p1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/jx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->m:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance p1, Lcom/google/android/gms/internal/mq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mq;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->j:Lcom/google/android/gms/internal/mq;

    new-instance p1, Lcom/google/android/gms/internal/jr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/jr;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->k:Lcom/google/android/gms/internal/jr;

    new-instance p1, Lcom/google/android/gms/internal/js;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/js;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kw;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/internal/js;

    iget-object p1, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawm()Lcom/google/android/gms/internal/ky;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p1, Lcom/google/android/gms/internal/ky;->a:Lcom/google/android/gms/internal/lm;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/lm;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ky;B)V

    iput-object v2, p1, Lcom/google/android/gms/internal/ky;->a:Lcom/google/android/gms/internal/lm;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ky;->a:Lcom/google/android/gms/internal/lm;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ky;->a:Lcom/google/android/gms/internal/lm;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v0, "Registered activity lifecycle callback"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v0, "Application context is not an Application"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/internal/js;

    new-instance v0, Lcom/google/android/gms/internal/jy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jy;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v1, "Bad chanel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcgi;
    .locals 22

    move-object/from16 v1, p2

    const-string v0, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error retrieving installer package name. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "manual_install"

    goto :goto_1

    :cond_1
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, ""

    :cond_2
    :goto_1
    move-object v6, v2

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/fq;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/fq;->zzgt(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    move-object v3, v4

    goto :goto_2

    :cond_4
    const/high16 v2, -0x80000000

    move-object v3, v0

    :goto_2
    new-instance v21, Lcom/google/android/gms/internal/zzcgi;

    move-object/from16 v0, v21

    int-to-long v4, v2

    const-wide/16 v7, 0x2e86

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v2

    move-object/from16 v9, p1

    invoke-virtual {v2, v9, v1}, Lcom/google/android/gms/internal/na;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-string v14, ""

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v12, p4

    move/from16 v20, p5

    invoke-direct/range {v0 .. v20}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v21

    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Error retrieving newly installed package info. appId, appName"

    invoke-virtual {v2, v4, v1, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;
    .locals 22

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v20

    const/4 v0, 0x0

    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    :try_start_0
    iget-object v2, v15, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/fq;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    new-instance v21, Lcom/google/android/gms/internal/zzcgi;

    move-object/from16 v0, v21

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxg()J

    move-result-wide v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxi()J

    move-result-wide v7

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxj()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxk()Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxx()J

    move-result-wide v16

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/hy;->zzaxy()Z

    move-result v20

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v20}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v21

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/hy;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/ip;->zzjah:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ip;->zzjai:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "app_instance_id"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v3, "11910"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jr;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ni;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/jr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/jx;->M:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzbab()Lcom/google/android/gms/internal/jd;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/kb;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/kb;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/jg;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/jg;-><init>(Lcom/google/android/gms/internal/jd;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/je;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/js;->zzh(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jx;)V
    .locals 5

    .line 5000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->n:Lcom/google/android/gms/internal/na;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->zzazw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->h:Lcom/google/android/gms/internal/jj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->zzazw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->x:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->zzazw()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazh()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-wide/16 v1, 0x2e86

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement is starting up, version"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazh()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->x:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/na;->zzkj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazh()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazh()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/jx;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/jx;->J:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/jx;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/jx;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Not all components initialized"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->C:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/kv;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/android/gms/internal/kw;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kw;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p2, "Bad chanel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final a(J)Z
    .locals 38

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/jx$a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/jx$a;-><init>(Lcom/google/android/gms/internal/jx;B)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/jx;->K:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kw;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/id;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const-string v13, ""

    if-eqz v12, :cond_3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_0

    :try_start_2
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v6, v10

    goto/16 :goto_2d

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v6, v10

    goto/16 :goto_9

    :cond_0
    :try_start_3
    new-array v12, v11, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_0
    cmp-long v14, v5, v7

    if-eqz v14, :cond_1

    :try_start_4
    const-string v13, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit16 v14, v14, 0x94

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_2

    if-eqz v10, :cond_c

    :goto_1
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_a

    :cond_2
    :try_start_8
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v22, v10

    move-object v10, v12

    move-object/from16 v21, v13

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v6, v10

    move-object v10, v12

    goto/16 :goto_9

    :cond_3
    cmp-long v10, v5, v7

    if-eqz v10, :cond_4

    :try_start_a
    new-array v10, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v10, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    goto :goto_2

    :cond_4
    new-array v10, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v10, v3

    :goto_2
    cmp-long v12, v5, v7

    if-eqz v12, :cond_5

    const-string v13, " and rowid <= ?"

    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " order by rowid limit 1;"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v10, :cond_c

    goto :goto_1

    :cond_6
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v22, v10

    move-object/from16 v21, v13

    const/4 v10, 0x0

    :goto_3
    :try_start_c
    const-string v13, "raw_events_metadata"

    new-array v14, v11, [Ljava/lang/String;

    const-string v12, "metadata"

    aput-object v12, v14, v3

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v12, v9, [Ljava/lang/String;

    aput-object v10, v12, v3

    aput-object v21, v12, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object/from16 v23, v12

    move-object v12, v15

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v23

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v12, :cond_7

    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v15, :cond_c

    :try_start_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v6, v15

    goto/16 :goto_2d

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v6, v15

    goto/16 :goto_9

    :cond_7
    :try_start_10
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/so;->zzn([BII)Lcom/google/android/gms/internal/so;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/no;

    invoke-direct {v13}, Lcom/google/android/gms/internal/no;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/sx;->zza(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/sx;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v12, :cond_8

    :try_start_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v12

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v14, v9}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_8
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/if;->zzb(Lcom/google/android/gms/internal/no;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v9, 0x3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_9

    :try_start_15
    const-string v12, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v13, v9, [Ljava/lang/String;

    aput-object v10, v13, v3

    aput-object v21, v13, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v13, v6
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v5, v12

    move-object/from16 v16, v13

    goto :goto_4

    :cond_9
    :try_start_16
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/String;

    aput-object v10, v12, v3

    aput-object v21, v12, v11

    move-object/from16 v16, v12

    :goto_4
    const-string v13, "raw_events"

    const/4 v6, 0x4

    new-array v14, v6, [Ljava/lang/String;

    const-string v6, "rowid"

    aput-object v6, v14, v3

    const-string v6, "name"

    aput-object v6, v14, v11

    const-string v6, "timestamp"

    const/4 v12, 0x2

    aput-object v6, v14, v12

    const-string v6, "data"

    aput-object v6, v14, v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/16 v20, 0x0

    move-object/from16 v12, v24

    move-object v6, v15

    move-object v15, v5

    :try_start_17
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v6

    const-string v9, "Raw event data disappeared while in transaction. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v5, :cond_c

    :goto_5
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto/16 :goto_a

    :cond_a
    :try_start_1a
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    array-length v14, v6

    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/so;->zzn([BII)Lcom/google/android/gms/internal/so;

    move-result-object v6

    new-instance v14, Lcom/google/android/gms/internal/nl;

    invoke-direct {v14}, Lcom/google/android/gms/internal/nl;-><init>()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/sx;->zza(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/sx;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/if;->zza(JLcom/google/android/gms/internal/nl;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v12

    const-string v13, "Data loss. Failed to merge raw event. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v6}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-nez v6, :cond_a

    if-eqz v5, :cond_c

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v6, v5

    goto/16 :goto_2d

    :catch_4
    move-exception v0

    move-object v6, v5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v6, v15

    move-object v5, v0

    :try_start_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v9

    const-string v12, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12, v13, v5}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v6, :cond_c

    :goto_6
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v6, v15

    goto/16 :goto_2c

    :catch_7
    move-exception v0

    move-object v6, v15

    :goto_7
    move-object v5, v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v6, v22

    goto/16 :goto_2d

    :catch_8
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v22

    goto :goto_9

    :catch_9
    move-exception v0

    move-object v5, v0

    move-object v6, v10

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    goto/16 :goto_2d

    :catch_a
    move-exception v0

    move-object v5, v0

    const/4 v6, 0x0

    :goto_8
    const/4 v10, 0x0

    :goto_9
    :try_start_1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v4

    const-string v9, "Data loss. Error selecting raw event. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10, v5}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    :goto_a
    :try_start_20
    iget-object v4, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    if-eqz v4, :cond_e

    iget-object v4, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v4, 0x1

    :goto_c
    if-nez v4, :cond_49

    iget-object v4, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v5, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/nl;

    iput-object v5, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_d
    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v10

    iget-object v14, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v14, v14, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    iget-object v15, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/nl;

    iget-object v15, v15, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v10, v14, v15}, Lcom/google/android/gms/internal/jr;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    const-string v14, "_err"

    if-eqz v10, :cond_11

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v10

    const-string v12, "Dropping blacklisted raw event. appId"

    iget-object v13, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v13, v13, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v15

    iget-object v7, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/nl;

    iget-object v7, v7, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v12, v13, v7}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v8, v8, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/na;->d(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v8, v8, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/na;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_e

    :cond_f
    const/4 v7, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    const/4 v7, 0x1

    :goto_f
    if-nez v7, :cond_24

    iget-object v7, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/nl;

    iget-object v7, v7, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v24

    iget-object v7, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v7, v7, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    const/16 v26, 0xb

    const-string v27, "_ev"

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    iget-object v8, v8, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v25, v7

    move-object/from16 v28, v8

    invoke-virtual/range {v24 .. v29}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_18

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v8, v8, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/nl;

    iget-object v10, v10, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/internal/jr;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    iget-object v8, v8, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/na;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    :cond_12
    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    iget-object v8, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    if-nez v8, :cond_13

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    new-array v10, v3, [Lcom/google/android/gms/internal/nm;

    iput-object v10, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    :cond_13
    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    iget-object v8, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    array-length v10, v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_10
    const-string v3, "_r"

    const-string v11, "_c"

    if-ge v15, v10, :cond_16

    :try_start_22
    aget-object v12, v8, v15

    iget-object v13, v12, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v12, Lcom/google/android/gms/internal/nm;->zzjll:Ljava/lang/Long;

    const/16 v18, 0x1

    goto :goto_11

    :cond_14
    iget-object v11, v12, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v12, Lcom/google/android/gms/internal/nm;->zzjll:Ljava/lang/Long;

    const/16 v19, 0x1

    :cond_15
    :goto_11
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_10

    :cond_16
    if-nez v18, :cond_17

    if-eqz v7, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v8

    const-string v10, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/nl;

    iget-object v13, v13, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    iget-object v8, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/nl;

    iget-object v10, v10, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    array-length v10, v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/nm;

    new-instance v10, Lcom/google/android/gms/internal/nm;

    invoke-direct {v10}, Lcom/google/android/gms/internal/nm;-><init>()V

    iput-object v11, v10, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v10, Lcom/google/android/gms/internal/nm;->zzjll:Ljava/lang/Long;

    array-length v12, v8

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aput-object v10, v8, v12

    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/nl;

    iput-object v8, v10, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    :cond_17
    if-nez v19, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v8

    const-string v10, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/nl;

    iget-object v13, v13, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    iget-object v8, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/nl;

    iget-object v10, v10, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    array-length v10, v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/nm;

    new-instance v10, Lcom/google/android/gms/internal/nm;

    invoke-direct {v10}, Lcom/google/android/gms/internal/nm;-><init>()V

    iput-object v3, v10, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v10, Lcom/google/android/gms/internal/nm;->zzjll:Ljava/lang/Long;

    array-length v12, v8

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aput-object v10, v8, v12

    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/nl;

    iput-object v8, v10, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->j()J

    move-result-wide v25

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v8, v8, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v27, v8

    invoke-virtual/range {v24 .. v32}, Lcom/google/android/gms/internal/id;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ie;

    move-result-object v8

    iget-wide v12, v8, Lcom/google/android/gms/internal/ie;->e:J

    iget-object v8, v1, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v10, v10, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ic;->zzix(Ljava/lang/String;)I

    move-result v8

    move v10, v9

    int-to-long v8, v8

    cmp-long v15, v12, v8

    if-lez v15, :cond_1d

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    const/4 v9, 0x0

    :goto_12
    iget-object v12, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    array-length v12, v12

    if-ge v9, v12, :cond_1c

    iget-object v12, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    aget-object v12, v12, v9

    iget-object v12, v12, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v3, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    array-length v3, v3

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    new-array v3, v3, [Lcom/google/android/gms/internal/nm;

    if-lez v9, :cond_19

    iget-object v12, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    const/4 v13, 0x0

    invoke-static {v12, v13, v3, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    array-length v12, v3

    if-ge v9, v12, :cond_1a

    iget-object v12, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    add-int/lit8 v13, v9, 0x1

    array-length v15, v3

    sub-int/2addr v15, v9

    invoke-static {v12, v13, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iput-object v3, v8, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    goto :goto_13

    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1c
    :goto_13
    move v9, v10

    goto :goto_14

    :cond_1d
    const/4 v9, 0x1

    :goto_14
    iget-object v3, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/nl;

    iget-object v3, v3, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/na;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v7, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->j()J

    move-result-wide v25

    iget-object v3, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v3, v3, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, v3

    invoke-virtual/range {v24 .. v32}, Lcom/google/android/gms/internal/id;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ie;

    move-result-object v3

    iget-wide v7, v3, Lcom/google/android/gms/internal/ie;->c:J

    iget-object v3, v1, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    iget-object v10, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v10, v10, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/ip;->zzjaq:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v3, v10, v12}, Lcom/google/android/gms/internal/ic;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/iq;)I

    move-result v3

    int-to-long v12, v3

    cmp-long v3, v7, v12

    if-lez v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    const-string v7, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v8, v8, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/nl;

    iget-object v7, v3, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    array-length v8, v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_15
    if-ge v10, v8, :cond_20

    aget-object v15, v7, v10

    move-object/from16 v18, v7

    iget-object v7, v15, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move-object v13, v15

    goto :goto_16

    :cond_1e
    iget-object v7, v15, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v12, 0x1

    :cond_1f
    :goto_16
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v18

    goto :goto_15

    :cond_20
    if-eqz v12, :cond_21

    if-eqz v13, :cond_21

    iget-object v7, v3, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    const/4 v8, 0x1

    new-array v10, v8, [Lcom/google/android/gms/internal/nm;

    const/4 v8, 0x0

    aput-object v13, v10, v8

    invoke-static {v7, v10}, Lcom/google/android/gms/common/util/a;->zza([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/gms/internal/nm;

    iput-object v7, v3, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    goto :goto_17

    :cond_21
    if-eqz v13, :cond_22

    iput-object v14, v13, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v13, Lcom/google/android/gms/internal/nm;->zzjll:Ljava/lang/Long;

    goto :goto_17

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    const-string v7, "Did not find conversion parameter. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v8, v8, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    :goto_17
    iget-object v3, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    add-int/lit8 v7, v6, 0x1

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/nl;

    aput-object v8, v3, v6

    move v6, v7

    :cond_24
    :goto_18
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const-wide/16 v7, -0x1

    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_25
    move v10, v9

    iget-object v3, v2, Lcom/google/android/gms/internal/jx$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_26

    iget-object v3, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/nl;

    iput-object v3, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    :cond_26
    iget-object v3, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v3, v3, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v5, v5, Lcom/google/android/gms/internal/no;->zzjlq:[Lcom/google/android/gms/internal/nq;

    iget-object v6, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    invoke-direct {v1, v3, v5, v6}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/nq;[Lcom/google/android/gms/internal/nl;)[Lcom/google/android/gms/internal/nk;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/no;->zzjmi:[Lcom/google/android/gms/internal/nk;

    sget-object v3, Lcom/google/android/gms/internal/ip;->zzjac:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, v1, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    iget-object v5, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v5, v5, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kv;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v3

    const-string v7, "measurement.event_sampling_enabled"

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/internal/jr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    array-length v5, v5

    new-array v5, v5, [Lcom/google/android/gms/internal/nl;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/na;->c()Ljava/security/SecureRandom;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_19
    if-ge v9, v8, :cond_39

    aget-object v12, v7, v9

    iget-object v13, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    const-string v14, "_ep"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    const-string v14, "_efs"

    const-string v15, "_sr"

    if-eqz v13, :cond_2a

    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    const-string v13, "_en"

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/na;->zza(Lcom/google/android/gms/internal/nl;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/internal/il;

    if-nez v18, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    move-object/from16 v19, v7

    iget-object v7, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v7, v7, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v1, v7, v13}, Lcom/google/android/gms/internal/id;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/il;

    move-result-object v1

    invoke-interface {v3, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_27
    move-object/from16 v19, v7

    move-object/from16 v1, v18

    :goto_1a
    iget-object v7, v1, Lcom/google/android/gms/internal/il;->g:Ljava/lang/Long;

    if-nez v7, :cond_2c

    iget-object v7, v1, Lcom/google/android/gms/internal/il;->h:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    cmp-long v7, v24, v26

    if-lez v7, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v7, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    iget-object v13, v1, Lcom/google/android/gms/internal/il;->h:Ljava/lang/Long;

    invoke-static {v7, v15, v13}, Lcom/google/android/gms/internal/na;->a([Lcom/google/android/gms/internal/nm;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/nm;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    :cond_28
    iget-object v7, v1, Lcom/google/android/gms/internal/il;->i:Ljava/lang/Boolean;

    if-eqz v7, :cond_29

    iget-object v1, v1, Lcom/google/android/gms/internal/il;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v1, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v14, v7}, Lcom/google/android/gms/internal/na;->a([Lcom/google/android/gms/internal/nm;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/nm;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    :cond_29
    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    goto :goto_1c

    :cond_2a
    move-object/from16 v19, v7

    const-string v1, "_dbg"

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v1, v7}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/nl;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v1

    iget-object v7, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v7, v7, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    iget-object v13, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v1, v7, v13}, Lcom/google/android/gms/internal/jr;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1b

    :cond_2b
    const/4 v1, 0x1

    :goto_1b
    if-gtz v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v7

    const-string v13, "Sample rate must be positive. event, rate"

    iget-object v14, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    :goto_1c
    move v11, v1

    :cond_2c
    move-object/from16 v26, v2

    move-object/from16 v25, v6

    move/from16 v18, v8

    move v13, v9

    move/from16 v22, v10

    :cond_2d
    :goto_1d
    const/4 v12, 0x0

    goto/16 :goto_21

    :cond_2e
    iget-object v7, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/il;

    if-nez v7, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v7

    iget-object v13, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v13, v13, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    move/from16 v18, v8

    iget-object v8, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v7, v13, v8}, Lcom/google/android/gms/internal/id;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/il;

    move-result-object v7

    if-nez v7, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v7

    const-string v8, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v13, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v13, v13, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    move/from16 v22, v10

    iget-object v10, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v13, v10}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/internal/il;

    iget-object v8, v2, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v8, v8, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    iget-object v10, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    iget-object v13, v12, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v10

    invoke-direct/range {v24 .. v37}, Lcom/google/android/gms/internal/il;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_1e

    :cond_2f
    move/from16 v18, v8

    :cond_30
    move/from16 v22, v10

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    const-string v8, "_eid"

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/na;->zza(Lcom/google/android/gms/internal/nl;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_31

    const/4 v10, 0x1

    goto :goto_1f

    :cond_31
    const/4 v10, 0x0

    :goto_1f
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v13, 0x1

    if-ne v1, v13, :cond_34

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_33

    iget-object v8, v7, Lcom/google/android/gms/internal/il;->g:Ljava/lang/Long;

    if-nez v8, :cond_32

    iget-object v8, v7, Lcom/google/android/gms/internal/il;->h:Ljava/lang/Long;

    if-nez v8, :cond_32

    iget-object v8, v7, Lcom/google/android/gms/internal/il;->i:Ljava/lang/Boolean;

    if-eqz v8, :cond_33

    :cond_32
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v8}, Lcom/google/android/gms/internal/il;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/il;

    move-result-object v7

    iget-object v8, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    :goto_20
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    move v11, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v6

    move v13, v9

    goto/16 :goto_1d

    :cond_34
    invoke-virtual {v6, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v13

    if-nez v13, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v8, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    int-to-long v13, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8, v15, v1}, Lcom/google/android/gms/internal/na;->a([Lcom/google/android/gms/internal/nm;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/nm;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8, v10}, Lcom/google/android/gms/internal/il;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/il;

    move-result-object v7

    :cond_35
    iget-object v8, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    iget-object v10, v12, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/il;->b(J)Lcom/google/android/gms/internal/il;

    move-result-object v7

    goto :goto_20

    :cond_36
    move-object/from16 v24, v8

    move v13, v9

    iget-wide v8, v7, Lcom/google/android/gms/internal/il;->f:J

    move-object/from16 v25, v6

    iget-object v6, v12, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    sub-long v26, v26, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v26, 0x5265c00

    cmp-long v6, v8, v26

    if-ltz v6, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v6, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    move-object/from16 v26, v2

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v14, v2}, Lcom/google/android/gms/internal/na;->a([Lcom/google/android/gms/internal/nm;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/nm;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v2, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v15, v1}, Lcom/google/android/gms/internal/na;->a([Lcom/google/android/gms/internal/nm;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/nm;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2, v6}, Lcom/google/android/gms/internal/il;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/il;

    move-result-object v7

    :cond_37
    iget-object v2, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    iget-object v6, v12, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/il;->b(J)Lcom/google/android/gms/internal/il;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v1

    goto/16 :goto_1d

    :cond_38
    move-object/from16 v26, v2

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v12, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    move-object/from16 v8, v24

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12, v12}, Lcom/google/android/gms/internal/il;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/il;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    add-int/lit8 v9, v13, 0x1

    move-object/from16 v1, p0

    move/from16 v8, v18

    move-object/from16 v7, v19

    move/from16 v10, v22

    move-object/from16 v6, v25

    move-object/from16 v2, v26

    goto/16 :goto_19

    :cond_39
    move-object/from16 v26, v2

    move/from16 v22, v10

    const/4 v12, 0x0

    iget-object v1, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    array-length v1, v1

    if-ge v11, v1, :cond_3a

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/nl;

    iput-object v1, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    :cond_3a
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/il;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/il;)V

    goto :goto_22

    :cond_3b
    move-object/from16 v26, v2

    move/from16 v22, v10

    const/4 v12, 0x0

    :cond_3c
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/gms/internal/no;->zzjls:Ljava/lang/Long;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/gms/internal/no;->zzjlt:Ljava/lang/Long;

    const/4 v1, 0x0

    :goto_23
    iget-object v2, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    iget-object v2, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, v4, Lcom/google/android/gms/internal/no;->zzjls:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_3d

    iget-object v3, v2, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    iput-object v3, v4, Lcom/google/android/gms/internal/no;->zzjls:Ljava/lang/Long;

    :cond_3d
    iget-object v3, v2, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, v4, Lcom/google/android/gms/internal/no;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-lez v3, :cond_3e

    iget-object v2, v2, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    iput-object v2, v4, Lcom/google/android/gms/internal/no;->zzjlt:Ljava/lang/Long;

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3f
    move-object/from16 v1, v26

    iget-object v2, v1, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v2, v2, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v3

    if-nez v3, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v6, v6, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    :cond_40
    iget-object v5, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    array-length v5, v5

    if-lez v5, :cond_44

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hy;->zzaxf()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_41

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_24

    :cond_41
    move-object v10, v12

    :goto_24
    iput-object v10, v4, Lcom/google/android/gms/internal/no;->zzjlv:Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hy;->zzaxe()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_42

    goto :goto_25

    :cond_42
    move-wide v5, v9

    :goto_25
    cmp-long v9, v5, v7

    if-eqz v9, :cond_43

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_26

    :cond_43
    move-object v10, v12

    :goto_26
    iput-object v10, v4, Lcom/google/android/gms/internal/no;->zzjlu:Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hy;->zzaxo()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hy;->zzaxl()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/no;->zzjmg:Ljava/lang/Integer;

    iget-object v5, v4, Lcom/google/android/gms/internal/no;->zzjls:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/hy;->zzal(J)V

    iget-object v5, v4, Lcom/google/android/gms/internal/no;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/hy;->zzam(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hy;->zzaxw()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/no;->zzixw:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/hy;)V

    :cond_44
    :goto_27
    iget-object v3, v4, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    array-length v3, v3

    if-lez v3, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v5, v5, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/jr;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ni;

    move-result-object v3

    if-eqz v3, :cond_46

    iget-object v5, v3, Lcom/google/android/gms/internal/ni;->zzjkw:Ljava/lang/Long;

    if-nez v5, :cond_45

    goto :goto_29

    :cond_45
    iget-object v3, v3, Lcom/google/android/gms/internal/ni;->zzjkw:Ljava/lang/Long;

    :goto_28
    iput-object v3, v4, Lcom/google/android/gms/internal/no;->zzjmn:Ljava/lang/Long;

    goto :goto_2a

    :cond_46
    :goto_29
    iget-object v3, v1, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v3, v3, Lcom/google/android/gms/internal/no;->zzixs:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_28

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/jx$a;->a:Lcom/google/android/gms/internal/no;

    iget-object v6, v6, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v3

    move/from16 v9, v22

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/no;Z)Z

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/internal/jx$a;->b:Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/id;->zzah(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    :try_start_24
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    goto :goto_2b

    :catch_b
    move-exception v0

    move-object v3, v0

    :try_start_25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    const/4 v1, 0x1

    return v1

    :cond_49
    :try_start_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    const/4 v1, 0x0

    return v1

    :catchall_6
    move-exception v0

    :goto_2c
    move-object v1, v0

    :goto_2d
    if-eqz v6, :cond_4a

    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    goto :goto_2f

    :goto_2e
    throw v1

    :goto_2f
    goto :goto_2e
.end method

.method private static a(Lcom/google/android/gms/internal/nl;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_2

    iget-object p0, v3, Lcom/google/android/gms/internal/nm;->zzjll:Ljava/lang/Long;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z
    .locals 13

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgx;->a:Landroid/os/Bundle;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const-string v2, "ecommerce_purchase"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "value"

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgx;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v4, v8

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcgx;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v3, v6

    :cond_0
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_1

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "Data lost. Currency value is too big. appId"

    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcgx;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_ltv_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v9, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/google/android/gms/internal/id;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mz;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/mz;

    iget-object v8, p2, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/mz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v0, v2

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    sget-object v6, Lcom/google/android/gms/internal/ip;->zzjbh:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/ic;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/iq;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->k()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v2

    aput-object p1, v8, v5

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Error pruning currencies. appId"

    invoke-virtual {v0, v6, v2, v1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/mz;

    iget-object v8, p2, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/mz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/mz;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    const-string v3, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-virtual {p2, v3, v1, v2, v0}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v5
.end method

.method private final a(Ljava/lang/String;[Lcom/google/android/gms/internal/nq;[Lcom/google/android/gms/internal/nl;)[Lcom/google/android/gms/internal/nk;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawl()Lcom/google/android/gms/internal/ia;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/nl;[Lcom/google/android/gms/internal/nq;)[Lcom/google/android/gms/internal/nk;

    move-result-object p1

    return-object p1
.end method

.method private final b(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 32

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-object v15, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v12, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v1, :cond_1

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/jr;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "_err"

    const/4 v10, 0x0

    const/16 v29, 0x1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-static {v15}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropping blacklisted event. appId"

    invoke-virtual {v1, v5, v3, v4}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/na;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/na;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v29, 0x0

    :cond_3
    :goto_0
    if-nez v29, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v2

    const/16 v4, 0xb

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "_ev"

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v29, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxn()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxm()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Lcom/google/android/gms/internal/ip;->zzjbc:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Fetching config for blacklisted app"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/hy;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/iz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ix;->a(Lcom/google/android/gms/internal/zzcha;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Logging event"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    const-string v1, "_iap"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ecommerce_purchase"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-direct {v11, v15, v0}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :cond_9
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/na;->a(Ljava/lang/String;)Z

    move-result v16

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->j()J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object v5, v15

    move/from16 v7, v16

    move v9, v1

    move-wide/from16 v30, v13

    const/4 v13, 0x0

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/id;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ie;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/gms/internal/ie;->b:J

    sget-object v5, Lcom/google/android/gms/internal/ip;->zzjan:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    cmp-long v14, v3, v9

    if-lez v14, :cond_b

    rem-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Data loss. Too many events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/ie;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :cond_b
    if-eqz v16, :cond_d

    :try_start_2
    iget-wide v3, v2, Lcom/google/android/gms/internal/ie;->a:J

    sget-object v14, Lcom/google/android/gms/internal/ip;->zzjap:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v13, v14

    sub-long/2addr v3, v13

    cmp-long v13, v3, v9

    if-lez v13, :cond_d

    rem-long/2addr v3, v5

    cmp-long v1, v3, v7

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v3, "Data loss. Too many public events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/internal/ie;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v2

    const/16 v4, 0x10

    const-string v5, "_ev"

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :cond_d
    if-eqz v1, :cond_f

    :try_start_3
    iget-wide v3, v2, Lcom/google/android/gms/internal/ie;->d:J

    iget-object v1, v11, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    iget-object v5, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ip;->zzjao:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ic;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/iq;)I

    move-result v1

    const v5, 0xf4240

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    cmp-long v1, v3, v9

    if-lez v1, :cond_10

    cmp-long v0, v3, v7

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Too many error events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/ie;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :cond_f
    const/4 v13, 0x0

    :cond_10
    :try_start_4
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    const-string v2, "_o"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    invoke-virtual {v1, v14, v2, v3}, Lcom/google/android/gms/internal/na;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/na;->zzkj(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "_r"

    if-eqz v1, :cond_11

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    const-string v2, "_dbg"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lcom/google/android/gms/internal/na;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v6, v2}, Lcom/google/android/gms/internal/na;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/id;->zzjc(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-lez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    const-string v4, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v8, Lcom/google/android/gms/internal/ik;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v4, v15

    move-object v0, v6

    move-wide/from16 v6, v19

    move-object v10, v8

    move-wide/from16 v8, v17

    move-object v13, v10

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    iget-object v2, v13, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/id;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/il;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/id;->zzjf(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-ltz v5, :cond_13

    if-eqz v16, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v15}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :cond_13
    :try_start_6
    new-instance v1, Lcom/google/android/gms/internal/il;

    iget-object v2, v13, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v3, v13, Lcom/google/android/gms/internal/ik;->c:J

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v5, v15

    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-wide/from16 v22, v3

    invoke-direct/range {v15 .. v28}, Lcom/google/android/gms/internal/il;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_14
    iget-wide v2, v1, Lcom/google/android/gms/internal/il;->e:J

    invoke-virtual {v13, v11, v2, v3}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/jx;J)Lcom/google/android/gms/internal/ik;

    move-result-object v8

    iget-wide v2, v8, Lcom/google/android/gms/internal/ik;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/il;->a(J)Lcom/google/android/gms/internal/il;

    move-result-object v1

    move-object v13, v8

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/il;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v13, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v13, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ap;->checkArgument(Z)V

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1}, Lcom/google/android/gms/internal/no;-><init>()V

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjlo:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjlw:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzixt:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzifm:Ljava/lang/String;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    const-wide/32 v4, -0x80000000

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_15

    move-object v2, v6

    goto :goto_2

    :cond_15
    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjmj:Ljava/lang/Integer;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjma:Ljava/lang/Long;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzixs:Ljava/lang/String;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_16

    move-object v2, v6

    goto :goto_3

    :cond_16
    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjmf:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/jj;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-boolean v3, v12, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    if-eqz v3, :cond_1a

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/no;->zzjmc:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjmd:Ljava/lang/Boolean;

    goto :goto_5

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ij;->zzdw(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v11, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "null secure ID. appId"

    iget-object v7, v1, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    goto :goto_4

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    const-string v7, "empty secure ID. appId"

    iget-object v8, v1, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_4
    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjmm:Ljava/lang/String;

    :cond_1a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjlx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzdb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ij;->zzayu()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjlz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ij;->zzayv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzjly:Ljava/lang/String;

    iput-object v6, v1, Lcom/google/android/gms/internal/no;->zzjmb:Ljava/lang/Long;

    iput-object v6, v1, Lcom/google/android/gms/internal/no;->zzjlr:Ljava/lang/Long;

    iput-object v6, v1, Lcom/google/android/gms/internal/no;->zzjls:Ljava/lang/Long;

    iput-object v6, v1, Lcom/google/android/gms/internal/no;->zzjlt:Ljava/lang/Long;

    iget-wide v2, v12, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zzfkk:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/google/android/gms/internal/ic;->zzaye()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    iput-object v6, v1, Lcom/google/android/gms/internal/no;->zzjmo:Ljava/lang/String;

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v2

    if-nez v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/internal/hy;

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-direct {v2, v11, v3}, Lcom/google/android/gms/internal/hy;-><init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iu;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hy;->zzir(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hy;->zziu(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hy;->zzis(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v3

    iget-object v6, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/jj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hy;->zzit(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/hy;->zzaq(J)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/hy;->zzal(J)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/hy;->zzam(J)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hy;->setAppVersion(Ljava/lang/String;)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/hy;->zzan(J)V

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hy;->zziv(Ljava/lang/String;)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/hy;->zzao(J)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/hy;->zzap(J)V

    iget-boolean v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hy;->setMeasurementEnabled(Z)V

    iget-wide v6, v12, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/hy;->zzaz(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/hy;)V

    :cond_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/hy;->getAppInstanceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/no;->zzjme:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hy;->zzaxd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/no;->zziya:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/id;->zzja(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/nq;

    iput-object v3, v1, Lcom/google/android/gms/internal/no;->zzjlq:[Lcom/google/android/gms/internal/nq;

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1d

    new-instance v6, Lcom/google/android/gms/internal/nq;

    invoke-direct {v6}, Lcom/google/android/gms/internal/nq;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/no;->zzjlq:[Lcom/google/android/gms/internal/nq;

    aput-object v6, v7, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mz;

    iget-object v7, v7, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    iput-object v7, v6, Lcom/google/android/gms/internal/nq;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mz;

    iget-wide v7, v7, Lcom/google/android/gms/internal/mz;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/nq;->zzjms:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mz;

    iget-object v8, v8, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/na;->zza(Lcom/google/android/gms/internal/nq;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1d
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/no;)J

    move-result-wide v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v3

    iget-object v6, v13, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v6, :cond_20

    iget-object v6, v13, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgx;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    :goto_7
    const/4 v0, 0x1

    goto :goto_8

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v0

    iget-object v6, v13, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    iget-object v7, v13, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/jr;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->j()J

    move-result-wide v15

    iget-object v6, v13, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/gms/internal/id;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/ie;

    move-result-object v6

    if-eqz v0, :cond_20

    iget-wide v6, v6, Lcom/google/android/gms/internal/ie;->e:J

    iget-object v0, v11, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    iget-object v8, v13, Lcom/google/android/gms/internal/ik;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ic;->zzix(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_20

    goto :goto_7

    :cond_20
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v3, v13, v1, v2, v0}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/ik;JZ)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-wide v4, v11, Lcom/google/android/gms/internal/jx;->L:J

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v1, v1, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ix;->a(Lcom/google/android/gms/internal/ik;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->l()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v1, v30

    const-wide/32 v3, 0x7a120

    add-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method static d()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final g()Lcom/google/android/gms/internal/jh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->y:Lcom/google/android/gms/internal/jh;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final h()Lcom/google/android/gms/internal/mw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->z:Lcom/google/android/gms/internal/mw;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->z:Lcom/google/android/gms/internal/mw;

    return-object v0
.end method

.method private final i()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "google_app_measurement.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jx;->H:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->H:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jx;->G:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->G:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final j()J
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v3, v2, Lcom/google/android/gms/internal/jj;->zzjcv:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/na;->c()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/internal/jj;->zzjcv:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final k()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->zzayk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->zzayf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final l()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->m()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/jx;->L:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/internal/jx;->L:J

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->g()Lcom/google/android/gms/internal/jh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jh;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->h()Lcom/google/android/gms/internal/mw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mw;->cancel()V

    return-void

    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/internal/jx;->L:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->k()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/ip;->zzjbd:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/id;->zzayl()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/id;->zzayg()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_7

    iget-object v9, v0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ic;->zzayd()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/google/android/gms/internal/ip;->zzjay:Lcom/google/android/gms/internal/iq;

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/google/android/gms/internal/ip;->zzjax:Lcom/google/android/gms/internal/iq;

    goto :goto_2

    :cond_7
    sget-object v9, Lcom/google/android/gms/internal/ip;->zzjaw:Lcom/google/android/gms/internal/iq;

    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/jj;->zzjcr:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/jj;->zzjcs:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/id;->zzayi()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v10

    move-wide/from16 v18, v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/id;->zzayj()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v8, v3

    goto/16 :goto_5

    :cond_9
    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v5, v18

    if-eqz v7, :cond_a

    cmp-long v7, v8, v3

    if-lez v7, :cond_a

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v16

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v7

    move-wide/from16 v12, v16

    invoke-virtual {v7, v8, v9, v12, v13}, Lcom/google/android/gms/internal/na;->zzf(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long/2addr v8, v12

    goto :goto_3

    :cond_b
    move-wide v8, v10

    :goto_3
    cmp-long v7, v1, v3

    if-eqz v7, :cond_d

    cmp-long v7, v1, v5

    if-ltz v7, :cond_d

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x14

    sget-object v7, Lcom/google/android/gms/internal/ip;->zzjbf:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    sget-object v11, Lcom/google/android/gms/internal/ip;->zzjbe:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    mul-long v11, v11, v6

    add-long/2addr v8, v11

    cmp-long v6, v8, v1

    if-lez v6, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    cmp-long v1, v8, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->g()Lcom/google/android/gms/internal/jh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jh;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->h()Lcom/google/android/gms/internal/mw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mw;->cancel()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzbab()Lcom/google/android/gms/internal/jd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jd;->zzzs()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->g()Lcom/google/android/gms/internal/jh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jh;->zzzp()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->h()Lcom/google/android/gms/internal/mw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mw;->cancel()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjct:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/ip;->zzjau:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/internal/na;->zzf(JJ)Z

    move-result v7

    if-nez v7, :cond_10

    add-long/2addr v1, v5

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->g()Lcom/google/android/gms/internal/jh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jh;->unregister()V

    iget-object v1, v0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/ip;->zzjaz:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjcr:Lcom/google/android/gms/internal/jl;

    iget-object v2, v0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->h()Lcom/google/android/gms/internal/mw;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/mw;->zzs(J)V

    return-void

    :cond_12
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->g()Lcom/google/android/gms/internal/jh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jh;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->h()Lcom/google/android/gms/internal/mw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mw;->cancel()V

    return-void
.end method

.method private final m()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jx;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final n()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jx;->M:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jx;->N:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jx;->O:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->b:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/jx;->M:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/jx;->N:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/jx;->O:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/jx;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/jx;->e:Lcom/google/android/gms/internal/jx;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/jx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/jx;->e:Lcom/google/android/gms/internal/jx;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/kx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/kx;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/jx;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/jx;-><init>(Lcom/google/android/gms/internal/kx;)V

    sput-object p0, Lcom/google/android/gms/internal/jx;->e:Lcom/google/android/gms/internal/jx;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/jx;->e:Lcom/google/android/gms/internal/jx;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jx;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(ILjava/lang/Throwable;[B)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/jx;->I:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/jx;->I:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/jj;->zzjcr:Lcom/google/android/gms/internal/jl;

    iget-object v2, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/jl;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/jj;->zzjcs:Lcom/google/android/gms/internal/jl;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/jl;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/kw;->k()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/id;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "queue"

    const-string v2, "rowid=?"

    invoke-virtual {p2, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Deleted fewer rows from queue than expected"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string p3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzbab()Lcom/google/android/gms/internal/jd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jd;->zzzs()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->k()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzbah()V

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/jx;->K:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V

    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/internal/jx;->L:J

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/jx;->L:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v1, p0, Lcom/google/android/gms/internal/jx;->L:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/jj;->zzjcs:Lcom/google/android/gms/internal/jl;

    iget-object p3, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/jl;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/jj;->zzjct:Lcom/google/android/gms/internal/jl;

    iget-object p2, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->N:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->n()V

    return-void

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->N:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->n()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method final a(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 10

    const-string v0, "app_id=?"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kw;->k()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/jx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcgi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jx;->zzf(Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/zzcgl;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcgl;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/id;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    new-instance v2, Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-wide v5, v3, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzcln;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    const/4 p1, 0x1

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    new-instance v9, Lcom/google/android/gms/internal/mz;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/mz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/mz;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/zzcha;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/zzcgl;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method final a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kw;->k()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/id;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v14

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    if-eqz v9, :cond_4

    new-instance v9, Lcom/google/android/gms/internal/zzcha;

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/internal/id;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kw;->k()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/id;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v15

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/internal/id;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    if-eqz v5, :cond_8

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/internal/id;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_3

    :cond_9
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_a

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/internal/zzcha;

    new-instance v10, Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kw;->k()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/kv;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_5

    :cond_b
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/id;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v15, :cond_c

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    new-instance v10, Lcom/google/android/gms/internal/mz;

    iget-object v5, v15, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/mz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/mz;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    if-eqz v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v4, Lcom/google/android/gms/internal/zzcln;

    invoke-direct {v4, v13}, Lcom/google/android/gms/internal/zzcln;-><init>(Lcom/google/android/gms/internal/mz;)V

    iput-object v4, v15, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/zzcgl;)Z

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_10

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/zzcha;

    new-instance v5, Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method final a(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v22

    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/fq;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v4, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/zzcgi;

    move-object v2, v15

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxg()J

    move-result-wide v6

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxi()J

    move-result-wide v9

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxj()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxk()Z

    move-result v14

    const/16 v16, 0x0

    move-object/from16 v23, v15

    move/from16 v15, v16

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxd()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxx()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hy;->zzaxy()Z

    move-result v22

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v22}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/na;->zzkd(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/na;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/na;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/mz;

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/mz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/mz;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/na;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    throw p1
.end method

.method final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/hy;->zzas(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/hy;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/jr;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/jj;->zzjcs:Lcom/google/android/gms/internal/jl;

    iget-object p3, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/jl;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/jj;->zzjct:Lcom/google/android/gms/internal/jl;

    iget-object p2, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V

    goto/16 :goto_8

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/jr;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    goto :goto_6

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/jr;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ni;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/jr;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    :cond_d
    :goto_6
    iget-object p3, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hy;->zzar(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/hy;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazg()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzbab()Lcom/google/android/gms/internal/jd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jd;->zzzs()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->k()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzbah()V

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->n()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->n()V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method final b(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hy;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/hy;-><init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iu;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hy;->zzir(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->zzit(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->zzit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->zzir(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->zzis(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->zziu(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxi()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/hy;->zzao(J)V

    const/4 v1, 0x1

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->setAppVersion(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxg()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/hy;->zzan(J)V

    const/4 v1, 0x1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->zziv(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxj()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/hy;->zzap(J)V

    const/4 v1, 0x1

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxk()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->setMeasurementEnabled(Z)V

    const/4 v1, 0x1

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hy;->zziw(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxx()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/hy;->zzaz(J)V

    const/4 v1, 0x1

    :cond_b
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy;->zzaxy()Z

    move-result v4

    if-eq v3, v4, :cond_c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hy;->zzbl(Z)V

    const/4 v1, 0x1

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/hy;)V

    :cond_d
    return-void
.end method

.method final b(Lcom/google/android/gms/internal/zzcgl;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/id;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/id;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/id;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/na;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;J)Lcom/google/android/gms/internal/zzcha;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    throw p1
.end method

.method final b(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/id;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ix;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    throw p1
.end method

.method protected final b()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->E:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/jx;->F:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/jx;->F:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jx;->F:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/na;->zzeb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/na;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq;->zzamu()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jo;->zzbk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ml;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jx;->E:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->E:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/na;->zzkg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jx;->E:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->E:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final c()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjcr:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjcr:Lcom/google/android/gms/internal/jl;

    iget-object v1, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjcw:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/jx;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjcw:Lcom/google/android/gms/internal/jl;

    iget-wide v1, p0, Lcom/google/android/gms/internal/jx;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jl;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/na;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/na;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq;->zzamu()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jo;->zzbk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ml;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jj;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jj;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazh()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jj;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->u:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->u:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jj;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjcw:Lcom/google/android/gms/internal/jl;

    iget-wide v1, p0, Lcom/google/android/gms/internal/jx;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jl;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjcx:Lcom/google/android/gms/internal/jn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jn;->zzjq(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawm()Lcom/google/android/gms/internal/ky;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/jj;->zzjcx:Lcom/google/android/gms/internal/jn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jn;->zzazr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ky;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawm()Lcom/google/android/gms/internal/ky;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->k()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ky;->e:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jx;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lr;->e()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ky;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lr;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V

    return-void
.end method

.method final e()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jx;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jx;->J:I

    return-void
.end method

.method final f()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jx;->D:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazh()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->H:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jx;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzve()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/jx;->H:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/jx;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->D:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V

    :cond_3
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ic;->zzaya()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/ay;->zzaji()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jj;->c(Z)Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)[B
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "_iap"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-static {}, Lcom/google/android/gms/internal/jx;->d()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/nn;

    invoke-direct {v8}, Lcom/google/android/gms/internal/nn;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v9

    const/4 v6, 0x0

    if-nez v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Log and bundle not available. package_name"

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v0, v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzaxk()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ecommerce_purchase"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {v11, v10, v0}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    new-instance v7, Lcom/google/android/gms/internal/no;

    invoke-direct {v7}, Lcom/google/android/gms/internal/no;-><init>()V

    const/4 v5, 0x1

    new-array v2, v5, [Lcom/google/android/gms/internal/no;

    aput-object v7, v2, v6

    iput-object v2, v8, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjlo:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjlw:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzaxh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzixt:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzifm:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzaxg()J

    move-result-wide v2

    const-wide/32 v12, -0x80000000

    const/4 v4, 0x0

    cmp-long v14, v2, v12

    if-nez v14, :cond_4

    move-object v2, v4

    goto :goto_1

    :cond_4
    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjmj:Ljava/lang/Integer;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzaxi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjma:Ljava/lang/Long;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzixs:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzaxj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjmf:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/ic;->zzaye()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    iget-object v3, v7, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ic;->zziz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawn()Lcom/google/android/gms/internal/iu;

    iput-object v4, v7, Lcom/google/android/gms/internal/no;->zzjmo:Ljava/lang/String;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/jj;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzaxy()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lcom/google/android/gms/internal/no;->zzjmc:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjmd:Ljava/lang/Boolean;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjlx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kw;->k()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzdb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ij;->zzayu()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjlz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawo()Lcom/google/android/gms/internal/ij;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ij;->zzayv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjly:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zzjme:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->zzaxd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/no;->zziya:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/id;->zzja(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/nq;

    iput-object v3, v7, Lcom/google/android/gms/internal/no;->zzjlq:[Lcom/google/android/gms/internal/nq;

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_7

    new-instance v12, Lcom/google/android/gms/internal/nq;

    invoke-direct {v12}, Lcom/google/android/gms/internal/nq;-><init>()V

    iget-object v13, v7, Lcom/google/android/gms/internal/no;->zzjlq:[Lcom/google/android/gms/internal/nq;

    aput-object v12, v13, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mz;

    iget-object v13, v13, Lcom/google/android/gms/internal/mz;->c:Ljava/lang/String;

    iput-object v13, v12, Lcom/google/android/gms/internal/nq;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mz;

    iget-wide v13, v13, Lcom/google/android/gms/internal/mz;->d:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/nq;->zzjms:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v13

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/mz;

    iget-object v14, v14, Lcom/google/android/gms/internal/mz;->e:Ljava/lang/Object;

    invoke-virtual {v13, v12, v14}, Lcom/google/android/gms/internal/na;->zza(Lcom/google/android/gms/internal/nq;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v3

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "_r"

    const-wide/16 v12, 0x1

    if-eqz v1, :cond_8

    :try_start_2
    const-string v1, "_c"

    invoke-virtual {v3, v1, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v14, "Marking in-app purchase as real-time"

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    const-string v1, "_o"

    iget-object v14, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    invoke-virtual {v3, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    iget-object v14, v7, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/na;->zzkj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    const-string v14, "_dbg"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v1, v3, v14, v15}, Lcom/google/android/gms/internal/na;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v3, v2, v12}, Lcom/google/android/gms/internal/na;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/internal/id;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/il;

    move-result-object v1

    const-wide/16 v26, 0x0

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/il;

    iget-object v14, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v19, v12

    move-object v12, v1

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v25}, Lcom/google/android/gms/internal/il;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/il;)V

    move-wide/from16 v12, v26

    goto :goto_3

    :cond_a
    iget-wide v12, v1, Lcom/google/android/gms/internal/il;->e:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/il;->a(J)Lcom/google/android/gms/internal/il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/il;->a()Lcom/google/android/gms/internal/il;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/il;)V

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/ik;

    iget-object v15, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    move-wide/from16 v16, v0

    move-object v1, v14

    move-object v0, v2

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v4, p2

    const/4 v15, 0x1

    move-object v5, v0

    move-object v0, v7

    move-wide/from16 v6, v16

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide v8, v12

    move-object/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/internal/nl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nl;-><init>()V

    new-array v2, v15, [Lcom/google/android/gms/internal/nl;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    iget-wide v4, v14, Lcom/google/android/gms/internal/ik;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/ik;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/nl;->name:Ljava/lang/String;

    iget-wide v4, v14, Lcom/google/android/gms/internal/ik;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/nl;->zzjlj:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/nm;

    iput-object v2, v1, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    iget-object v2, v14, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/nm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/nm;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/nl;->zzjlh:[Lcom/google/android/gms/internal/nm;

    add-int/lit8 v8, v4, 0x1

    aput-object v6, v7, v4

    iput-object v5, v6, Lcom/google/android/gms/internal/nm;->name:Ljava/lang/String;

    iget-object v4, v14, Lcom/google/android/gms/internal/ik;->e:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v5

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/na;->zza(Lcom/google/android/gms/internal/nm;Ljava/lang/Object;)V

    move v4, v8

    goto :goto_4

    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/no;->zzjlq:[Lcom/google/android/gms/internal/nq;

    iget-object v5, v0, Lcom/google/android/gms/internal/no;->zzjlp:[Lcom/google/android/gms/internal/nl;

    invoke-direct {v11, v2, v4, v5}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/nq;[Lcom/google/android/gms/internal/nl;)[Lcom/google/android/gms/internal/nk;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/no;->zzjmi:[Lcom/google/android/gms/internal/nk;

    iget-object v2, v1, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/no;->zzjls:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/nl;->zzjli:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/no;->zzjlt:Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/hy;->zzaxf()J

    move-result-wide v1

    cmp-long v4, v1, v26

    if-eqz v4, :cond_c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    iput-object v4, v0, Lcom/google/android/gms/internal/no;->zzjlv:Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/hy;->zzaxe()J

    move-result-wide v4

    cmp-long v6, v4, v26

    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    move-wide v1, v4

    :goto_6
    cmp-long v4, v1, v26

    if-eqz v4, :cond_e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    iput-object v4, v0, Lcom/google/android/gms/internal/no;->zzjlu:Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/hy;->zzaxo()V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/hy;->zzaxl()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/no;->zzjmg:Ljava/lang/Integer;

    const-wide/16 v1, 0x2e86

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/no;->zzjmb:Ljava/lang/Long;

    iget-object v1, v11, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/no;->zzjlr:Ljava/lang/Long;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/internal/no;->zzjmh:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/google/android/gms/internal/no;->zzjls:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v4, v17

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/hy;->zzal(J)V

    iget-object v0, v0, Lcom/google/android/gms/internal/no;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/hy;->zzam(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/hy;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/sx;->zzho()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/sp;->zzo([BII)Lcom/google/android/gms/internal/sp;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/sx;->zza(Lcom/google/android/gms/internal/sp;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/sp;->zzcwt()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/na;->zzq([B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/id;->endTransaction()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public final zzawk()Lcom/google/android/gms/internal/hu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->B:Lcom/google/android/gms/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->B:Lcom/google/android/gms/internal/hu;

    return-object v0
.end method

.method public final zzawl()Lcom/google/android/gms/internal/ia;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->A:Lcom/google/android/gms/internal/ia;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->A:Lcom/google/android/gms/internal/ia;

    return-object v0
.end method

.method public final zzawm()Lcom/google/android/gms/internal/ky;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->w:Lcom/google/android/gms/internal/ky;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->w:Lcom/google/android/gms/internal/ky;

    return-object v0
.end method

.method public final zzawn()Lcom/google/android/gms/internal/iu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->x:Lcom/google/android/gms/internal/iu;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->x:Lcom/google/android/gms/internal/iu;

    return-object v0
.end method

.method public final zzawo()Lcom/google/android/gms/internal/ij;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->v:Lcom/google/android/gms/internal/ij;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->v:Lcom/google/android/gms/internal/ij;

    return-object v0
.end method

.method public final zzawp()Lcom/google/android/gms/internal/lr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->u:Lcom/google/android/gms/internal/lr;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->u:Lcom/google/android/gms/internal/lr;

    return-object v0
.end method

.method public final zzawq()Lcom/google/android/gms/internal/ln;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->t:Lcom/google/android/gms/internal/ln;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->t:Lcom/google/android/gms/internal/ln;

    return-object v0
.end method

.method public final zzawr()Lcom/google/android/gms/internal/iv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->q:Lcom/google/android/gms/internal/iv;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->q:Lcom/google/android/gms/internal/iv;

    return-object v0
.end method

.method public final zzaws()Lcom/google/android/gms/internal/id;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->p:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->p:Lcom/google/android/gms/internal/id;

    return-object v0
.end method

.method public final zzawt()Lcom/google/android/gms/internal/ix;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->o:Lcom/google/android/gms/internal/ix;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->o:Lcom/google/android/gms/internal/ix;

    return-object v0
.end method

.method public final zzawu()Lcom/google/android/gms/internal/na;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->n:Lcom/google/android/gms/internal/na;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->n:Lcom/google/android/gms/internal/na;

    return-object v0
.end method

.method public final zzawv()Lcom/google/android/gms/internal/jr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->k:Lcom/google/android/gms/internal/jr;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->k:Lcom/google/android/gms/internal/jr;

    return-object v0
.end method

.method public final zzaww()Lcom/google/android/gms/internal/mq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->j:Lcom/google/android/gms/internal/mq;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->j:Lcom/google/android/gms/internal/mq;

    return-object v0
.end method

.method public final zzawx()Lcom/google/android/gms/internal/js;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/internal/js;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/internal/js;

    return-object v0
.end method

.method public final zzawy()Lcom/google/android/gms/internal/iz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->i:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->i:Lcom/google/android/gms/internal/iz;

    return-object v0
.end method

.method public final zzawz()Lcom/google/android/gms/internal/jj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->h:Lcom/google/android/gms/internal/jj;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->h:Lcom/google/android/gms/internal/jj;

    return-object v0
.end method

.method public final zzaxa()Lcom/google/android/gms/internal/ic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    return-object v0
.end method

.method public final zzazx()Lcom/google/android/gms/internal/iz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->i:Lcom/google/android/gms/internal/iz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->i:Lcom/google/android/gms/internal/iz;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzazz()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->l:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final zzbaa()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->m:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzbab()Lcom/google/android/gms/internal/jd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->r:Lcom/google/android/gms/internal/jd;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/kw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->r:Lcom/google/android/gms/internal/jd;

    return-object v0
.end method

.method public final zzbah()V
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->O:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v2

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/internal/lr;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/jx;->O:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->n()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/jx;->L:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v2, p0, Lcom/google/android/gms/internal/jx;->I:Ljava/util/List;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzbab()Lcom/google/android/gms/internal/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/jd;->zzzs()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/ic;->zzayc()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/jx;->a(J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/jj;->zzjcr:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/jl;->get()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v4

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/id;->zzayf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-nez v5, :cond_14

    iget-wide v8, p0, Lcom/google/android/gms/internal/jx;->K:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/id;->zzaym()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/jx;->K:J

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    sget-object v6, Lcom/google/android/gms/internal/ip;->zzjaj:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ic;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/iq;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    sget-object v7, Lcom/google/android/gms/internal/ip;->zzjak:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/ic;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/iq;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v6}, Lcom/google/android/gms/internal/id;->zzl(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/no;

    iget-object v9, v7, Lcom/google/android/gms/internal/no;->zzjmc:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v6, v7, Lcom/google/android/gms/internal/no;->zzjmc:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v6, v8

    :goto_4
    if-eqz v6, :cond_c

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_c

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/no;

    iget-object v10, v9, Lcom/google/android/gms/internal/no;->zzjmc:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v9, v9, Lcom/google/android/gms/internal/no;->zzjmc:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-interface {v5, v1, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    new-instance v6, Lcom/google/android/gms/internal/nn;

    invoke-direct {v6}, Lcom/google/android/gms/internal/nn;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/no;

    iput-object v7, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ic;->zzaye()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/google/android/gms/internal/jx;->g:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ic;->zziz(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    const/4 v10, 0x0

    :goto_8
    iget-object v11, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    array-length v11, v11

    if-ge v10, v11, :cond_f

    iget-object v11, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/no;

    aput-object v12, v11, v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    aget-object v11, v11, v10

    const-wide/16 v12, 0x2e86

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/no;->zzjmb:Ljava/lang/Long;

    iget-object v11, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    aget-object v11, v11, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/no;->zzjlr:Ljava/lang/Long;

    iget-object v11, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    aget-object v11, v11, v10

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v12, v11, Lcom/google/android/gms/internal/no;->zzjmh:Ljava/lang/Boolean;

    if-nez v9, :cond_e

    iget-object v11, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    aget-object v11, v11, v10

    iput-object v8, v11, Lcom/google/android/gms/internal/no;->zzjmo:Ljava/lang/String;

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v5

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/iz;->a(I)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawt()Lcom/google/android/gms/internal/ix;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ix;->a(Lcom/google/android/gms/internal/nn;)Ljava/lang/String;

    move-result-object v8

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawu()Lcom/google/android/gms/internal/na;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/na;->zzb(Lcom/google/android/gms/internal/nn;)[B

    move-result-object v9

    sget-object v5, Lcom/google/android/gms/internal/ip;->zzjat:Lcom/google/android/gms/internal/iq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/iq;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    :goto_9
    invoke-static {v5}, Lcom/google/android/gms/common/internal/ap;->checkArgument(Z)V

    iget-object v5, p0, Lcom/google/android/gms/internal/jx;->I:Ljava/util/List;

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v5

    const-string v7, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/jx;->I:Ljava/util/List;

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/jj;->zzjcs:Lcom/google/android/gms/internal/jl;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/jl;->set(J)V

    const-string v2, "?"

    iget-object v3, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    array-length v3, v3

    if-lez v3, :cond_13

    iget-object v2, v6, Lcom/google/android/gms/internal/nn;->zzjlm:[Lcom/google/android/gms/internal/no;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/gms/internal/no;->zzcn:Ljava/lang/String;

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v3

    const-string v5, "Uploading data. app, uncompressed size, data"

    array-length v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v2, v6, v8}, Lcom/google/android/gms/internal/jb;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jx;->N:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzbab()Lcom/google/android/gms/internal/jd;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/internal/ka;

    invoke-direct {v11, p0}, Lcom/google/android/gms/internal/ka;-><init>(Lcom/google/android/gms/internal/jx;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/kw;->k()V

    invoke-static {v10}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/jg;

    const/4 v3, 0x0

    move-object v5, v2

    move-object v7, v4

    move-object v8, v10

    move-object v10, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/jg;-><init>(Lcom/google/android/gms/internal/jd;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/je;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/js;->zzh(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v12}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    iput-wide v6, p0, Lcom/google/android/gms/internal/jx;->K:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ic;->zzayc()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/id;->zzba(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/hy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/jx;->O:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->n()V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public final zzbo(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;->l()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/hy;->zzar(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/id;->zza(Lcom/google/android/gms/internal/hy;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawv()Lcom/google/android/gms/internal/jr;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    .line 4000
    invoke-virtual {v7}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v7, v7, Lcom/google/android/gms/internal/jr;->a:Ljava/util/Map;

    invoke-interface {v7, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v7, v2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_2
    iget-wide v10, v2, Lcom/google/android/gms/internal/zzcgi;->zziyc:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    invoke-interface {v7}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v10

    :cond_3
    iget v7, v2, Lcom/google/android/gms/internal/zzcgi;->zziyd:I

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v12, v8, v13, v7}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/id;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/id;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/hy;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->getGmpAppId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v12

    const-string v13, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/kw;->k()V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/id;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/String;

    aput-object v8, v13, v15

    const-string v14, "events"

    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v15, "user_attributes"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v12, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v8, v13}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v9

    const-string v12, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v12, v8, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    const/4 v8, 0x0

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/hy;->zzvj()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zzcha;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v8

    const/4 v9, 0x1

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :cond_7
    const/4 v9, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/jx;->b(Lcom/google/android/gms/internal/zzcgi;)V

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v12, "_f"

    :goto_2
    invoke-virtual {v0, v8, v12}, Lcom/google/android/gms/internal/id;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/il;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-ne v7, v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v12, "_v"

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_13

    const-wide/32 v12, 0x36ee80

    div-long v14, v10, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v18, v10

    const-wide/16 v9, 0x1

    add-long/2addr v14, v9

    mul-long v14, v14, v12

    const-string v0, "_r"

    const-string v11, "_c"

    if-nez v7, :cond_11

    :try_start_3
    new-instance v7, Lcom/google/android/gms/internal/zzcln;

    const-string v13, "_fot"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v7

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_a

    :cond_a
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v0, v11, v14}, Lcom/google/android/gms/internal/fq;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    :goto_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v11

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v11, v15

    if-eqz v13, :cond_d

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v14

    if-eqz v0, :cond_b

    invoke-virtual {v7, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const/4 v0, 0x1

    :goto_6
    new-instance v6, Lcom/google/android/gms/internal/zzcln;

    const-string v13, "_fi"

    if-eqz v0, :cond_c

    move-wide v11, v9

    goto :goto_7

    :cond_c
    const-wide/16 v11, 0x0

    :goto_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v6

    const/4 v11, 0x0

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/internal/jx;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object v0

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v11}, Lcom/google/android/gms/internal/fq;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v6

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_f

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_e

    invoke-virtual {v7, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_f

    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->k()V

    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/id;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-ltz v0, :cond_10

    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    const-string v13, "_f"

    new-instance v14, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v14, v7}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    :goto_b
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_c

    :cond_11
    const/4 v3, 0x1

    if-ne v7, v3, :cond_12

    new-instance v3, Lcom/google/android/gms/internal/zzcln;

    const-string v13, "_fvt"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v3

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->a()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    const-string v13, "_v"

    new-instance v14, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v14, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    goto :goto_b

    :cond_12
    :goto_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/internal/zzcha;

    const-string v13, "_e"

    new-instance v14, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    :goto_d
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_e

    :cond_13
    move-wide/from16 v18, v10

    iget-boolean v0, v2, Lcom/google/android/gms/internal/zzcgi;->zzixy:Z

    if-eqz v0, :cond_14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzcha;

    const-string v13, "_cd"

    new-instance v14, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    goto :goto_d

    :cond_14
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/id;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/id;->endTransaction()V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public final zzjx(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/jz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/jz;-><init>(Lcom/google/android/gms/internal/jx;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/js;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jx;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/jb;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzws()Lcom/google/android/gms/common/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->s:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method
