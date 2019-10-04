.class public abstract Ld/a/a/f;
.super Ld/a/c;
.source "DaggerApplication.java"

# interfaces
.implements Ld/a/a/h;


# instance fields
.field public g:Ldagger/android/DispatchingAndroidInjector;
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
    invoke-direct {p0}, Ld/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic i()Ld/a/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/a/a/f;->i()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public i()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ld/a/a/f;->g:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method
