.class public Le/a/a/a/d;
.super Le/a/a/a/b$b;
.source "Fabric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/a/f;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/a/f;


# direct methods
.method public constructor <init>(Le/a/a/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/d;->a:Le/a/a/a/f;

    invoke-direct {p0}, Le/a/a/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/a/a/a/d;->a:Le/a/a/a/f;

    invoke-virtual {p2, p1}, Le/a/a/a/f;->a(Landroid/app/Activity;)Le/a/a/a/f;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/d;->a:Le/a/a/a/f;

    invoke-virtual {v0, p1}, Le/a/a/a/f;->a(Landroid/app/Activity;)Le/a/a/a/f;

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/d;->a:Le/a/a/a/f;

    invoke-virtual {v0, p1}, Le/a/a/a/f;->a(Landroid/app/Activity;)Le/a/a/a/f;

    return-void
.end method
