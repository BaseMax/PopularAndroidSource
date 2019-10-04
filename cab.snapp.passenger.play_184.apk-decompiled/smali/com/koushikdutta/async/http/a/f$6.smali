.class final Lcom/koushikdutta/async/http/a/f$6;
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


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/koushikdutta/async/q;

.field final synthetic c:Lcom/koushikdutta/async/http/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    const-class v0, Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/a/f$6;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/q;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f$6;->c:Lcom/koushikdutta/async/http/a/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/f$6;->b:Lcom/koushikdutta/async/q;

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

    .line 172
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$6;->c:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a/f;->getBoundaryEnd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$6;->b:Lcom/koushikdutta/async/q;

    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    .line 174
    iget-object p2, p0, Lcom/koushikdutta/async/http/a/f$6;->c:Lcom/koushikdutta/async/http/a/f;

    iget v0, p2, Lcom/koushikdutta/async/http/a/f;->j:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Lcom/koushikdutta/async/http/a/f;->j:I

    .line 176
    sget-boolean p1, Lcom/koushikdutta/async/http/a/f$6;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$6;->c:Lcom/koushikdutta/async/http/a/f;

    iget p1, p1, Lcom/koushikdutta/async/http/a/f;->j:I

    iget-object p2, p0, Lcom/koushikdutta/async/http/a/f$6;->c:Lcom/koushikdutta/async/http/a/f;

    iget p2, p2, Lcom/koushikdutta/async/http/a/f;->k:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
