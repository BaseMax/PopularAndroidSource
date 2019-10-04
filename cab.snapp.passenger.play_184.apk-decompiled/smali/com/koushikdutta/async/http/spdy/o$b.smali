.class final Lcom/koushikdutta/async/http/spdy/o$b;
.super Lcom/koushikdutta/async/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/g<",
        "Lcom/koushikdutta/async/http/spdy/a;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lcom/koushikdutta/async/b/h;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;-><init>()V

    .line 133
    new-instance v0, Lcom/koushikdutta/async/b/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/h;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$b;->c:Lcom/koushikdutta/async/b/h;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/o$b;-><init>()V

    return-void
.end method
