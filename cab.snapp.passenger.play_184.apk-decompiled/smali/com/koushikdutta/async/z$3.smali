.class final Lcom/koushikdutta/async/z$3;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/z;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/z;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/koushikdutta/async/z$3;->a:Lcom/koushikdutta/async/z;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/koushikdutta/async/z$3;->a:Lcom/koushikdutta/async/z;

    invoke-static {p1}, Lcom/koushikdutta/async/z;->a(Lcom/koushikdutta/async/z;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method
