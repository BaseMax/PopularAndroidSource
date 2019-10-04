.class public Lf/a/a/g/d/b/b;
.super Ljava/lang/Object;
.source "Puller.java"

# interfaces
.implements Lf/a/a/c/b/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/d/b/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/d/b/c;


# direct methods
.method public constructor <init>(Lf/a/a/g/d/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 14
    iget-object p1, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object p1, p1, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    invoke-static {p1}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->b(Lir/cafebazaar/inline/ux/flow/pull/Puller;)I

    .line 15
    iget-object p1, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object p1, p1, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    invoke-static {p1}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller;)I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_0

    .line 16
    iget-object p1, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object p2, p1, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    iget-object v0, p1, Lf/a/a/g/d/b/c;->c:Landroid/os/Handler;

    iget-object v1, p1, Lf/a/a/g/d/b/c;->b:Lf/a/a/e/g;

    iget-object p1, p1, Lf/a/a/g/d/b/c;->a:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller;Landroid/os/Handler;Lf/a/a/e/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/g/d/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v0, v0, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller;I)I

    .line 3
    iget-object v0, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v0, v0, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    invoke-static {v0}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->c(Lir/cafebazaar/inline/ux/flow/pull/Puller;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v0, v0, Lf/a/a/g/d/b/c;->b:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "pullResponse"

    .line 6
    invoke-interface {v0, v1, p1}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/g/d/b/a;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v0, v0, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    invoke-static {v0}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->d(Lir/cafebazaar/inline/ux/flow/pull/Puller;)Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/a/a/g/d/b/a;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v0, v0, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    iget-object v1, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v1, v1, Lf/a/a/g/d/b/c;->c:Landroid/os/Handler;

    iget-object v2, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v2, v2, Lf/a/a/g/d/b/c;->b:Lf/a/a/e/g;

    invoke-virtual {p1}, Lf/a/a/g/d/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller;Landroid/os/Handler;Lf/a/a/e/g;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lf/a/a/g/d/b/a;->a()Lf/a/a/g/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v0, v0, Lf/a/a/g/d/b/c;->b:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    invoke-virtual {p1}, Lf/a/a/g/d/b/a;->a()Lf/a/a/g/d/a/b;

    move-result-object p1

    iget-object v1, p0, Lf/a/a/g/d/b/b;->a:Lf/a/a/g/d/b/c;

    iget-object v1, v1, Lf/a/a/g/d/b/c;->b:Lf/a/a/e/g;

    .line 11
    invoke-interface {v1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
