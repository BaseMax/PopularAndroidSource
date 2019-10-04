.class public final Lc/c/a/h/a/Ca$la;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "la"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$ka;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$la;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$ka;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$la;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$ka;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/ui/login/LoginActivity;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$la;->b(Lcom/farsitel/bazaar/ui/login/LoginActivity;)Lcom/farsitel/bazaar/ui/login/LoginActivity;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/login/LoginActivity;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$la;->a(Lcom/farsitel/bazaar/ui/login/LoginActivity;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/ui/login/LoginActivity;)Lcom/farsitel/bazaar/ui/login/LoginActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$la;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->q(Lc/c/a/h/a/Ca;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Ld/a/a/c;->b(Ld/a/a/b;Ldagger/android/DispatchingAndroidInjector;)V

    .line 4
    iget-object v0, p0, Lc/c/a/h/a/Ca$la;->a:Lc/c/a/h/a/Ca;

    .line 5
    invoke-static {v0}, Lc/c/a/h/a/Ca;->r(Lc/c/a/h/a/Ca;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Ld/a/a/c;->a(Ld/a/a/b;Ldagger/android/DispatchingAndroidInjector;)V

    .line 7
    iget-object v0, p0, Lc/c/a/h/a/Ca$la;->a:Lc/c/a/h/a/Ca;

    .line 8
    invoke-static {v0}, Lc/c/a/h/a/Ca;->s(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/F$b;

    .line 9
    invoke-static {p1, v0}, Lc/c/a/d/f/c;->a(Lc/c/a/d/f/b;Lb/r/F$b;)V

    .line 10
    iget-object v0, p0, Lc/c/a/h/a/Ca$la;->a:Lc/c/a/h/a/Ca;

    .line 11
    invoke-static {v0}, Lc/c/a/h/a/Ca;->t(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/d/c;

    .line 12
    invoke-static {p1, v0}, Lc/c/a/d/f/c;->a(Lc/c/a/d/f/b;Lc/c/a/d/d/c;)V

    return-object p1
.end method
