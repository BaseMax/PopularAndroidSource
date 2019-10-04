.class public Le/a/a/a/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/a/b$a;->a(Le/a/a/a/b$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/a/b$b;

.field public final synthetic b:Le/a/a/a/b$a;


# direct methods
.method public constructor <init>(Le/a/a/a/b$a;Le/a/a/a/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/a;->b:Le/a/a/a/b$a;

    iput-object p2, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-virtual {v0, p1, p2}, Le/a/a/a/b$b;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-virtual {v0, p1}, Le/a/a/a/b$b;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-virtual {v0, p1}, Le/a/a/a/b$b;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-virtual {v0, p1}, Le/a/a/a/b$b;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-virtual {v0, p1, p2}, Le/a/a/a/b$b;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-virtual {v0, p1}, Le/a/a/a/b$b;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a;->a:Le/a/a/a/b$b;

    invoke-virtual {v0, p1}, Le/a/a/a/b$b;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
