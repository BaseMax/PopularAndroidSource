.class public final Lc/c/a/h/a/Ca$yb;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "yb"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$xb;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$yb;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$xb;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$yb;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$xb;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$yb;->b(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$yb;->a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$yb;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->q(Lc/c/a/h/a/Ca;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Ld/a/a/c;->b(Ld/a/a/b;Ldagger/android/DispatchingAndroidInjector;)V

    .line 4
    iget-object v0, p0, Lc/c/a/h/a/Ca$yb;->a:Lc/c/a/h/a/Ca;

    .line 5
    invoke-static {v0}, Lc/c/a/h/a/Ca;->r(Lc/c/a/h/a/Ca;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Ld/a/a/c;->a(Ld/a/a/b;Ldagger/android/DispatchingAndroidInjector;)V

    .line 7
    iget-object v0, p0, Lc/c/a/h/a/Ca$yb;->a:Lc/c/a/h/a/Ca;

    .line 8
    invoke-static {v0}, Lc/c/a/h/a/Ca;->a(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/c/b;

    .line 9
    invoke-static {p1, v0}, Lc/c/a/n/u/c/c;->a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;Lc/c/a/d/c/b;)V

    .line 10
    iget-object v0, p0, Lc/c/a/h/a/Ca$yb;->a:Lc/c/a/h/a/Ca;

    .line 11
    invoke-static {v0}, Lc/c/a/h/a/Ca;->s(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/h/b/Vb;

    .line 12
    invoke-static {p1, v0}, Lc/c/a/n/u/c/c;->a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;Lc/c/a/h/b/Vb;)V

    return-object p1
.end method
