.class public Lj/a/e/k$a;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lk/i;

.field public d:Lk/h;

.field public e:Lj/a/e/k$b;

.field public f:Lj/a/e/u;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lj/a/e/k$b;->a:Lj/a/e/k$b;

    iput-object v0, p0, Lj/a/e/k$a;->e:Lj/a/e/k$b;

    .line 3
    sget-object v0, Lj/a/e/u;->a:Lj/a/e/u;

    iput-object v0, p0, Lj/a/e/k$a;->f:Lj/a/e/u;

    .line 4
    iput-boolean p1, p0, Lj/a/e/k$a;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lj/a/e/k$a;
    .locals 0

    .line 6
    iput p1, p0, Lj/a/e/k$a;->h:I

    return-object p0
.end method

.method public a(Lj/a/e/k$b;)Lj/a/e/k$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lj/a/e/k$a;->e:Lj/a/e/k$b;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lk/i;Lk/h;)Lj/a/e/k$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/e/k$a;->a:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Lj/a/e/k$a;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lj/a/e/k$a;->c:Lk/i;

    .line 4
    iput-object p4, p0, Lj/a/e/k$a;->d:Lk/h;

    return-object p0
.end method

.method public a()Lj/a/e/k;
    .locals 1

    .line 7
    new-instance v0, Lj/a/e/k;

    invoke-direct {v0, p0}, Lj/a/e/k;-><init>(Lj/a/e/k$a;)V

    return-object v0
.end method
