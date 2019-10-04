.class public final Lc/e/a/b/d/a/a/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/d/a/a/H;
.implements Lc/e/a/b/d/d/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final a:Lc/e/a/b/d/a/a$f;

.field public final b:Lc/e/a/b/d/a/a/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a/N<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lc/e/a/b/d/d/l;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lc/e/a/b/d/a/a/c;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/c;Lc/e/a/b/d/a/a$f;Lc/e/a/b/d/a/a/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a$f;",
            "Lc/e/a/b/d/a/a/N<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/c$c;->f:Lc/e/a/b/d/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/a/a/c$c;->c:Lc/e/a/b/d/d/l;

    .line 3
    iput-object p1, p0, Lc/e/a/b/d/a/a/c$c;->d:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lc/e/a/b/d/a/a/c$c;->e:Z

    .line 5
    iput-object p2, p0, Lc/e/a/b/d/a/a/c$c;->a:Lc/e/a/b/d/a/a$f;

    .line 6
    iput-object p3, p0, Lc/e/a/b/d/a/a/c$c;->b:Lc/e/a/b/d/a/a/N;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/a/a/c$c;)Lc/e/a/b/d/a/a$f;
    .locals 0

    .line 10
    iget-object p0, p0, Lc/e/a/b/d/a/a/c$c;->a:Lc/e/a/b/d/a/a$f;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/d/a/a/c$c;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lc/e/a/b/d/a/a/c$c;->e:Z

    return p1
.end method

.method public static synthetic b(Lc/e/a/b/d/a/a/c$c;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$c;->a()V

    return-void
.end method

.method public static synthetic c(Lc/e/a/b/d/a/a/c$c;)Lc/e/a/b/d/a/a/N;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/d/a/a/c$c;->b:Lc/e/a/b/d/a/a/N;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 7
    iget-boolean v0, p0, Lc/e/a/b/d/a/a/c$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/d/a/a/c$c;->c:Lc/e/a/b/d/d/l;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lc/e/a/b/d/a/a/c$c;->a:Lc/e/a/b/d/a/a$f;

    iget-object v2, p0, Lc/e/a/b/d/a/a/c$c;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lc/e/a/b/d/a/a$f;->a(Lc/e/a/b/d/d/l;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/b/d/d/l;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/d/l;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lc/e/a/b/d/a/a/c$c;->c:Lc/e/a/b/d/d/l;

    .line 3
    iput-object p2, p0, Lc/e/a/b/d/a/a/c$c;->d:Ljava/util/Set;

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/c$c;->a()V

    return-void

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/c$c;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$c;->f:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/e/a/b/d/a/a/x;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/d/a/a/x;-><init>(Lc/e/a/b/d/a/a/c$c;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/c$c;->f:Lc/e/a/b/d/a/a/c;

    invoke-static {v0}, Lc/e/a/b/d/a/a/c;->j(Lc/e/a/b/d/a/a/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/c$c;->b:Lc/e/a/b/d/a/a/N;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/c$a;

    invoke-virtual {v0, p1}, Lc/e/a/b/d/a/a/c$a;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
