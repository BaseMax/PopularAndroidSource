.class final Lcom/koushikdutta/async/b/h$1;
.super Lcom/koushikdutta/async/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/koushikdutta/async/b/h;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/h$1;->setComplete()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/c;
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/koushikdutta/async/b/h;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/h;

    move-result-object p1

    return-object p1
.end method
