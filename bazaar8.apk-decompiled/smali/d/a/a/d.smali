.class public abstract Ld/a/a/d;
.super Lb/b/a/C;
.source "DaggerAppCompatDialogFragment.java"

# interfaces
.implements Ld/a/a/h;


# instance fields
.field public ja:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/b/a/C;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ld/a/a/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Lb/o/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

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
    iget-object v0, p0, Ld/a/a/d;->ja:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method
