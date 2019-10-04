.class public Lcom/koushikdutta/async/http/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public request:Lcom/koushikdutta/async/http/d;

.field public state:Lcom/koushikdutta/async/e/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/koushikdutta/async/e/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/e/i;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/b$e;->state:Lcom/koushikdutta/async/e/i;

    return-void
.end method
