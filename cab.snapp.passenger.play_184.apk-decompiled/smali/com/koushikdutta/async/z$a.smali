.class final Lcom/koushikdutta/async/z$a;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "[B>;"
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
            "[B>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    if-lez p1, :cond_0

    .line 52
    iput-object p2, p0, Lcom/koushikdutta/async/z$a;->a:Lcom/koushikdutta/async/z$f;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length should be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 0

    .line 57
    iget p1, p0, Lcom/koushikdutta/async/z$a;->c:I

    new-array p1, p1, [B

    .line 58
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get([B)V

    .line 59
    iget-object p2, p0, Lcom/koushikdutta/async/z$a;->a:Lcom/koushikdutta/async/z$f;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/z$f;->parsed(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
