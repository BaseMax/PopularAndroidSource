.class public Lb/r/y;
.super Lb/r/c;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/z;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/r/z;


# direct methods
.method public constructor <init>(Lb/r/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/r/y;->a:Lb/r/z;

    invoke-direct {p0}, Lb/r/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/r/A;->a(Landroid/app/Activity;)Lb/r/A;

    move-result-object p1

    iget-object p2, p0, Lb/r/y;->a:Lb/r/z;

    iget-object p2, p2, Lb/r/z;->i:Lb/r/A$a;

    invoke-virtual {p1, p2}, Lb/r/A;->d(Lb/r/A$a;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/r/y;->a:Lb/r/z;

    invoke-virtual {p1}, Lb/r/z;->a()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/r/y;->a:Lb/r/z;

    invoke-virtual {p1}, Lb/r/z;->g()V

    return-void
.end method
