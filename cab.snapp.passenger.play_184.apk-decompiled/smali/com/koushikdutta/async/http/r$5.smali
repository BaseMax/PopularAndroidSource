.class final Lcom/koushikdutta/async/http/r$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/koushikdutta/async/http/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const-class v0, Lcom/koushikdutta/async/http/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/r$5;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/koushikdutta/async/http/r;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 1

    .line 195
    sget-boolean p1, Lcom/koushikdutta/async/http/r$5;->a:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    iget-object v0, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    invoke-static {v0}, Lcom/koushikdutta/async/http/r;->c(Lcom/koushikdutta/async/http/r;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 196
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    invoke-static {p1}, Lcom/koushikdutta/async/http/r;->c(Lcom/koushikdutta/async/http/r;)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/r;->c(Lcom/koushikdutta/async/http/r;[B)[B

    .line 197
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    invoke-static {p1}, Lcom/koushikdutta/async/http/r;->d(Lcom/koushikdutta/async/http/r;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get([B)V

    .line 199
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    invoke-static {p1}, Lcom/koushikdutta/async/http/r;->e(Lcom/koushikdutta/async/http/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 202
    iget-object p2, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/r;->a(Ljava/lang/Exception;)V

    .line 203
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    :goto_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/r;->a(Lcom/koushikdutta/async/http/r;I)I

    .line 206
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$5;->b:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/r;->a()V

    return-void
.end method
