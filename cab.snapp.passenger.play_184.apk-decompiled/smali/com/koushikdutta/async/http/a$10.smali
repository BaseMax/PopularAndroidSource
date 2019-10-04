.class final Lcom/koushikdutta/async/http/a$10;
.super Lcom/koushikdutta/async/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a;->executeFile(Lcom/koushikdutta/async/http/d;Ljava/lang/String;Lcom/koushikdutta/async/http/a$b;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/i<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/a$c;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/a$c;Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$10;->d:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$10;->a:Lcom/koushikdutta/async/http/a$c;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$10;->b:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$10;->c:Ljava/io/File;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelCleanup()V
    .locals 2

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$10;->a:Lcom/koushikdutta/async/http/a$c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/e;

    new-instance v1, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v1}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/e;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 568
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$10;->a:Lcom/koushikdutta/async/http/a$c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/e;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/e;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$10;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :catch_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$10;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
