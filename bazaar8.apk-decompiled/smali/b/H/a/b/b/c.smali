.class public Lb/H/a/b/b/c;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/H/a/b/b/d;


# direct methods
.method public constructor <init>(Lb/H/a/b/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/b/b/c;->a:Lb/H/a/b/b/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lb/H/a/b/b/c;->a:Lb/H/a/b/b/d;

    invoke-virtual {v0, p1, p2}, Lb/H/a/b/b/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
