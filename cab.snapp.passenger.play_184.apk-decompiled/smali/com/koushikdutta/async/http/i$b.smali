.class final Lcom/koushikdutta/async/http/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/j;

.field b:J

.field final synthetic c:Lcom/koushikdutta/async/http/i;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/j;)V
    .locals 2

    .line 99
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$b;->c:Lcom/koushikdutta/async/http/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/i$b;->b:J

    .line 100
    iput-object p2, p0, Lcom/koushikdutta/async/http/i$b;->a:Lcom/koushikdutta/async/j;

    return-void
.end method
