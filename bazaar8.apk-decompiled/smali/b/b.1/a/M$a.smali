.class public Lb/b/a/M$a;
.super Lb/b/f/b;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lb/b/f/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lb/b/f/a/k;

.field public e:Lb/b/f/b$a;

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lb/b/a/M;


# direct methods
.method public constructor <init>(Lb/b/a/M;Landroid/content/Context;Lb/b/f/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    invoke-direct {p0}, Lb/b/f/b;-><init>()V

    .line 2
    iput-object p2, p0, Lb/b/a/M$a;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    .line 4
    new-instance p1, Lb/b/f/a/k;

    invoke-direct {p1, p2}, Lb/b/f/a/k;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lb/b/f/a/k;->d(I)Lb/b/f/a/k;

    iput-object p1, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    .line 6
    iget-object p1, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-virtual {p1, p0}, Lb/b/f/a/k;->a(Lb/b/f/a/k$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v1, v0, Lb/b/a/M;->p:Lb/b/a/M$a;

    if-eq v1, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Lb/b/a/M;->x:Z

    iget-boolean v0, v0, Lb/b/a/M;->y:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lb/b/a/M;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iput-object p0, v0, Lb/b/a/M;->q:Lb/b/f/b;

    .line 4
    iget-object v1, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    iput-object v1, v0, Lb/b/a/M;->r:Lb/b/f/b$a;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    invoke-interface {v0, p0}, Lb/b/f/b$a;->a(Lb/b/f/b;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    .line 7
    iget-object v1, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    invoke-virtual {v1, v2}, Lb/b/a/M;->e(Z)V

    .line 8
    iget-object v1, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v1, v1, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->a()V

    .line 9
    iget-object v1, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v1, v1, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {v1}, Lb/b/g/G;->l()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 10
    iget-object v1, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v2, v1, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Lb/b/a/M;->D:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 11
    iget-object v1, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iput-object v0, v1, Lb/b/a/M;->p:Lb/b/a/M$a;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/a/M$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/b/a/M$a;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lb/b/f/a/k;)V
    .locals 0

    .line 20
    iget-object p1, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lb/b/a/M$a;->i()V

    .line 22
    iget-object p1, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object p1, p1, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->e()Z

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lb/b/f/b;->a(Z)V

    .line 17
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public a(Lb/b/f/a/k;Landroid/view/MenuItem;)Z
    .locals 0

    .line 18
    iget-object p1, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p1, p0, p2}, Lb/b/f/b$a;->a(Lb/b/f/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Lb/b/a/M$a;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/a/M$a;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Lb/b/f/g;

    iget-object v1, p0, Lb/b/a/M$a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/b/f/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->p:Lb/b/a/M$a;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->s()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    iget-object v1, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-interface {v0, p0, v1}, Lb/b/f/b$a;->b(Lb/b/f/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->r()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-virtual {v1}, Lb/b/f/a/k;->r()V

    .line 5
    throw v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->g:Lb/b/a/M;

    iget-object v0, v0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->s()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/b/a/M$a;->e:Lb/b/f/b$a;

    iget-object v1, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-interface {v0, p0, v1}, Lb/b/f/b$a;->a(Lb/b/f/b;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-virtual {v1}, Lb/b/f/a/k;->r()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/b/a/M$a;->d:Lb/b/f/a/k;

    invoke-virtual {v1}, Lb/b/f/a/k;->r()V

    .line 4
    throw v0
.end method
