.class public Lb/a/c;
.super Lb/i/a/k;
.source "ComponentActivity.java"

# interfaces
.implements Lb/r/k;
.implements Lb/r/I;
.implements Lb/A/c;
.implements Lb/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/c$a;
    }
.end annotation


# instance fields
.field public final b:Lb/r/m;

.field public final c:Lb/A/b;

.field public d:Lb/r/H;

.field public final e:Landroidx/activity/OnBackPressedDispatcher;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb/i/a/k;-><init>()V

    .line 2
    new-instance v0, Lb/r/m;

    invoke-direct {v0, p0}, Lb/r/m;-><init>(Lb/r/k;)V

    iput-object v0, p0, Lb/a/c;->b:Lb/r/m;

    .line 3
    invoke-static {p0}, Lb/A/b;->a(Lb/A/c;)Lb/A/b;

    move-result-object v0

    iput-object v0, p0, Lb/a/c;->c:Lb/A/b;

    .line 4
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Lb/a/b;

    invoke-direct {v1, p0}, Lb/a/b;-><init>(Lb/a/c;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lb/a/c;->e:Landroidx/activity/OnBackPressedDispatcher;

    .line 5
    invoke-virtual {p0}, Lb/a/c;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lb/a/c;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Lb/a/c;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Lb/r/j;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lb/a/c;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Lb/a/c;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Lb/r/j;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_1

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lb/a/c;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lb/r/j;)V

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Lb/a/c;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public b()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c;->b:Lb/r/m;

    return-object v0
.end method

.method public final c()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c;->e:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final d()Lb/A/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c;->c:Lb/A/b;

    invoke-virtual {v0}, Lb/A/b;->a()Lb/A/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lb/r/H;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lb/a/c;->d:Lb/r/H;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lb/a/c$a;->b:Lb/r/H;

    iput-object v0, p0, Lb/a/c;->d:Lb/r/H;

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/c;->d:Lb/r/H;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lb/r/H;

    invoke-direct {v0}, Lb/r/H;-><init>()V

    iput-object v0, p0, Lb/a/c;->d:Lb/r/H;

    .line 7
    :cond_1
    iget-object v0, p0, Lb/a/c;->d:Lb/r/H;

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c;->e:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lb/a/c;->c:Lb/A/b;

    invoke-virtual {v0, p1}, Lb/A/b;->a(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Lb/r/A;->b(Landroid/app/Activity;)V

    .line 4
    iget p1, p0, Lb/a/c;->f:I

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/c;->q()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/c;->d:Lb/r/H;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/c$a;

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v2, Lb/a/c$a;->b:Lb/r/H;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_1
    new-instance v2, Lb/a/c$a;

    invoke-direct {v2}, Lb/a/c$a;-><init>()V

    .line 6
    iput-object v0, v2, Lb/a/c$a;->a:Ljava/lang/Object;

    .line 7
    iput-object v1, v2, Lb/a/c$a;->b:Lb/r/H;

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/c;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lb/r/m;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lb/r/m;->d(Landroidx/lifecycle/Lifecycle$State;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    iget-object v0, p0, Lb/a/c;->c:Lb/A/b;

    invoke-virtual {v0, p1}, Lb/A/b;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public q()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
