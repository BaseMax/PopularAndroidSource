.class final Lcom/koushikdutta/async/http/n$1;
.super Lcom/koushikdutta/async/http/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/n;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/http/n$1;->a:Lcom/koushikdutta/async/http/n;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/s;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/koushikdutta/async/e/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/e/h;-><init>()V

    return-object v0
.end method
