.class final Lcom/koushikdutta/async/c/b$1;
.super Lcom/koushikdutta/async/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/i<",
        "Lcom/koushikdutta/async/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/n;

.field final synthetic b:Lcom/koushikdutta/async/c/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/n;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/c/b$1;->b:Lcom/koushikdutta/async/c/b;

    iput-object p2, p0, Lcom/koushikdutta/async/c/b$1;->a:Lcom/koushikdutta/async/n;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelCleanup()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/c/b$1;->a:Lcom/koushikdutta/async/n;

    invoke-interface {v0}, Lcom/koushikdutta/async/n;->close()V

    return-void
.end method
