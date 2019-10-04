.class public final Lcom/facebook/crypto/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/crypto/e/b;


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Z

.field private volatile d:Ljava/lang/UnsatisfiedLinkError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/facebook/crypto/e/c$1;

    invoke-direct {v0}, Lcom/facebook/crypto/e/c$1;-><init>()V

    sput-object v0, Lcom/facebook/crypto/e/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/facebook/crypto/e/c;->b:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/facebook/crypto/e/c;->c:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/facebook/crypto/e/c;->d:Ljava/lang/UnsatisfiedLinkError;

    return-void
.end method

.method private declared-synchronized a()Z
    .locals 3

    monitor-enter p0

    .line 45
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/crypto/e/c;->b:Z

    if-nez v0, :cond_0

    .line 46
    iget-boolean v0, p0, Lcom/facebook/crypto/e/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :try_start_1
    sget-object v1, Lcom/facebook/crypto/e/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/facebook/crypto/e/c;->c:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 54
    :try_start_2
    iput-object v1, p0, Lcom/facebook/crypto/e/c;->d:Ljava/lang/UnsatisfiedLinkError;

    .line 55
    iput-boolean v0, p0, Lcom/facebook/crypto/e/c;->c:Z

    .line 57
    :goto_1
    iput-boolean v0, p0, Lcom/facebook/crypto/e/c;->b:Z

    .line 58
    iget-boolean v0, p0, Lcom/facebook/crypto/e/c;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized ensureCryptoLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/a;
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/crypto/e/c;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/crypto/a/a;

    iget-object v1, p0, Lcom/facebook/crypto/e/c;->d:Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v0, v1}, Lcom/facebook/crypto/a/a;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
