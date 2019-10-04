.class public final Lcom/farsitel/bazaar/ui/splash/SplashActivity;
.super Lc/c/a/d/f/b;
.source "SplashActivity.kt"


# instance fields
.field public w:Lc/c/a/n/y/e;

.field public x:Lc/c/a/f/c;

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->y:Z

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/splash/SplashActivity;)Lc/c/a/n/y/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->w:Lc/c/a/n/y/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "splashViewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/splash/SplashActivity;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->x:Lc/c/a/f/c;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc/c/a/f/c;->E:Landroid/widget/ProgressBar;

    const-string v3, "binding.progressBar"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->x:Lc/c/a/f/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/c/a/f/c;->B:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.errorGroup"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final D()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->y:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->F()V

    return-void
.end method

.method public final E()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/b;->A()Lb/r/F$b;

    move-result-object v0

    const-class v1, Lc/c/a/n/y/e;

    invoke-interface {v0, v1}, Lb/r/F$b;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc/c/a/n/y/e;

    .line 2
    invoke-virtual {v1}, Lc/c/a/n/y/e;->e()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lc/c/a/n/y/d;

    invoke-direct {v3, p0}, Lc/c/a/n/y/d;-><init>(Lcom/farsitel/bazaar/ui/splash/SplashActivity;)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    const-string v2, "viewModelFactory.create(\u2026\n            })\n        }"

    .line 3
    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->w:Lc/c/a/n/y/e;

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->w:Lc/c/a/n/y/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/y/e;->k()V

    return-void

    :cond_0
    const-string v0, "splashViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final F()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->C()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->D()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal State in handleResourceState in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/farsitel/bazaar/ui/splash/SplashActivity;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->x:Lc/c/a/f/c;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lc/c/a/f/c;->E:Landroid/widget/ProgressBar;

    const-string v3, "binding.progressBar"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->x:Lc/c/a/f/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lc/c/a/f/c;->B:Landroidx/constraintlayout/widget/Group;

    const-string v3, "binding.errorGroup"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->x:Lc/c/a/f/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc/c/a/f/c;->C:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.errorText"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->x:Lc/c/a/f/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lc/c/a/f/c;->A:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lc/c/a/n/y/c;

    invoke-direct {v0, p0}, Lc/c/a/n/y/c;-><init>(Lcom/farsitel/bazaar/ui/splash/SplashActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ld/a/a/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 2
    invoke-static {p0, p1}, Lb/l/g;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026R.layout.activity_splash)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc/c/a/f/c;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->x:Lc/c/a/f/c;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    .line 5
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const-string p1, "android.intent.action.MAIN"

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->E()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/d/f/b;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->y:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc/c/a/d/f/b;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->y:Z

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->w:Lc/c/a/n/y/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/y/e;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v1

    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->D()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "splashViewModel"

    .line 5
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method
