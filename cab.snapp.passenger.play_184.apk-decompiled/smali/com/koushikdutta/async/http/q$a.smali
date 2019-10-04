.class final Lcom/koushikdutta/async/http/q$a;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/q$a;Ljava/lang/Exception;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/q$a;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static create(Lcom/koushikdutta/async/h;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/q$a;
    .locals 2

    .line 49
    new-instance v0, Lcom/koushikdutta/async/http/q$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/q$a;-><init>()V

    .line 52
    new-instance v1, Lcom/koushikdutta/async/http/q$a$1;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/http/q$a$1;-><init>(Lcom/koushikdutta/async/http/q$a;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-object v0
.end method
