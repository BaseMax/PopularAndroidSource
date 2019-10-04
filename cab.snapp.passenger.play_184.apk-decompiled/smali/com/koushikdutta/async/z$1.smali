.class final Lcom/koushikdutta/async/z$1;
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

    .line 179
    iput-object p1, p0, Lcom/koushikdutta/async/z$1;->a:Lcom/koushikdutta/async/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/koushikdutta/async/z$1;->a:Lcom/koushikdutta/async/z;

    invoke-static {p1}, Lcom/koushikdutta/async/z;->a(Lcom/koushikdutta/async/z;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
