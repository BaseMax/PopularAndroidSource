.class final Lcom/koushikdutta/async/z$c;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "Ljava/lang/Integer;",
            ">;"
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 35
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    .line 36
    iput-object p1, p0, Lcom/koushikdutta/async/z$c;->a:Lcom/koushikdutta/async/z$f;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/koushikdutta/async/z$c;->a:Lcom/koushikdutta/async/z$f;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/z$f;->parsed(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
