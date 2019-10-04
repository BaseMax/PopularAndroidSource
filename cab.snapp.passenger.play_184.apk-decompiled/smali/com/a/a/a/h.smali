.class final Lcom/a/a/a/h;
.super Lio/fabric/sdk/android/a$b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/a/a/a/ae;

.field private final b:Lcom/a/a/a/k;


# direct methods
.method public constructor <init>(Lcom/a/a/a/ae;Lcom/a/a/a/k;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/fabric/sdk/android/a$b;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/ae;

    .line 16
    iput-object p2, p0, Lcom/a/a/a/h;->b:Lcom/a/a/a/k;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/ae;

    sget-object v1, Lcom/a/a/a/ag$b;->PAUSE:Lcom/a/a/a/ag$b;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/ae;->onLifecycle(Landroid/app/Activity;Lcom/a/a/a/ag$b;)V

    .line 38
    iget-object p1, p0, Lcom/a/a/a/h;->b:Lcom/a/a/a/k;

    invoke-virtual {p1}, Lcom/a/a/a/k;->onActivityPaused()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/ae;

    sget-object v1, Lcom/a/a/a/ag$b;->RESUME:Lcom/a/a/a/ag$b;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/ae;->onLifecycle(Landroid/app/Activity;Lcom/a/a/a/ag$b;)V

    .line 32
    iget-object p1, p0, Lcom/a/a/a/h;->b:Lcom/a/a/a/k;

    invoke-virtual {p1}, Lcom/a/a/a/k;->onActivityResumed()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/ae;

    sget-object v1, Lcom/a/a/a/ag$b;->START:Lcom/a/a/a/ag$b;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/ae;->onLifecycle(Landroid/app/Activity;Lcom/a/a/a/ag$b;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/ae;

    sget-object v1, Lcom/a/a/a/ag$b;->STOP:Lcom/a/a/a/ag$b;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/ae;->onLifecycle(Landroid/app/Activity;Lcom/a/a/a/ag$b;)V

    return-void
.end method
