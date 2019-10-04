.class public abstract Ld/a/a/b;
.super Lb/b/a/m;
.source "DaggerAppCompatActivity.java"

# interfaces
.implements Ld/a/k;
.implements Ld/a/a/h;


# instance fields
.field public s:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/b/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public i()Ld/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/a/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/a/a/b;->s:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ld/a/a;->a(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Lb/b/a/m;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
