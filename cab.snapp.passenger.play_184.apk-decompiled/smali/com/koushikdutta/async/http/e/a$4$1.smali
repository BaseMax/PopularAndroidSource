.class final Lcom/koushikdutta/async/http/e/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a$4;->onRequest(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e/d;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lcom/koushikdutta/async/http/e/a$4;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a$4;Lcom/koushikdutta/async/http/e/d;Ljava/io/InputStream;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$4$1;->c:Lcom/koushikdutta/async/http/e/a$4;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/a$4$1;->a:Lcom/koushikdutta/async/http/e/d;

    iput-object p3, p0, Lcom/koushikdutta/async/http/e/a$4$1;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 425
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$4$1;->a:Lcom/koushikdutta/async/http/e/d;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/d;->end()V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    .line 426
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$4$1;->b:Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method
