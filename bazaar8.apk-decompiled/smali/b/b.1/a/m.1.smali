.class public Lb/b/a/m;
.super Lb/o/a/i;
.source "AppCompatActivity.java"

# interfaces
.implements Lb/b/a/n;
.implements Lb/i/a/t$a;
.implements Lb/b/a/b;


# instance fields
.field public q:Lb/b/a/o;

.field public r:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/o/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/f/b$a;)Lb/b/f/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lb/i/a/l;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public a(Lb/b/f/b;)V
    .locals 0

    return-void
.end method

.method public a(Lb/i/a/t;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lb/i/a/t;->a(Landroid/app/Activity;)Lb/i/a/t;

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/o;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b(Lb/b/f/b;)V
    .locals 0

    return-void
.end method

.method public b(Lb/i/a/t;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb/i/a/l;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->w()Lb/b/a/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/b/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->w()Lb/b/a/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lb/b/a/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lb/i/a/k;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->c()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/m;->r:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lb/b/g/Ca;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lb/b/g/Ca;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/b/g/Ca;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lb/b/a/m;->r:Landroid/content/res/Resources;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/a/m;->r:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->f()V

    return-void
.end method

.method public n()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, Lb/i/a/l;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lb/b/a/m;->r:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lb/b/a/m;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->x()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lb/b/a/o;->e()V

    .line 3
    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroid/os/Bundle;)V

    .line 4
    invoke-super {p0, p1}, Lb/o/a/i;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/b/a/m;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lb/o/a/i;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/b/a/m;->w()Lb/b/a/a;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lb/b/a/a;->g()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lb/b/a/m;->y()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb/o/a/i;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->h()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lb/o/a/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onStart()V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->i()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onStop()V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->j()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/b/a/o;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->w()Lb/b/a/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/b/a/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/o;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 2
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->d(I)V

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->f()V

    return-void
.end method

.method public v()Lb/b/a/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/m;->q:Lb/b/a/o;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p0}, Lb/b/a/o;->a(Landroid/app/Activity;Lb/b/a/n;)Lb/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/m;->q:Lb/b/a/o;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/a/m;->q:Lb/b/a/o;

    return-object v0
.end method

.method public w()Lb/b/a/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->v()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->d()Lb/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public y()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->n()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lb/b/a/m;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Lb/i/a/t;->a(Landroid/content/Context;)Lb/i/a/t;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lb/b/a/m;->a(Lb/i/a/t;)V

    .line 5
    invoke-virtual {p0, v0}, Lb/b/a/m;->b(Lb/i/a/t;)V

    .line 6
    invoke-virtual {v0}, Lb/i/a/t;->b()V

    .line 7
    :try_start_0
    invoke-static {p0}, Lb/i/a/b;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lb/b/a/m;->a(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
