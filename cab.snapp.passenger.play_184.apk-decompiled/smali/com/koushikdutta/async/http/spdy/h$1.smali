.class final Lcom/koushikdutta/async/http/spdy/h$1;
.super Ljava/util/zip/Inflater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/h;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/h$1;->a:Lcom/koushikdutta/async/http/spdy/h;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/h$1;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object v0, Lcom/koushikdutta/async/http/spdy/n;->a:[B

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/spdy/h$1;->setDictionary([B)V

    .line 25
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_0
    return v0
.end method
