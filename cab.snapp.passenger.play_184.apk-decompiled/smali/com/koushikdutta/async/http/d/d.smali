.class public Lcom/koushikdutta/async/http/d/d;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"


# static fields
.field static final synthetic g:Z


# instance fields
.field d:J

.field e:J

.field f:Lcom/koushikdutta/async/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lcom/koushikdutta/async/http/d/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/d/d;->g:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 21
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/d/d;->f:Lcom/koushikdutta/async/l;

    .line 9
    iput-wide p1, p0, Lcom/koushikdutta/async/http/d/d;->d:J

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 5

    .line 24
    sget-boolean v0, Lcom/koushikdutta/async/http/d/d;->g:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/koushikdutta/async/http/d/d;->e:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/d/d;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    .line 27
    iget-wide v1, p0, Lcom/koushikdutta/async/http/d/d;->d:J

    iget-wide v3, p0, Lcom/koushikdutta/async/http/d/d;->e:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/koushikdutta/async/http/d/d;->f:Lcom/koushikdutta/async/l;

    long-to-int v1, v0

    invoke-virtual {p2, v2, v1}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/d;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/koushikdutta/async/http/d/d;->f:Lcom/koushikdutta/async/l;

    invoke-super {p0, p1, v1}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 35
    iget-wide v1, p0, Lcom/koushikdutta/async/http/d/d;->e:J

    iget-object p1, p0, Lcom/koushikdutta/async/http/d/d;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/async/http/d/d;->e:J

    .line 36
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/d;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    .line 38
    iget-wide p1, p0, Lcom/koushikdutta/async/http/d/d;->e:J

    iget-wide v0, p0, Lcom/koushikdutta/async/http/d/d;->d:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/d;->report(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 5

    if-nez p1, :cond_0

    .line 14
    iget-wide v0, p0, Lcom/koushikdutta/async/http/d/d;->e:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/d/d;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 15
    new-instance p1, Lcom/koushikdutta/async/http/d/h;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of data reached before content length was read: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/koushikdutta/async/http/d/d;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/koushikdutta/async/http/d/d;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d/d;->isPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/d/h;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/v;->report(Ljava/lang/Exception;)V

    return-void
.end method
