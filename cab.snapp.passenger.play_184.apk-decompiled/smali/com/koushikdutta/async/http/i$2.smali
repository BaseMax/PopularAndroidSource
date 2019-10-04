.class final Lcom/koushikdutta/async/http/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/http/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a;

.field final synthetic b:Lcom/koushikdutta/async/http/i$b;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/koushikdutta/async/http/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/a;Lcom/koushikdutta/async/http/i$b;Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$2;->d:Lcom/koushikdutta/async/http/i;

    iput-object p2, p0, Lcom/koushikdutta/async/http/i$2;->a:Lcom/koushikdutta/async/a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/i$2;->b:Lcom/koushikdutta/async/http/i$b;

    iput-object p4, p0, Lcom/koushikdutta/async/http/i$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 304
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$2;->d:Lcom/koushikdutta/async/http/i;

    monitor-enter p1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/i$2;->a:Lcom/koushikdutta/async/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$2;->b:Lcom/koushikdutta/async/http/i$b;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/a;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/koushikdutta/async/http/i$2;->d:Lcom/koushikdutta/async/http/i;

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$2;->c:Ljava/lang/String;

    .line 1023
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/i;->a(Ljava/lang/String;)V

    .line 307
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
