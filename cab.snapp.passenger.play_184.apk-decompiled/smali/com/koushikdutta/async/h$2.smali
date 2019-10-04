.class final Lcom/koushikdutta/async/h$2;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->getByName(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Ljava/net/InetAddress;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/koushikdutta/async/h$2;->a:Lcom/koushikdutta/async/h;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic transform(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    check-cast p1, [Ljava/net/InetAddress;

    const/4 v0, 0x0

    .line 1477
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/h$2;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
