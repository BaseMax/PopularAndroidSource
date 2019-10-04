.class public Lc/e/c/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/c/a/a/a;


# static fields
.field public static volatile a:Lc/e/c/a/a/a;


# instance fields
.field public final b:Lcom/google/android/gms/measurement/AppMeasurement;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/e/c/a/a/b;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lc/e/c/a/a/b;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lc/e/c/c/d;)Lc/e/c/a/a/a;
    .locals 5

    .line 1
    invoke-static {p0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lc/e/c/a/a/b;->a:Lc/e/c/a/a/a;

    if-nez v0, :cond_2

    .line 6
    const-class v0, Lc/e/c/a/a/b;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lc/e/c/a/a/b;->a:Lc/e/c/a/a/a;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    const-class v2, Lc/e/c/a;

    sget-object v3, Lc/e/c/a/a/c;->a:Ljava/util/concurrent/Executor;

    sget-object v4, Lc/e/c/a/a/d;->a:Lc/e/c/c/b;

    invoke-interface {p2, v2, v3, v4}, Lc/e/c/c/d;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lc/e/c/c/b;)V

    const-string p2, "dataCollectionDefaultEnabled"

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result p0

    .line 12
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    :cond_0
    new-instance p0, Lc/e/c/a/a/b;

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/e/c/a/a/b;-><init>(Lcom/google/android/gms/measurement/AppMeasurement;)V

    sput-object p0, Lc/e/c/a/a/b;->a:Lc/e/c/a/a/a;

    .line 15
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 16
    :cond_2
    :goto_0
    sget-object p0, Lc/e/c/a/a/b;->a:Lc/e/c/a/a/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/e/c/c/a;)V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lc/e/c/c/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/e/c/a;

    iget-boolean p0, p0, Lc/e/c/a;->a:Z

    .line 21
    const-class v0, Lc/e/c/a/a/b;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lc/e/c/a/a/b;->a:Lc/e/c/a/a/a;

    check-cast v1, Lc/e/c/a/a/b;

    iget-object v1, v1, Lc/e/c/a/a/b;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 23
    invoke-virtual {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Z)V

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-static {p1}, Lc/e/c/a/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lc/e/c/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lc/e/c/a/a/b;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-static {p1}, Lc/e/c/a/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p2, p3}, Lc/e/c/a/a/a/b;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p1, p2, p3}, Lc/e/c/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lc/e/c/a/a/b;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
