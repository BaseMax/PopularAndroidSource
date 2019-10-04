.class final Lcom/koushikdutta/async/http/b/e$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/b/e$c;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b/e$c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/b/e$c;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$c$2;->a:Lcom/koushikdutta/async/http/b/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$c$2;->a:Lcom/koushikdutta/async/http/b/e$c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e$c;->close()V

    return-void
.end method
