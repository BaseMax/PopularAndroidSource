.class final Lcom/koushikdutta/async/http/a/f$5;
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
.field final synthetic a:Lcom/koushikdutta/async/http/a/g;

.field final synthetic b:Lcom/koushikdutta/async/q;

.field final synthetic c:Lcom/koushikdutta/async/http/a/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/http/a/g;Lcom/koushikdutta/async/q;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f$5;->c:Lcom/koushikdutta/async/http/a/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/f$5;->a:Lcom/koushikdutta/async/http/a/g;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a/f$5;->b:Lcom/koushikdutta/async/q;

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

    .line 146
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$5;->a:Lcom/koushikdutta/async/http/a/g;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a/g;->getRawHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object p1

    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$5;->c:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a/f;->getBoundaryStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$5;->b:Lcom/koushikdutta/async/q;

    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    .line 148
    iget-object p2, p0, Lcom/koushikdutta/async/http/a/f$5;->c:Lcom/koushikdutta/async/http/a/f;

    iget v0, p2, Lcom/koushikdutta/async/http/a/f;->j:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Lcom/koushikdutta/async/http/a/f;->j:I

    return-void
.end method
