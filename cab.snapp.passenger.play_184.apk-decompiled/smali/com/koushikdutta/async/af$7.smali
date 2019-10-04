.class final Lcom/koushikdutta/async/af$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/af;->pump(Ljava/io/File;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/koushikdutta/async/af$7;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/koushikdutta/async/af$7;->b:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/af$7;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/af$7;->b:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 186
    iget-object v0, p0, Lcom/koushikdutta/async/af$7;->b:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
