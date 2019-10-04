.class public Lc/b/a/d/l;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/d/l$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lc/b/a/d/a;

.field public final b:Lc/b/a/d/o;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/b/a/d/l;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lc/b/a/n;

.field public e:Lc/b/a/d/l;

.field public f:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/d/a;

    invoke-direct {v0}, Lc/b/a/d/a;-><init>()V

    invoke-direct {p0, v0}, Lc/b/a/d/l;-><init>(Lc/b/a/d/a;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/d/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    new-instance v0, Lc/b/a/d/l$a;

    invoke-direct {v0, p0}, Lc/b/a/d/l$a;-><init>(Lc/b/a/d/l;)V

    iput-object v0, p0, Lc/b/a/d/l;->b:Lc/b/a/d/o;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/b/a/d/l;->c:Ljava/util/Set;

    .line 5
    iput-object p1, p0, Lc/b/a/d/l;->a:Lc/b/a/d/a;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/d/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/d/l;->a:Lc/b/a/d/a;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lc/b/a/d/l;->e()V

    .line 8
    invoke-static {p1}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/e;->i()Lc/b/a/d/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/d/n;->c(Landroid/app/Activity;)Lc/b/a/d/l;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/d/l;->e:Lc/b/a/d/l;

    .line 9
    iget-object p1, p0, Lc/b/a/d/l;->e:Lc/b/a/d/l;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lc/b/a/d/l;->e:Lc/b/a/d/l;

    invoke-virtual {p1, p0}, Lc/b/a/d/l;->a(Lc/b/a/d/l;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Fragment;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lc/b/a/d/l;->f:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/d/l;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final a(Lc/b/a/d/l;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/d/l;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/b/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/d/l;->d:Lc/b/a/n;

    return-void
.end method

.method public final b()Landroid/app/Fragment;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lc/b/a/d/l;->f:Landroid/app/Fragment;

    :goto_1
    return-object v0
.end method

.method public final b(Lc/b/a/d/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/l;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lc/b/a/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/l;->d:Lc/b/a/n;

    return-object v0
.end method

.method public d()Lc/b/a/d/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/l;->b:Lc/b/a/d/o;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/d/l;->e:Lc/b/a/d/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lc/b/a/d/l;->b(Lc/b/a/d/l;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/b/a/d/l;->e:Lc/b/a/d/l;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lc/b/a/d/l;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lc/b/a/d/l;->a:Lc/b/a/d/a;

    invoke-virtual {v0}, Lc/b/a/d/a;->a()V

    .line 3
    invoke-virtual {p0}, Lc/b/a/d/l;->e()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2
    invoke-virtual {p0}, Lc/b/a/d/l;->e()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lc/b/a/d/l;->a:Lc/b/a/d/a;

    invoke-virtual {v0}, Lc/b/a/d/a;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lc/b/a/d/l;->a:Lc/b/a/d/a;

    invoke-virtual {v0}, Lc/b/a/d/a;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/b/a/d/l;->b()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
