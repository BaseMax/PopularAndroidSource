.class Lcom/koushikdutta/ion/FileCacheStore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/FileCacheStore;->put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/FileCacheStore;

.field final synthetic val$parser:Lcom/koushikdutta/async/c/a;

.field final synthetic val$ret:Lcom/koushikdutta/async/b/i;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/FileCacheStore;Lcom/koushikdutta/async/c/a;Ljava/lang/Object;Lcom/koushikdutta/async/b/i;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    iput-object p2, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->val$parser:Lcom/koushikdutta/async/c/a;

    iput-object p3, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->val$value:Ljava/lang/Object;

    iput-object p4, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->val$ret:Lcom/koushikdutta/async/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    invoke-static {v0}, Lcom/koushikdutta/ion/FileCacheStore;->access$000(Lcom/koushikdutta/ion/FileCacheStore;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    iget-object v1, v1, Lcom/koushikdutta/ion/FileCacheStore;->cache:Lcom/koushikdutta/async/e/c;

    invoke-virtual {v1}, Lcom/koushikdutta/async/e/c;->getTempFile()Ljava/io/File;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/koushikdutta/async/d/b;

    iget-object v3, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    iget-object v3, v3, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v3}, Lcom/koushikdutta/ion/Ion;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/koushikdutta/async/d/b;-><init>(Lcom/koushikdutta/async/h;Ljava/io/File;)V

    .line 43
    iget-object v3, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->val$parser:Lcom/koushikdutta/async/c/a;

    iget-object v4, p0, Lcom/koushikdutta/ion/FileCacheStore$1;->val$value:Ljava/lang/Object;

    new-instance v5, Lcom/koushikdutta/ion/FileCacheStore$1$1;

    invoke-direct {v5, p0, v2, v1, v0}, Lcom/koushikdutta/ion/FileCacheStore$1$1;-><init>(Lcom/koushikdutta/ion/FileCacheStore$1;Lcom/koushikdutta/async/d/b;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v2, v4, v5}, Lcom/koushikdutta/async/c/a;->write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
