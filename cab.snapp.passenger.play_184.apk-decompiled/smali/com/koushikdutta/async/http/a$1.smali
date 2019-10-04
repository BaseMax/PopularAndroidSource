.class final Lcom/koushikdutta/async/http/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/d;

.field final synthetic b:I

.field final synthetic c:Lcom/koushikdutta/async/http/a$c;

.field final synthetic d:Lcom/koushikdutta/async/http/c/a;

.field final synthetic e:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$1;->e:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$1;->a:Lcom/koushikdutta/async/http/d;

    iput p3, p0, Lcom/koushikdutta/async/http/a$1;->b:I

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$1;->c:Lcom/koushikdutta/async/http/a$c;

    iput-object p5, p0, Lcom/koushikdutta/async/http/a$1;->d:Lcom/koushikdutta/async/http/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$1;->e:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$1;->a:Lcom/koushikdutta/async/http/d;

    iget v2, p0, Lcom/koushikdutta/async/http/a$1;->b:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/a$1;->c:Lcom/koushikdutta/async/http/a$c;

    iget-object v4, p0, Lcom/koushikdutta/async/http/a$1;->d:Lcom/koushikdutta/async/http/c/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/d;ILcom/koushikdutta/async/http/a$c;Lcom/koushikdutta/async/http/c/a;)V

    return-void
.end method
