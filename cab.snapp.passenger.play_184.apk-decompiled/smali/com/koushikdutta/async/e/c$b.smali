.class final Lcom/koushikdutta/async/e/c$b;
.super Lcom/koushikdutta/async/e/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/e/f<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/e/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/e/c;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/e/c;)V
    .locals 2

    .line 204
    iput-object p1, p0, Lcom/koushikdutta/async/e/c$b;->a:Lcom/koushikdutta/async/e/c;

    .line 205
    iget-wide v0, p1, Lcom/koushikdutta/async/e/c;->g:J

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/e/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/koushikdutta/async/e/c$a;

    check-cast p4, Lcom/koushikdutta/async/e/c$a;

    .line 1215
    invoke-super {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/e/f;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p4, :cond_0

    .line 1218
    iget-object p1, p0, Lcom/koushikdutta/async/e/c$b;->a:Lcom/koushikdutta/async/e/c;

    iget-boolean p1, p1, Lcom/koushikdutta/async/e/c;->i:Z

    if-nez p1, :cond_0

    .line 1220
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/koushikdutta/async/e/c$b;->a:Lcom/koushikdutta/async/e/c;

    iget-object p3, p3, Lcom/koushikdutta/async/e/c;->f:Ljava/io/File;

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2

    .line 203
    check-cast p2, Lcom/koushikdutta/async/e/c$a;

    .line 1210
    iget-object p1, p0, Lcom/koushikdutta/async/e/c$b;->a:Lcom/koushikdutta/async/e/c;

    iget-wide v0, p1, Lcom/koushikdutta/async/e/c;->d:J

    iget-wide p1, p2, Lcom/koushikdutta/async/e/c$a;->a:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method
