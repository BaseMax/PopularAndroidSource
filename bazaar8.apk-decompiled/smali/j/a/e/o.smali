.class public Lj/a/e/o;
.super Lj/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/e/k$d;->a(Lj/a/e/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj/a/e/v;

.field public final synthetic c:Lj/a/e/k$d;


# direct methods
.method public varargs constructor <init>(Lj/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;Lj/a/e/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/e/o;->c:Lj/a/e/k$d;

    iput-object p4, p0, Lj/a/e/o;->b:Lj/a/e/v;

    invoke-direct {p0, p2, p3}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/e/o;->c:Lj/a/e/k$d;

    iget-object v0, v0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v0, v0, Lj/a/e/k;->s:Lj/a/e/r;

    iget-object v1, p0, Lj/a/e/o;->b:Lj/a/e/v;

    invoke-virtual {v0, v1}, Lj/a/e/r;->a(Lj/a/e/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lj/a/e/o;->c:Lj/a/e/k$d;

    iget-object v0, v0, Lj/a/e/k$d;->c:Lj/a/e/k;

    invoke-static {v0}, Lj/a/e/k;->a(Lj/a/e/k;)V

    :goto_0
    return-void
.end method
