.class public Landroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Lb/r/o;
.source "SystemAlarmService.java"

# interfaces
.implements Lb/H/a/a/b/f$b;


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public c:Lb/H/a/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmService"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/r/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "All commands completed in dispatcher"

    invoke-virtual {v0, v1, v3, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    invoke-static {}, Lb/H/a/d/l;->a()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/r/o;->onCreate()V

    .line 2
    new-instance v0, Lb/H/a/a/b/f;

    invoke-direct {v0, p0}, Lb/H/a/a/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Lb/H/a/a/b/f;

    .line 3
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Lb/H/a/a/b/f;

    invoke-virtual {v0, p0}, Lb/H/a/a/b/f;->a(Lb/H/a/a/b/f$b;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/r/o;->onDestroy()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Lb/H/a/a/b/f;

    invoke-virtual {v0}, Lb/H/a/a/b/f;->f()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb/r/o;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Lb/H/a/a/b/f;

    invoke-virtual {p2, p1, p3}, Lb/H/a/a/b/f;->a(Landroid/content/Intent;I)Z

    :cond_0
    const/4 p1, 0x3

    return p1
.end method
