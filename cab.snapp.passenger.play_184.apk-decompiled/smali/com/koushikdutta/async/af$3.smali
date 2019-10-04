.class final Lcom/koushikdutta/async/af$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/q;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/q;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/af$3;->a:Lcom/koushikdutta/async/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/af$3;->a:Lcom/koushikdutta/async/q;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    .line 128
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p2

    if-lez p2, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/koushikdutta/async/n;->pause()V

    :cond_0
    return-void
.end method
