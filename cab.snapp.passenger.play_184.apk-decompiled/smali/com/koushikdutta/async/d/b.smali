.class public final Lcom/koushikdutta/async/d/b;
.super Lcom/koushikdutta/async/d/e;
.source "SourceFile"


# instance fields
.field a:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/h;Ljava/io/File;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/d/e;-><init>(Lcom/koushikdutta/async/h;)V

    .line 17
    iput-object p2, p0, Lcom/koushikdutta/async/d/b;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/async/d/e;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/d/b;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d/b;->setOutputStream(Ljava/io/OutputStream;)V

    :cond_0
    return-object v0
.end method
