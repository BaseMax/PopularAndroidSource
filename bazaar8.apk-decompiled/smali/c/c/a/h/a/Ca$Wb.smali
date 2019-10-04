.class public final Lc/c/a/h/a/Ca$Wb;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/jb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Wb"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$Vb;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$Wb;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$Vb;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$Wb;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$Vb;)V

    return-void
.end method


# virtual methods
.method public final a()Lc/c/a/l/b/a/e;
    .locals 3

    .line 2
    new-instance v0, Lc/c/a/l/b/a/e;

    iget-object v1, p0, Lc/c/a/h/a/Ca$Wb;->a:Lc/c/a/h/a/Ca;

    .line 3
    invoke-static {v1}, Lc/c/a/h/a/Ca;->b(Lc/c/a/h/a/Ca;)Lc/c/a/l/b/a/g;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/h/a/Ca$Wb;->a:Lc/c/a/h/a/Ca;

    .line 4
    invoke-static {v2}, Lc/c/a/h/a/Ca;->c(Lc/c/a/h/a/Ca;)Lc/c/a/l/b/a/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/c/a/l/b/a/e;-><init>(Lc/c/a/l/b/a/g;Lc/c/a/l/b/a/d;)V

    return-object v0
.end method

.method public a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$Wb;->b(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$Wb;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)V

    return-void
.end method

.method public final b()Lc/c/a/l/b/b;
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/l/b/b;

    invoke-virtual {p0}, Lc/c/a/h/a/Ca$Wb;->a()Lc/c/a/l/b/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/a/l/b/b;-><init>(Lc/c/a/l/b/a/e;)V

    return-object v0
.end method

.method public final b(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)Lcom/farsitel/bazaar/player/VideoPlayerActivity;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/h/a/Ca$Wb;->a:Lc/c/a/h/a/Ca;

    .line 3
    invoke-static {v0}, Lc/c/a/h/a/Ca;->q(Lc/c/a/h/a/Ca;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Ld/a/a/c;->b(Ld/a/a/b;Ldagger/android/DispatchingAndroidInjector;)V

    .line 5
    iget-object v0, p0, Lc/c/a/h/a/Ca$Wb;->a:Lc/c/a/h/a/Ca;

    .line 6
    invoke-static {v0}, Lc/c/a/h/a/Ca;->r(Lc/c/a/h/a/Ca;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Ld/a/a/c;->a(Ld/a/a/b;Ldagger/android/DispatchingAndroidInjector;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/h/a/Ca$Wb;->b()Lc/c/a/l/b/b;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lc/c/a/l/B;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lc/c/a/l/b/b;)V

    return-object p1
.end method
