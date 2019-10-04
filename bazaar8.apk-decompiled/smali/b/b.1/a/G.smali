.class public Lb/b/a/G;
.super Lb/b/a/a;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/G$b;,
        Lb/b/a/G$a;,
        Lb/b/a/G$c;
    }
.end annotation


# instance fields
.field public a:Lb/b/g/G;

.field public b:Z

.field public c:Landroid/view/Window$Callback;

.field public d:Z

.field public e:Z

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroidx/appcompat/widget/Toolbar$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/b/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/a/G;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lb/b/a/E;

    invoke-direct {v0, p0}, Lb/b/a/E;-><init>(Lb/b/a/G;)V

    iput-object v0, p0, Lb/b/a/G;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lb/b/a/F;

    invoke-direct {v0, p0}, Lb/b/a/F;-><init>(Lb/b/a/G;)V

    iput-object v0, p0, Lb/b/a/G;->h:Landroidx/appcompat/widget/Toolbar$c;

    .line 5
    new-instance v0, Lb/b/g/wa;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/b/g/wa;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    .line 6
    new-instance v0, Lb/b/a/G$c;

    invoke-direct {v0, p0, p3}, Lb/b/a/G$c;-><init>(Lb/b/a/G;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lb/b/a/G;->c:Landroid/view/Window$Callback;

    .line 7
    iget-object p3, p0, Lb/b/a/G;->a:Lb/b/g/G;

    iget-object v0, p0, Lb/b/a/G;->c:Landroid/view/Window$Callback;

    invoke-interface {p3, v0}, Lb/b/g/G;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 8
    iget-object p3, p0, Lb/b/a/G;->h:Landroidx/appcompat/widget/Toolbar$c;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V

    .line 9
    iget-object p1, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {p1, p2}, Lb/b/g/G;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/b/a/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0, p1}, Lb/b/g/G;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 5
    invoke-virtual {p0}, Lb/b/a/G;->l()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 7
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 9
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lb/b/a/G;->k()Z

    :cond_0
    return v0
.end method

.method public b(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/b/a/G;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lb/b/a/G;->e:Z

    .line 3
    iget-object v0, p0, Lb/b/a/G;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lb/b/a/G;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/a$b;

    invoke-interface {v2, p1}, Lb/b/a/a$b;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->f()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->m()I

    move-result v0

    return v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/G;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/G;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lb/i/k/z;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/G;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->g()Z

    move-result v0

    return v0
.end method

.method public final l()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/b/a/G;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    new-instance v1, Lb/b/a/G$a;

    invoke-direct {v1, p0}, Lb/b/a/G$a;-><init>(Lb/b/a/G;)V

    new-instance v2, Lb/b/a/G$b;

    invoke-direct {v2, p0}, Lb/b/a/G$b;-><init>(Lb/b/a/G;)V

    invoke-interface {v0, v1, v2}, Lb/b/g/G;->a(Lb/b/f/a/t$a;Lb/b/f/a/k$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb/b/a/G;->d:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->j()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/G;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public n()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lb/b/a/G;->l()Landroid/view/Menu;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lb/b/f/a/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lb/b/f/a/k;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lb/b/f/a/k;->s()V

    .line 4
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 5
    iget-object v3, p0, Lb/b/a/G;->c:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lb/b/a/G;->c:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Lb/b/f/a/k;->r()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lb/b/f/a/k;->r()V

    .line 9
    :cond_5
    throw v0
.end method
