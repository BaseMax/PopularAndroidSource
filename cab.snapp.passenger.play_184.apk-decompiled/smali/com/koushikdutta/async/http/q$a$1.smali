.class final Lcom/koushikdutta/async/http/q$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/q$a;->create(Lcom/koushikdutta/async/h;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/q$a;

.field final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/q$a;Ljava/lang/Exception;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/koushikdutta/async/http/q$a$1;->a:Lcom/koushikdutta/async/http/q$a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/q$a$1;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/q$a$1;->a:Lcom/koushikdutta/async/http/q$a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/q$a$1;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/q$a;->a(Lcom/koushikdutta/async/http/q$a;Ljava/lang/Exception;)V

    return-void
.end method
