.class final Lcom/koushikdutta/async/c/d$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c/d;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Lorg/a/a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/c/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/d;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/c/d$1;->a:Lcom/koushikdutta/async/c/d;

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

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 1024
    new-instance v0, Lorg/a/a;

    invoke-direct {v0, p1}, Lorg/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/c/d$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
