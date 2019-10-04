.class public Lcom/squareup/picasso/NetworkRequestHandler;
.super Lc/f/a/I;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;,
        Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;
    }
.end annotation


# instance fields
.field public final a:Lc/f/a/r;

.field public final b:Lc/f/a/L;


# direct methods
.method public constructor <init>(Lc/f/a/r;Lc/f/a/L;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/f/a/I;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/NetworkRequestHandler;->a:Lc/f/a/r;

    .line 3
    iput-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->b:Lc/f/a/L;

    return-void
.end method

.method public static b(Lc/f/a/G;I)Lj/L;
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p1}, Lcom/squareup/picasso/NetworkPolicy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lj/h;->b:Lj/h;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lj/h$a;

    invoke-direct {v0}, Lj/h$a;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/squareup/picasso/NetworkPolicy;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lj/h$a;->b()Lj/h$a;

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/squareup/picasso/NetworkPolicy;->c(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lj/h$a;->c()Lj/h$a;

    .line 8
    :cond_2
    invoke-virtual {v0}, Lj/h$a;->a()Lj/h;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    :goto_0
    new-instance v0, Lj/L$a;

    invoke-direct {v0}, Lj/L$a;-><init>()V

    iget-object p0, p0, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj/L$a;->b(Ljava/lang/String;)Lj/L$a;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Lj/L$a;->a(Lj/h;)Lj/L$a;

    .line 11
    :cond_4
    invoke-virtual {v0}, Lj/L$a;->a()Lj/L;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lc/f/a/G;I)Lc/f/a/I$a;
    .locals 5

    .line 3
    invoke-static {p1, p2}, Lcom/squareup/picasso/NetworkRequestHandler;->b(Lc/f/a/G;I)Lj/L;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/squareup/picasso/NetworkRequestHandler;->a:Lc/f/a/r;

    invoke-interface {v0, p2}, Lc/f/a/r;->a(Lj/L;)Lj/P;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lj/P;->s()Lj/S;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lj/P;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p2}, Lj/P;->u()Lj/P;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 8
    :goto_0
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    const-wide/16 v1, 0x0

    if-ne p1, p2, :cond_2

    invoke-virtual {v0}, Lj/S;->u()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lj/S;->close()V

    .line 10
    new-instance p1, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    :goto_1
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne p1, p2, :cond_3

    invoke-virtual {v0}, Lj/S;->u()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_3

    .line 12
    iget-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->b:Lc/f/a/L;

    invoke-virtual {v0}, Lj/S;->u()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lc/f/a/L;->a(J)V

    .line 13
    :cond_3
    new-instance p2, Lc/f/a/I$a;

    invoke-virtual {v0}, Lj/S;->w()Lk/i;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lc/f/a/I$a;-><init>(Lk/z;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object p2

    .line 14
    :cond_4
    invoke-virtual {v0}, Lj/S;->close()V

    .line 15
    new-instance v0, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;

    invoke-virtual {p2}, Lj/P;->v()I

    move-result p2

    iget p1, p1, Lc/f/a/G;->d:I

    invoke-direct {v0, p2, p1}, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;-><init>(II)V

    throw v0
.end method

.method public a(Lc/f/a/G;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
