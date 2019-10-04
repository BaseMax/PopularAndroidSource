.class public final Lc/e/a/b/g/f/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    new-instance v1, Lc/e/a/b/g/f/w;

    invoke-direct {v1, p0, p1, p2}, Lc/e/a/b/g/f/w;-><init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    new-instance v1, Lc/e/a/b/g/f/C;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/g/f/C;-><init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    new-instance v1, Lc/e/a/b/g/f/z;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/g/f/z;-><init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    new-instance v1, Lc/e/a/b/g/f/y;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/g/f/y;-><init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lc/e/a/b/g/f/bd;

    invoke-direct {v0}, Lc/e/a/b/g/f/bd;-><init>()V

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    new-instance v2, Lc/e/a/b/g/f/B;

    invoke-direct {v2, p0, p1, v0}, Lc/e/a/b/g/f/B;-><init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;Lc/e/a/b/g/f/bd;)V

    invoke-static {v1, v2}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/g/f/bd;->d(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    new-instance v1, Lc/e/a/b/g/f/x;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/g/f/x;-><init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$c;->a:Lc/e/a/b/g/f/b;

    new-instance v1, Lc/e/a/b/g/f/A;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/g/f/A;-><init>(Lc/e/a/b/g/f/b$c;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lc/e/a/b/g/f/b;->a(Lc/e/a/b/g/f/b;Lc/e/a/b/g/f/b$a;)V

    return-void
.end method
