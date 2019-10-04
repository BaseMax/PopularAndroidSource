.class public final Lc/e/a/b/d/a/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic b:Lc/e/a/b/d/a/a/c$c;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/c$c;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    iput-object p2, p0, Lc/e/a/b/d/a/a/x;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/x;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/e/a/b/d/a/a/c$c;->a(Lc/e/a/b/d/a/a/c$c;Z)Z

    .line 3
    iget-object v0, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c$c;->a(Lc/e/a/b/d/a/a/c$c;)Lc/e/a/b/d/a/a$f;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c$c;->b(Lc/e/a/b/d/a/a/c$c;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c$c;->a(Lc/e/a/b/d/a/a/c$c;)Lc/e/a/b/d/a/a$f;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lc/e/a/b/d/a/a$f;->a(Lc/e/a/b/d/d/l;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GoogleApiManager"

    const-string v2, "Failed to get service from broker. "

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object v0, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    iget-object v0, v0, Lc/e/a/b/d/a/a/c$c;->f:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->j(Lc/e/a/b/d/a/a/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    .line 10
    invoke-static {v1}, Lc/e/a/b/d/a/a/c$c;->c(Lc/e/a/b/d/a/a/c$c;)Lc/e/a/b/d/a/a/N;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/c$a;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 11
    invoke-virtual {v0, v1}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    iget-object v0, v0, Lc/e/a/b/d/a/a/c$c;->f:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->j(Lc/e/a/b/d/a/a/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/x;->b:Lc/e/a/b/d/a/a/c$c;

    invoke-static {v1}, Lc/e/a/b/d/a/a/c$c;->c(Lc/e/a/b/d/a/a/c$c;)Lc/e/a/b/d/a/a/N;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/c$a;

    iget-object v1, p0, Lc/e/a/b/d/a/a/x;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lc/e/a/b/d/a/a/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
