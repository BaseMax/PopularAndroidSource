.class final Lcom/a/a/c/i$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/i;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    iput-object p2, p0, Lcom/a/a/c/i$12;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/a/a/c/i$12;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/a/a/c/i$12;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/a/a/c/i$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    invoke-static {v0}, Lcom/a/a/c/i;->a(Lcom/a/a/c/i;)Lcom/a/a/c/j;

    move-result-object v0

    .line 1816
    iget-object v0, v0, Lcom/a/a/c/j;->b:Lcom/a/a/c/k;

    invoke-virtual {v0}, Lcom/a/a/c/k;->create()Z

    .line 292
    iget-object v0, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    iget-object v1, p0, Lcom/a/a/c/i$12;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/a/a/c/i$12;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/a/a/c/i$12;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/c/i;->a(Lcom/a/a/c/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 294
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    iget-object v2, v0, Lio/fabric/sdk/android/services/settings/s;->sessionData:Lio/fabric/sdk/android/services/settings/p;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 298
    :goto_0
    iget-object v3, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    const/4 v4, 0x0

    .line 2518
    invoke-virtual {v3, v2, v4}, Lcom/a/a/c/i;->a(Lio/fabric/sdk/android/services/settings/p;Z)V

    .line 299
    iget-object v3, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    invoke-static {v3}, Lcom/a/a/c/i;->b(Lcom/a/a/c/i;)V

    if-eqz v2, :cond_1

    .line 302
    iget-object v3, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    iget v2, v2, Lio/fabric/sdk/android/services/settings/p;->maxCompleteSessionsCount:I

    .line 2683
    invoke-virtual {v3}, Lcom/a/a/c/i;->e()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/a/a/c/i;->c:Ljava/util/Comparator;

    invoke-static {v4, v2, v5}, Lcom/a/a/c/an;->a(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v4

    sub-int/2addr v2, v4

    .line 2685
    invoke-virtual {v3}, Lcom/a/a/c/i;->f()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/a/a/c/i;->c:Ljava/util/Comparator;

    invoke-static {v4, v2, v5}, Lcom/a/a/c/an;->a(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v4

    sub-int/2addr v2, v4

    .line 2687
    invoke-virtual {v3}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/a/a/c/i;->a:Ljava/io/FilenameFilter;

    sget-object v5, Lcom/a/a/c/i;->c:Ljava/util/Comparator;

    invoke-static {v3, v4, v2, v5}, Lcom/a/a/c/an;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    invoke-static {v2, v0}, Lcom/a/a/c/i;->a(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/s;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/a/a/c/i$12;->d:Lcom/a/a/c/i;

    invoke-static {v2, v0}, Lcom/a/a/c/i;->b(Lcom/a/a/c/i;Lio/fabric/sdk/android/services/settings/s;)V

    :cond_2
    return-object v1
.end method
