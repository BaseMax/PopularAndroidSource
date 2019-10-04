.class public Lf/a/a/g/d/b/c;
.super Ljava/lang/Object;
.source "Puller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Landroid/os/Handler;Lf/a/a/e/g;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf/a/a/e/g;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lir/cafebazaar/inline/ux/flow/pull/Puller;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ux/flow/pull/Puller;Ljava/lang/String;Lf/a/a/e/g;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    iput-object p2, p0, Lf/a/a/g/d/b/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lf/a/a/g/d/b/c;->b:Lf/a/a/e/g;

    iput-object p4, p0, Lf/a/a/g/d/b/c;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lf/a/a/g/d/b/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "token"

    .line 3
    iget-object v2, p0, Lf/a/a/g/d/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lf/a/a/g/d/b/c;->b:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v2, Lf/a/a/c/b/b;

    iget-object v3, p0, Lf/a/a/g/d/b/c;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller;

    invoke-static {v3}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->e(Lir/cafebazaar/inline/ux/flow/pull/Puller;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lf/a/a/g/d/b/b;

    invoke-direct {v0, p0}, Lf/a/a/g/d/b/b;-><init>(Lf/a/a/g/d/b/c;)V

    .line 6
    invoke-virtual {v2, v0}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
