.class final Lcom/koushikdutta/async/z$d;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/z$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/z$f<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 68
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/z$d;->a:Lcom/koushikdutta/async/z$f;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 1

    .line 74
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/koushikdutta/async/z$d;->a:Lcom/koushikdutta/async/z$f;

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/z$f;->parsed(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 79
    :cond_0
    new-instance p2, Lcom/koushikdutta/async/z$a;

    iget-object v0, p0, Lcom/koushikdutta/async/z$d;->a:Lcom/koushikdutta/async/z$f;

    invoke-direct {p2, p1, v0}, Lcom/koushikdutta/async/z$a;-><init>(ILcom/koushikdutta/async/z$f;)V

    return-object p2
.end method
