.class Lcom/koushikdutta/ion/IonRequestBuilder$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->asByteArray()Lcom/koushikdutta/ion/future/ResponseFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$7;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 730
    const-class v0, [B

    return-object v0
.end method

.method public parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/n;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "[B>;"
        }
    .end annotation

    .line 714
    new-instance v0, Lcom/koushikdutta/async/c/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$7$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$7$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$7;)V

    .line 715
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 711
    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder$7;->write(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public write(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V
    .locals 2

    .line 725
    new-instance v0, Lcom/koushikdutta/async/c/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/b;-><init>()V

    new-instance v1, Lcom/koushikdutta/async/l;

    invoke-direct {v1, p2}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/koushikdutta/async/c/b;->write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
