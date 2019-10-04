.class public final Lcom/farsitel/bazaar/app/BazaarApp;
.super Ld/a/a/f;
.source "BazaarApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/app/BazaarApp$a;
    }
.end annotation


# static fields
.field public static h:Lcom/farsitel/bazaar/app/BazaarApp;

.field public static final i:Lcom/farsitel/bazaar/app/BazaarApp$a;


# instance fields
.field public j:Lc/c/a/b/d;

.field public k:Lc/c/a/h/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/app/BazaarApp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/app/BazaarApp$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/a/f;-><init>()V

    return-void
.end method

.method public static final synthetic g()Lcom/farsitel/bazaar/app/BazaarApp;
    .locals 1

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/app/BazaarApp;->h:Lcom/farsitel/bazaar/app/BazaarApp;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Z)V
    .locals 1

    const v0, 0x8000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "STOP_ALL"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x2

    .line 9
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/farsitel/bazaar/ui/splash/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/farsitel/bazaar/app/BazaarApp;->a(Landroid/content/Intent;Z)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/g/b;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/g/b;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lb/v/a;->d(Landroid/content/Context;)V

    return-void
.end method

.method public d()Ld/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/a/b<",
            "+",
            "Ld/a/a/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/c/a/h/a/Ca;->a()Lc/c/a/h/a/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/a/b$a;->a(Ljava/lang/Object;)Ld/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    move-object v1, v0

    check-cast v1, Lc/c/a/h/a/a;

    iput-object v1, p0, Lcom/farsitel/bazaar/app/BazaarApp;->k:Lc/c/a/h/a/a;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.farsitel.bazaar.di.component.AppComponent"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    sget-object p1, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {p1, p0}, Lc/c/a/d/g/b;->b(Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Ld/a/c;->onCreate()V

    .line 2
    sput-object p0, Lcom/farsitel/bazaar/app/BazaarApp;->h:Lcom/farsitel/bazaar/app/BazaarApp;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lb/b/a/o;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/app/BazaarApp;->j:Lc/c/a/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lc/c/a/b/d;->a(Landroid/app/Application;)V

    return-void

    :cond_0
    const-string v0, "bazaarHelper"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
