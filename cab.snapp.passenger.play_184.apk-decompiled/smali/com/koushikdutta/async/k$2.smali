.class final Lcom/koushikdutta/async/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/k;->a(Lcom/koushikdutta/async/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/l;

.field final synthetic b:Z

.field final synthetic c:Lcom/koushikdutta/async/k;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/k;Lcom/koushikdutta/async/l;Z)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/koushikdutta/async/k$2;->c:Lcom/koushikdutta/async/k;

    iput-object p2, p0, Lcom/koushikdutta/async/k$2;->a:Lcom/koushikdutta/async/l;

    iput-boolean p3, p0, Lcom/koushikdutta/async/k$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/k$2;->c:Lcom/koushikdutta/async/k;

    iget-object v1, p0, Lcom/koushikdutta/async/k$2;->a:Lcom/koushikdutta/async/l;

    iget-boolean v2, p0, Lcom/koushikdutta/async/k$2;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/k;->a(Lcom/koushikdutta/async/l;Z)V

    return-void
.end method
