.class public final Lcom/facebook/a/a/a/a;
.super Lcom/facebook/crypto/b;
.source "SourceFile"


# static fields
.field private static a:Lcom/facebook/a/a/a/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/facebook/crypto/e/c;

    invoke-direct {v0}, Lcom/facebook/crypto/e/c;-><init>()V

    new-instance v1, Lcom/facebook/a/a/a/b;

    invoke-direct {v1}, Lcom/facebook/a/a/a/b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/facebook/crypto/b;-><init>(Lcom/facebook/crypto/e/b;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public static declared-synchronized get()Lcom/facebook/a/a/a/a;
    .locals 2

    const-class v0, Lcom/facebook/a/a/a/a;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/facebook/a/a/a/a;->a:Lcom/facebook/a/a/a/a;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/facebook/a/a/a/a;

    invoke-direct {v1}, Lcom/facebook/a/a/a/a;-><init>()V

    sput-object v1, Lcom/facebook/a/a/a/a;->a:Lcom/facebook/a/a/a/a;

    .line 18
    :cond_0
    sget-object v1, Lcom/facebook/a/a/a/a;->a:Lcom/facebook/a/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
