.class final Lcom/koushikdutta/async/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c;->write(Lcom/koushikdutta/async/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/l;

.field final synthetic b:Lcom/koushikdutta/async/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/koushikdutta/async/c$1;->b:Lcom/koushikdutta/async/c;

    iput-object p2, p0, Lcom/koushikdutta/async/c$1;->a:Lcom/koushikdutta/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/c$1;->b:Lcom/koushikdutta/async/c;

    iget-object v1, p0, Lcom/koushikdutta/async/c$1;->a:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/c;->write(Lcom/koushikdutta/async/l;)V

    return-void
.end method
