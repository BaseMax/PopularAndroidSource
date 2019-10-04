.class public Lb/H/a/a/b/a;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lb/H/a/m;Ljava/lang/String;)V
    .locals 4

    .line 11
    invoke-virtual {p1}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->t()Lb/H/a/c/f;

    move-result-object p1

    .line 13
    invoke-interface {p1, p2}, Lb/H/a/c/f;->a(Ljava/lang/String;)Lb/H/a/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget v0, v0, Lb/H/a/c/e;->b:I

    invoke-static {p0, p2, v0}, Lb/H/a/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p0

    sget-object v0, Lb/H/a/a/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Removing SystemIdInfo for workSpecId (%s)"

    .line 16
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 18
    invoke-interface {p1, p2}, Lb/H/a/c/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lb/H/a/m;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->t()Lb/H/a/c/f;

    move-result-object p1

    .line 3
    invoke-interface {p1, p2}, Lb/H/a/c/f;->a(Ljava/lang/String;)Lb/H/a/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget p1, v0, Lb/H/a/c/e;->b:I

    invoke-static {p0, p2, p1}, Lb/H/a/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    iget p1, v0, Lb/H/a/c/e;->b:I

    invoke-static {p0, p2, p1, p3, p4}, Lb/H/a/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lb/H/a/d/e;

    invoke-direct {v0, p0}, Lb/H/a/d/e;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0}, Lb/H/a/d/e;->b()I

    move-result v0

    .line 8
    new-instance v1, Lb/H/a/c/e;

    invoke-direct {v1, p2, v0}, Lb/H/a/c/e;-><init>(Ljava/lang/String;I)V

    .line 9
    invoke-interface {p1, v1}, Lb/H/a/c/f;->a(Lb/H/a/c/e;)V

    .line 10
    invoke-static {p0, p2, v0, p3, p4}, Lb/H/a/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "alarm"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 20
    invoke-static {p0, p1}, Lb/H/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    .line 21
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v2, Lb/H/a/a/b/a;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    .line 24
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, p2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 25
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const-string v0, "alarm"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 27
    invoke-static {p0, p1}, Lb/H/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 29
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    .line 30
    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method
