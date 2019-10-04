.class public final Ld/a/d;
.super Ljava/lang/Object;
.source "DaggerApplication_MembersInjector.java"

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b<",
        "Ld/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Ld/a/c;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Ld/a/c;->f()V

    return-void
.end method

.method public static a(Ld/a/c;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/a/c;->a:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static b(Ld/a/c;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/a/c;->b:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static c(Ld/a/c;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/a/c;->e:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static d(Ld/a/c;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/a/c;->c:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static e(Ld/a/c;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/a/c;->d:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method
