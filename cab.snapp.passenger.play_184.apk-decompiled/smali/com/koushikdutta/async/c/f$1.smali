.class final Lcom/koushikdutta/async/c/f$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c/f;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/c/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/f;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/c/f$1;->b:Lcom/koushikdutta/async/c/f;

    iput-object p2, p0, Lcom/koushikdutta/async/c/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic transform(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    check-cast p1, Lcom/koushikdutta/async/l;

    .line 1033
    iget-object v0, p0, Lcom/koushikdutta/async/c/f$1;->b:Lcom/koushikdutta/async/c/f;

    iget-object v0, v0, Lcom/koushikdutta/async/c/f;->a:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/koushikdutta/async/c/f$1;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1035
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1036
    :cond_0
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/l;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/c/f$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
