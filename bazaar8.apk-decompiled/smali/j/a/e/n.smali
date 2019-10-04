.class public Lj/a/e/n;
.super Lj/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/e/k$d;->a(ZLj/a/e/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj/a/e/k$d;


# direct methods
.method public varargs constructor <init>(Lj/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/e/n;->b:Lj/a/e/k$d;

    invoke-direct {p0, p2, p3}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/e/n;->b:Lj/a/e/k$d;

    iget-object v0, v0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v1, v0, Lj/a/e/k;->c:Lj/a/e/k$b;

    invoke-virtual {v1, v0}, Lj/a/e/k$b;->a(Lj/a/e/k;)V

    return-void
.end method
