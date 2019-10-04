.class final Lcom/koushikdutta/async/c/e$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c/e;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Lorg/a/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/c/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/e;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/c/e$1;->a:Lcom/koushikdutta/async/c/e;

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

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 1022
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/c/e$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
