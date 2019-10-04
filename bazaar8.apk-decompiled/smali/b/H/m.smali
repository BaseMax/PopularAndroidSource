.class public abstract Lb/H/m;
.super Ljava/lang/Object;
.source "WorkManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb/H/m;
    .locals 2

    .line 1
    invoke-static {}, Lb/H/a/m;->a()Lb/H/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  The most likely cause is that you disabled WorkManagerInitializer in your manifest but forgot to call WorkManager#initialize in your Application#onCreate or a ContentProvider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lb/H/a;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lb/H/a/m;->a(Landroid/content/Context;Lb/H/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lb/H/n;)Lb/H/i;
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/H/m;->a(Ljava/util/List;)Lb/H/i;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;)Lb/H/i;
.end method

.method public abstract a(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/i;
.end method

.method public a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Lb/H/g;)Lb/H/i;
    .locals 0

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lb/H/i;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lb/H/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "Lb/H/g;",
            ">;)",
            "Lb/H/i;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Lb/H/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lb/H/n;",
            ">;)",
            "Lb/H/i;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lc/e/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/e/b/a/a/a<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end method
