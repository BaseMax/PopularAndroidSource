.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field public final b:Lc/e/a/b/h/b/Y;

.field public final c:Lc/e/a/b/g/f/b;

.field public final d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lc/e/a/b/h/b/Y;

    .line 10
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lc/e/a/b/g/f/b;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lc/e/a/b/h/b/Y;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lc/e/a/b/g/f/b;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->e:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_1

    .line 4
    invoke-static {p0}, Lc/e/a/b/g/f/b;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p0}, Lc/e/a/b/g/f/b;->a(Landroid/content/Context;)Lc/e/a/b/g/f/b;

    move-result-object p0

    .line 6
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lc/e/a/b/g/f/b;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v1}, Lc/e/a/b/h/b/Y;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;)Lc/e/a/b/h/b/Y;

    move-result-object p0

    .line 8
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lc/e/a/b/h/b/Y;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_2
    :goto_1
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lc/e/a/b/h/b/Ya;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {p0}, Lc/e/a/b/g/f/b;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0, v1, v1, v1, p1}, Lc/e/a/b/g/f/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/g/f/b;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance p1, Lc/e/c/a/a;

    invoke-direct {p1, p0}, Lc/e/c/a/a;-><init>(Lc/e/a/b/g/f/b;)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lc/e/a/b/g/f/b;

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/g/f/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->B()Lc/e/a/b/h/b/Fa;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "app"

    invoke-virtual {v0, v2, p1, p2, v1}, Lc/e/a/b/h/b/Fa;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lc/e/a/b/g/f/b;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/b/g/f/b;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lc/e/a/b/h/b/nc;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->E()Lc/e/a/b/h/b/db;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/b/h/b/db;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
