.class public final Lc/e/a/a/o/G;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method public static a()V
    .locals 2

    .line 3
    sget v0, Lc/e/a/a/o/I;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 4
    invoke-static {}, Lc/e/a/a/o/G;->b()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lc/e/a/a/o/I;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lc/e/a/a/o/G;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method
