.class final Lcom/koushikdutta/async/z$b;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "Lcom/koushikdutta/async/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/koushikdutta/async/z$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/z$f<",
            "Lcom/koushikdutta/async/l;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    if-lez p1, :cond_0

    .line 89
    iput-object p2, p0, Lcom/koushikdutta/async/z$b;->a:Lcom/koushikdutta/async/z$f;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length should be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/koushikdutta/async/z$b;->a:Lcom/koushikdutta/async/z$f;

    iget v0, p0, Lcom/koushikdutta/async/z$b;->c:I

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->get(I)Lcom/koushikdutta/async/l;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/z$f;->parsed(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
