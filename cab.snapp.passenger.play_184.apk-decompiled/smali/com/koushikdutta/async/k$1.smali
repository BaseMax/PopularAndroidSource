.class final Lcom/koushikdutta/async/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/k;->setDataSink(Lcom/koushikdutta/async/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/k;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/k;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/k$1;->a:Lcom/koushikdutta/async/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteable()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/k$1;->a:Lcom/koushikdutta/async/k;

    invoke-static {v0}, Lcom/koushikdutta/async/k;->a(Lcom/koushikdutta/async/k;)V

    return-void
.end method
