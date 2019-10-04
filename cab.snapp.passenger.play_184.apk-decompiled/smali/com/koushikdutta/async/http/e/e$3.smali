.class final Lcom/koushikdutta/async/http/e/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/e;->sendStream(Ljava/io/InputStream;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/koushikdutta/async/http/e/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/e;Ljava/io/InputStream;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/e$3;->b:Lcom/koushikdutta/async/http/e/e;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/e$3;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    .line 296
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e$3;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 297
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$3;->b:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/e/e;->a()V

    return-void
.end method
