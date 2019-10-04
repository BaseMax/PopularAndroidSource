.class final Lcom/koushikdutta/async/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/l;

.field final synthetic b:Lcom/koushikdutta/async/c/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/c/b$2;->b:Lcom/koushikdutta/async/c/b;

    iput-object p2, p0, Lcom/koushikdutta/async/c/b$2;->a:Lcom/koushikdutta/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/koushikdutta/async/c/b$2;->a:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    return-void
.end method
