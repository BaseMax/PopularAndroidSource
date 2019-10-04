.class public Lcom/koushikdutta/async/http/b$c;
.super Lcom/koushikdutta/async/http/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public receiveHeadersCallback:Lcom/koushikdutta/async/a/a;

.field public response:Lcom/koushikdutta/async/http/b$h;

.field public sendHeadersCallback:Lcom/koushikdutta/async/a/a;

.field public socket:Lcom/koushikdutta/async/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/koushikdutta/async/http/b$a;-><init>()V

    return-void
.end method
