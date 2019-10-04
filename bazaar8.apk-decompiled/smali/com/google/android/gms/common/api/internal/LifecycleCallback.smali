.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lc/e/a/b/d/a/a/f;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lc/e/a/b/d/a/a/f;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lc/e/a/b/d/a/a/f;
    .locals 1

    .line 6
    new-instance v0, Lc/e/a/b/d/a/a/e;

    invoke-direct {v0, p0}, Lc/e/a/b/d/a/a/e;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a(Lc/e/a/b/d/a/a/e;)Lc/e/a/b/d/a/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e/a/b/d/a/a/e;)Lc/e/a/b/d/a/a/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/e;->b()Lb/o/a/i;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/b/d/a/a/Y;->a(Lb/o/a/i;)Lc/e/a/b/d/a/a/Y;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/e;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/b/d/a/a/W;->a(Landroid/app/Activity;)Lc/e/a/b/d/a/a/W;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get fragment for unexpected activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getChimeraLifecycleFragmentImpl(Lc/e/a/b/d/a/a/e;)Lc/e/a/b/d/a/a/f;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method not available in SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lc/e/a/b/d/a/a/f;

    invoke-interface {v0}, Lc/e/a/b/d/a/a/f;->l()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
