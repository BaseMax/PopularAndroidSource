.class final Lcom/koushikdutta/async/z$g;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/z;

.field private final b:Lcom/koushikdutta/async/ad;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/z;Lcom/koushikdutta/async/ad;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/koushikdutta/async/z$g;->a:Lcom/koushikdutta/async/z;

    const/4 p1, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    .line 162
    iput-object p2, p0, Lcom/koushikdutta/async/z$g;->b:Lcom/koushikdutta/async/ad;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/koushikdutta/async/z$g;->b:Lcom/koushikdutta/async/ad;

    invoke-static {p1}, Lcom/koushikdutta/async/z;->a(Lcom/koushikdutta/async/ad;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 170
    :try_start_0
    iget-object p2, p0, Lcom/koushikdutta/async/z$g;->b:Lcom/koushikdutta/async/ad;

    iget-object v0, p0, Lcom/koushikdutta/async/z$g;->a:Lcom/koushikdutta/async/z;

    invoke-static {v0}, Lcom/koushikdutta/async/z;->a(Lcom/koushikdutta/async/z;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :catch_0
    iget-object p1, p0, Lcom/koushikdutta/async/z$g;->a:Lcom/koushikdutta/async/z;

    invoke-static {p1}, Lcom/koushikdutta/async/z;->a(Lcom/koushikdutta/async/z;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    return-object p1
.end method
