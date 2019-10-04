.class final Lcom/koushikdutta/async/http/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/a<",
            "Lcom/koushikdutta/async/http/b$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/koushikdutta/async/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/a<",
            "Lcom/koushikdutta/async/http/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/koushikdutta/async/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/i$a;->b:Lcom/koushikdutta/async/a;

    .line 109
    new-instance v0, Lcom/koushikdutta/async/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/i$a;->c:Lcom/koushikdutta/async/a;

    return-void
.end method
