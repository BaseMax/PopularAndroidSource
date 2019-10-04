.class final Lcom/koushikdutta/async/af$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/koushikdutta/async/af$4;->a:Lcom/koushikdutta/async/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteable()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/af$4;->a:Lcom/koushikdutta/async/n;

    invoke-interface {v0}, Lcom/koushikdutta/async/n;->resume()V

    return-void
.end method
