.class public Lj/H;
.super Lj/a/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/P$a;)I
    .locals 0

    .line 8
    iget p1, p1, Lj/P$a;->c:I

    return p1
.end method

.method public a(Lj/p;Lj/a;Lj/a/b/f;Lj/T;)Lj/a/b/c;
    .locals 0

    .line 4
    invoke-virtual {p1, p2, p3, p4}, Lj/p;->a(Lj/a;Lj/a/b/f;Lj/T;)Lj/a/b/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lj/p;)Lj/a/b/d;
    .locals 0

    .line 7
    iget-object p1, p1, Lj/p;->f:Lj/a/b/d;

    return-object p1
.end method

.method public a(Lj/i;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 10
    check-cast p1, Lj/K;

    invoke-virtual {p1, p2}, Lj/K;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public a(Lj/p;Lj/a;Lj/a/b/f;)Ljava/net/Socket;
    .locals 0

    .line 6
    invoke-virtual {p1, p2, p3}, Lj/p;->a(Lj/a;Lj/a/b/f;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public a(Lj/C$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lj/C$a;->b(Ljava/lang/String;)Lj/C$a;

    return-void
.end method

.method public a(Lj/C$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3}, Lj/C$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/C$a;

    return-void
.end method

.method public a(Lj/q;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 9
    invoke-virtual {p1, p2, p3}, Lj/q;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public a(Lj/a;Lj/a;)Z
    .locals 0

    .line 5
    invoke-virtual {p1, p2}, Lj/a;->a(Lj/a;)Z

    move-result p1

    return p1
.end method

.method public a(Lj/p;Lj/a/b/c;)Z
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Lj/p;->a(Lj/a/b/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lj/p;Lj/a/b/c;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lj/p;->b(Lj/a/b/c;)V

    return-void
.end method
