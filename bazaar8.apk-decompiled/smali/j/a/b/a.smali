.class public final Lj/a/b/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lj/E;


# instance fields
.field public final a:Lj/I;


# direct methods
.method public constructor <init>(Lj/I;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a/b/a;->a:Lj/I;

    return-void
.end method


# virtual methods
.method public a(Lj/E$a;)Lj/P;
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Lj/a/c/h;

    .line 2
    invoke-virtual {v0}, Lj/a/c/h;->e()Lj/L;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lj/a/c/h;->i()Lj/a/b/f;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lj/L;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v4, p0, Lj/a/b/a;->a:Lj/I;

    invoke-virtual {v2, v4, p1, v3}, Lj/a/b/f;->a(Lj/I;Lj/E$a;Z)Lj/a/c/c;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Lj/a/b/f;->c()Lj/a/b/c;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Lj/a/c/h;->a(Lj/L;Lj/a/b/f;Lj/a/c/c;Lj/a/b/c;)Lj/P;

    move-result-object p1

    return-object p1
.end method
