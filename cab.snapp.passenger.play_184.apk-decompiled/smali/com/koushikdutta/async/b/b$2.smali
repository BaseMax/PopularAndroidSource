.class final Lcom/koushikdutta/async/b/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Z

.field final synthetic c:Lcom/koushikdutta/async/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/koushikdutta/async/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/b/b$2;->b:Z

    return-void
.end method

.method constructor <init>(Lcom/koushikdutta/async/b/b;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/koushikdutta/async/b/b$2;->c:Lcom/koushikdutta/async/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b$2;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/koushikdutta/async/b/b$2;->a:Z

    .line 59
    sget-boolean v0, Lcom/koushikdutta/async/b/b$2;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/b/b$2;->c:Lcom/koushikdutta/async/b/b;

    invoke-static {v0}, Lcom/koushikdutta/async/b/b;->a(Lcom/koushikdutta/async/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/b$2;->c:Lcom/koushikdutta/async/b/b;

    invoke-static {v0}, Lcom/koushikdutta/async/b/b;->b(Lcom/koushikdutta/async/b/b;)Z

    if-nez p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/koushikdutta/async/b/b$2;->c:Lcom/koushikdutta/async/b/b;

    invoke-static {p1}, Lcom/koushikdutta/async/b/b;->c(Lcom/koushikdutta/async/b/b;)V

    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/b/b$2;->c:Lcom/koushikdutta/async/b/b;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/b/b;->a(Ljava/lang/Exception;)V

    return-void
.end method
