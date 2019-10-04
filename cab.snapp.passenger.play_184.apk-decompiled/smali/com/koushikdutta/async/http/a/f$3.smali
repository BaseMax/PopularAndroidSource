.class final Lcom/koushikdutta/async/http/a/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/f;->write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/q;

.field final synthetic b:Lcom/koushikdutta/async/http/a/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/q;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f$3;->b:Lcom/koushikdutta/async/http/a/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/f$3;->a:Lcom/koushikdutta/async/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContinue(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "\r\n"

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$3;->a:Lcom/koushikdutta/async/q;

    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    .line 165
    iget-object p2, p0, Lcom/koushikdutta/async/http/a/f$3;->b:Lcom/koushikdutta/async/http/a/f;

    iget v0, p2, Lcom/koushikdutta/async/http/a/f;->j:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Lcom/koushikdutta/async/http/a/f;->j:I

    return-void
.end method
