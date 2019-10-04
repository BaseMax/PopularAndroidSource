.class public Lb/r/o;
.super Landroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Lb/r/k;


# instance fields
.field public final a:Lb/r/B;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lb/r/B;

    invoke-direct {v0, p0}, Lb/r/B;-><init>(Lb/r/k;)V

    iput-object v0, p0, Lb/r/o;->a:Lb/r/B;

    return-void
.end method


# virtual methods
.method public b()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/o;->a:Lb/r/B;

    invoke-virtual {v0}, Lb/r/B;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lb/r/o;->a:Lb/r/B;

    invoke-virtual {p1}, Lb/r/B;->b()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/o;->a:Lb/r/B;

    invoke-virtual {v0}, Lb/r/B;->c()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/o;->a:Lb/r/B;

    invoke-virtual {v0}, Lb/r/B;->d()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/o;->a:Lb/r/B;

    invoke-virtual {v0}, Lb/r/B;->e()V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
