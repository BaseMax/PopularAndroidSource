.class public Le/a/a/a/a/c/e;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/a/c/e;->b:Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;

    iput-object p2, p0, Le/a/a/a/a/c/e;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/c/e;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Le/a/a/a/a/c/e;->b:Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/a/a/a/c/e;->b:Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->a()V

    .line 3
    throw v0
.end method
