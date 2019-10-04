.class public Lc/e/a/b/d/a/a/o;
.super Lc/e/a/b/d/a/a/P;


# instance fields
.field public final f:Lb/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/d<",
            "Lc/e/a/b/d/a/a/N<",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:Lc/e/a/b/d/a/a/c;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/f;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/d/a/a/P;-><init>(Lc/e/a/b/d/a/a/f;)V

    .line 2
    new-instance p1, Lb/f/d;

    invoke-direct {p1}, Lb/f/d;-><init>()V

    iput-object p1, p0, Lc/e/a/b/d/a/a/o;->f:Lb/f/d;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lc/e/a/b/d/a/a/f;

    const-string v0, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, v0, p0}, Lc/e/a/b/d/a/a/f;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lc/e/a/b/d/a/a/c;Lc/e/a/b/d/a/a/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lc/e/a/b/d/a/a/c;",
            "Lc/e/a/b/d/a/a/N<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a(Landroid/app/Activity;)Lc/e/a/b/d/a/a/f;

    move-result-object p0

    .line 2
    const-class v0, Lc/e/a/b/d/a/a/o;

    const-string v1, "ConnectionlessLifecycleHelper"

    .line 3
    invoke-interface {p0, v1, v0}, Lc/e/a/b/d/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/o;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lc/e/a/b/d/a/a/o;

    invoke-direct {v0, p0}, Lc/e/a/b/d/a/a/o;-><init>(Lc/e/a/b/d/a/a/f;)V

    .line 5
    :cond_0
    iput-object p1, v0, Lc/e/a/b/d/a/a/o;->g:Lc/e/a/b/d/a/a/c;

    const-string p0, "ApiKey cannot be null"

    .line 6
    invoke-static {p2, p0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p0, v0, Lc/e/a/b/d/a/a/o;->f:Lb/f/d;

    invoke-virtual {p0, p2}, Lb/f/d;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p1, v0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/o;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/b/d/a/a/o;->g:Lc/e/a/b/d/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/d/a/a/c;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/o;->i()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/e/a/b/d/a/a/P;->d()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/o;->i()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/e/a/b/d/a/a/P;->e()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/o;->g:Lc/e/a/b/d/a/a/c;

    invoke-virtual {v0, p0}, Lc/e/a/b/d/a/a/c;->b(Lc/e/a/b/d/a/a/o;)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/o;->g:Lc/e/a/b/d/a/a/c;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a/c;->d()V

    return-void
.end method

.method public final h()Lb/f/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/f/d<",
            "Lc/e/a/b/d/a/a/N<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/o;->f:Lb/f/d;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/o;->f:Lb/f/d;

    invoke-virtual {v0}, Lb/f/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/o;->g:Lc/e/a/b/d/a/a/c;

    invoke-virtual {v0, p0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/a/o;)V

    :cond_0
    return-void
.end method
