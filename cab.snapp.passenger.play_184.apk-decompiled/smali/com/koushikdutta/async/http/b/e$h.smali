.class final Lcom/koushikdutta/async/http/b/e$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/io/File;

.field c:[Ljava/io/FileOutputStream;

.field d:Z

.field final synthetic e:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/b/e;Ljava/lang/String;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$h;->e:Lcom/koushikdutta/async/http/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p2, p0, Lcom/koushikdutta/async/http/b/e$h;->a:Ljava/lang/String;

    .line 809
    invoke-static {p1}, Lcom/koushikdutta/async/http/b/e;->b(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/e/c;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/e/c;->getTempFiles(I)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$h;->b:[Ljava/io/File;

    new-array p1, p2, [Ljava/io/FileOutputStream;

    .line 810
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$h;->c:[Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method final a(I)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$h;->c:[Ljava/io/FileOutputStream;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 824
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/b/e$h;->b:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v0, p1

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$h;->c:[Ljava/io/FileOutputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final a()V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$h;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 830
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$h;->b:[Ljava/io/File;

    invoke-static {v0}, Lcom/koushikdutta/async/e/c;->removeFiles([Ljava/io/File;)V

    .line 831
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$h;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$h;->e:Lcom/koushikdutta/async/http/b/e;

    invoke-static {v0}, Lcom/koushikdutta/async/http/b/e;->d(Lcom/koushikdutta/async/http/b/e;)I

    const/4 v0, 0x1

    .line 834
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$h;->d:Z

    return-void
.end method
