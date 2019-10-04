.class final Lcom/koushikdutta/async/z$e;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "Lcom/koushikdutta/async/l;",
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
            "Lcom/koushikdutta/async/l;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 103
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    .line 104
    iput-object p1, p0, Lcom/koushikdutta/async/z$e;->a:Lcom/koushikdutta/async/z$f;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 1

    .line 109
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p1

    .line 110
    new-instance p2, Lcom/koushikdutta/async/z$b;

    iget-object v0, p0, Lcom/koushikdutta/async/z$e;->a:Lcom/koushikdutta/async/z$f;

    invoke-direct {p2, p1, v0}, Lcom/koushikdutta/async/z$b;-><init>(ILcom/koushikdutta/async/z$f;)V

    return-object p2
.end method
