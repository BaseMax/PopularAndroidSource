.class public final Lc/c/a/b/d;
.super Ljava/lang/Object;
.source "BazaarHelper.kt"

# interfaces
.implements Li/a/H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/b/d$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/b/d$a;


# instance fields
.field public final b:Lc/c/a/e/d/u/a;

.field public final c:Li/a/u;

.field public final d:Landroid/content/Context;

.field public final e:Lc/c/a/e/d/b/ba;

.field public final f:Lc/c/a/e/d/u/a;

.field public final g:Lc/c/a/d/g/a/a;

.field public final h:Lc/c/a/g/b;

.field public final i:Lc/c/a/p/f;

.field public final j:Lf/a/a/c/a;

.field public final k:Lc/c/a/d/c/b;

.field public final l:Lc/c/a/a/b/a/a;

.field public final m:Lc/c/a/a/b/a;

.field public final n:Lc/c/a/p/I;

.field public final o:Lc/c/a/b/d/m;

.field public final p:Lc/c/a/e/d/a/a;

.field public final q:Lc/c/a/e/b/c;

.field public final r:Lc/c/a/e/b/a;

.field public final s:Lc/c/a/e/a/a/a;

.field public final t:Lc/c/a/d/h/a/a;

.field public final u:Lc/c/a/e/h/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/b/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/b/d$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/b/d;->a:Lc/c/a/b/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/b/ba;Lc/c/a/e/d/u/a;Lc/c/a/d/g/a/a;Lc/c/a/g/b;Lc/c/a/p/f;Lf/a/a/c/a;Lc/c/a/d/c/b;Lc/c/a/a/b/a/a;Lc/c/a/a/b/a;Lc/c/a/p/I;Lc/c/a/b/d/m;Lc/c/a/e/d/a/a;Lc/c/a/e/b/c;Lc/c/a/e/b/a;Lc/c/a/e/a/a/a;Lc/c/a/d/h/a/a;Lc/c/a/e/h/a/c;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "context"

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradableAppRepository"

    invoke-static {v2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {v3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundDetector"

    invoke-static {v4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "developerTools"

    invoke-static {v5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerFactory"

    invoke-static {v6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineNetwork"

    invoke-static {v7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionLogTracker"

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsTracker"

    invoke-static {v10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {v11, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentManager"

    invoke-static {v12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {v13, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoDataSource"

    invoke-static {v14, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceDisplayInfoDataSource"

    invoke-static {v15, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyDataImporterRepository"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTabsActivityLifecycleCallbacks"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCache"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Lc/c/a/b/d;->d:Landroid/content/Context;

    iput-object v2, v0, Lc/c/a/b/d;->e:Lc/c/a/e/d/b/ba;

    iput-object v3, v0, Lc/c/a/b/d;->f:Lc/c/a/e/d/u/a;

    iput-object v4, v0, Lc/c/a/b/d;->g:Lc/c/a/d/g/a/a;

    iput-object v5, v0, Lc/c/a/b/d;->h:Lc/c/a/g/b;

    iput-object v6, v0, Lc/c/a/b/d;->i:Lc/c/a/p/f;

    iput-object v7, v0, Lc/c/a/b/d;->j:Lf/a/a/c/a;

    iput-object v8, v0, Lc/c/a/b/d;->k:Lc/c/a/d/c/b;

    iput-object v9, v0, Lc/c/a/b/d;->l:Lc/c/a/a/b/a/a;

    iput-object v10, v0, Lc/c/a/b/d;->m:Lc/c/a/a/b/a;

    iput-object v11, v0, Lc/c/a/b/d;->n:Lc/c/a/p/I;

    iput-object v12, v0, Lc/c/a/b/d;->o:Lc/c/a/b/d/m;

    iput-object v13, v0, Lc/c/a/b/d;->p:Lc/c/a/e/d/a/a;

    iput-object v14, v0, Lc/c/a/b/d;->q:Lc/c/a/e/b/c;

    move-object/from16 v1, p15

    iput-object v1, v0, Lc/c/a/b/d;->r:Lc/c/a/e/b/a;

    iput-object v15, v0, Lc/c/a/b/d;->s:Lc/c/a/e/a/a/a;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Lc/c/a/b/d;->t:Lc/c/a/d/h/a/a;

    iput-object v2, v0, Lc/c/a/b/d;->u:Lc/c/a/e/h/a/c;

    .line 2
    sget-object v1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    iget-object v2, v0, Lc/c/a/b/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v1

    iput-object v1, v0, Lc/c/a/b/d;->b:Lc/c/a/e/d/u/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v2, v1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v1

    iput-object v1, v0, Lc/c/a/b/d;->c:Li/a/u;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/d;)Lc/c/a/d/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d;->k:Lc/c/a/d/c/b;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/b/d;)Lc/c/a/a/b/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d;->l:Lc/c/a/a/b/a/a;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/b/d;)Lc/c/a/a/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d;->m:Lc/c/a/a/b/a;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/b/d;)Lc/c/a/b/d/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d;->o:Lc/c/a/b/d/m;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/b/d;)Lc/c/a/e/d/u/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d;->f:Lc/c/a/e/d/u/a;

    return-object p0
.end method

.method public static final synthetic f(Lc/c/a/b/d;)Lc/c/a/e/d/b/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d;->e:Lc/c/a/e/d/b/ba;

    return-object p0
.end method

.method public static final synthetic g(Lc/c/a/b/d;)Lc/c/a/p/I;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d;->n:Lc/c/a/p/I;

    return-object p0
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 2
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/b/d;->c:Li/a/u;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Landroid/content/Context;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/io/File;

    const-string v0, "cacheDirectory"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    .line 27
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "shared_prefs"

    .line 28
    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-static {v3}, Lh/e/h;->b(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Landroid/app/Application;)V
    .locals 7

    const-string v0, "application"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/b/d;->u:Lc/c/a/e/h/a/c;

    invoke-static {p1, v0}, Lc/c/a/m/a;->a(Landroid/app/Application;Lc/c/a/e/h/a/c;)V

    .line 4
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    const/4 v1, 0x2

    new-array v2, v1, [Lc/c/a/c/c/b;

    .line 5
    new-instance v3, Lc/c/a/d/g/b/b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lc/c/a/d/g/b/b;-><init>(I)V

    aput-object v3, v2, v4

    .line 6
    new-instance v3, Lc/c/a/b/a/a;

    invoke-direct {v3, v1}, Lc/c/a/b/a/a;-><init>(I)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    .line 7
    invoke-virtual {v0, v2}, Lc/c/a/c/c/a;->a([Lc/c/a/c/c/b;)V

    .line 8
    new-array v0, v1, [Le/a/a/a/l;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Le/a/a/a/f;->a(Landroid/content/Context;[Le/a/a/a/l;)Le/a/a/a/f;

    .line 9
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    new-instance v1, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$1;-><init>(Lc/c/a/b/d;)V

    invoke-virtual {v0, p1, v1}, Lc/c/a/a/a;->a(Landroid/content/Context;Lh/f/a/b;)V

    .line 10
    invoke-virtual {p0, p1}, Lc/c/a/b/d;->b(Landroid/app/Application;)V

    .line 11
    sget-object v0, Lf/a/a/b/a;->e:Lf/a/a/b/a;

    iget-object v1, p0, Lc/c/a/b/d;->j:Lf/a/a/c/a;

    iget-object v2, p0, Lc/c/a/b/d;->k:Lc/c/a/d/c/b;

    iget-object v3, p0, Lc/c/a/b/d;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0, p1, v1, v2, v3}, Lf/a/a/b/a;->a(Landroid/content/Context;Lf/a/a/c/a;Lc/c/a/d/c/b;Lc/c/a/e/d/u/a;)V

    .line 12
    new-instance v0, Lb/H/a$a;

    invoke-direct {v0}, Lb/H/a$a;-><init>()V

    iget-object v1, p0, Lc/c/a/b/d;->i:Lc/c/a/p/f;

    invoke-virtual {v0, v1}, Lb/H/a$a;->a(Lb/H/q;)Lb/H/a$a;

    invoke-virtual {v0}, Lb/H/a$a;->a()Lb/H/a;

    move-result-object v0

    invoke-static {p1, v0}, Lb/H/m;->a(Landroid/content/Context;Lb/H/a;)V

    .line 13
    iget-object v0, p0, Lc/c/a/b/d;->g:Lc/c/a/d/g/a/a;

    .line 14
    invoke-virtual {v0, p1}, Lc/c/a/d/g/a/a;->a(Landroid/content/Context;)Lc/c/a/d/g/a/a;

    .line 15
    iget-object v1, p0, Lc/c/a/b/d;->t:Lc/c/a/d/h/a/a;

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/a;->a(Lc/c/a/d/g/a/a$a;)V

    .line 16
    iget-object v0, p0, Lc/c/a/b/d;->h:Lc/c/a/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/g/b;->a(Landroid/app/Application;)V

    .line 17
    invoke-virtual {p0, p1}, Lc/c/a/b/d;->c(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0, p1}, Lc/c/a/b/d;->d(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lc/c/a/b/d;->e()V

    .line 20
    new-instance v4, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$3;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$3;-><init>(Lc/c/a/b/d;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    .line 21
    invoke-virtual {p0}, Lc/c/a/b/d;->b()V

    .line 22
    invoke-virtual {p0, p1}, Lc/c/a/b/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .line 32
    new-instance v3, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;-><init>(Lc/c/a/b/d;Landroid/content/Context;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final synthetic b(Landroid/content/Context;Lh/c/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;

    iget v1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;-><init>(Lc/c/a/b/d;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 15
    iget v2, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/b/d;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v2, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/b/d;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 18
    iget-object p2, p0, Lc/c/a/b/d;->s:Lc/c/a/e/a/a/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->label:I

    invoke-virtual {p2, v0}, Lc/c/a/e/a/a/a;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p1

    move-object p1, p0

    .line 19
    :goto_1
    iput-object p1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/app/BazaarHelper$prepareDataForBazaar8$1;->label:I

    invoke-virtual {p1, p2, v0}, Lc/c/a/b/d;->a(Landroid/content/Context;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 20
    :cond_5
    :goto_2
    iget-object p1, p1, Lc/c/a/b/d;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->C()V

    .line 21
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "BazaarPreferences"

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "bazaar_unique_id"

    const/4 v1, 0x0

    .line 14
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/b/d;->p:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/b/d;->p:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->d()I

    move-result v0

    const-string v1, "device_id_int"

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->setInt(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lc/c/a/b/d;->q:Lc/c/a/e/b/c;

    invoke-virtual {v0}, Lc/c/a/e/b/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_id_int"

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/b/d;->r:Lc/c/a/e/b/a;

    invoke-virtual {v0}, Lc/c/a/e/b/a;->a()Z

    move-result v0

    const-string v1, "is_tablet"

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->setBool(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lc/c/a/b/d;->q:Lc/c/a/e/b/c;

    invoke-virtual {v0}, Lc/c/a/e/b/c;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net_type"

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lc/c/a/b/d;->q:Lc/c/a/e/b/c;

    invoke-virtual {v0}, Lc/c/a/e/b/c;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net_operator"

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lc/c/a/b/d;->b:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/app/Application;)V
    .locals 7

    .line 9
    invoke-virtual {p0}, Lc/c/a/b/d;->d()V

    .line 10
    iget-object v0, p0, Lc/c/a/b/d;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lc/c/a/b/d;->c()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 12
    new-instance v4, Lcom/farsitel/bazaar/app/BazaarHelper$runDataMigrations$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/app/BazaarHelper$runDataMigrations$1;-><init>(Lc/c/a/b/d;Landroid/app/Application;Lh/c/b;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 8
    iget-object v0, p0, Lc/c/a/b/d;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lc/c/a/b/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lc/c/a/b/d;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v1, v0}, Lc/c/a/e/d/u/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/farsitel/bazaar/app/receiver/PackageChangeReceiver;

    invoke-direct {v1}, Lcom/farsitel/bazaar/app/receiver/PackageChangeReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final d()V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/b/d;->p:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->z()V

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 6

    .line 2
    new-instance v3, Lcom/farsitel/bazaar/app/BazaarHelper$syncUpgradableAppsWithLocal$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/app/BazaarHelper$syncUpgradableAppsWithLocal$1;-><init>(Lc/c/a/b/d;Landroid/content/Context;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final e()V
    .locals 7

    .line 2
    iget-object v0, p0, Lc/c/a/b/d;->n:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->d()V

    .line 3
    iget-object v0, p0, Lc/c/a/b/d;->n:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    new-instance v4, Lcom/farsitel/bazaar/app/BazaarHelper$scheduleWorkers$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/farsitel/bazaar/app/BazaarHelper$scheduleWorkers$1;-><init>(Lc/c/a/b/d;Lh/c/b;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    :cond_0
    return-void
.end method
