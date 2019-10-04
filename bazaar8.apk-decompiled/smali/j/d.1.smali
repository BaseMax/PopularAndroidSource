.class public Lj/d;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lj/a/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/f;


# direct methods
.method public constructor <init>(Lj/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/d;->a:Lj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/P;)Lj/a/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/d;->a:Lj/f;

    invoke-virtual {v0, p1}, Lj/f;->a(Lj/P;)Lj/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lj/d;->a:Lj/f;

    invoke-virtual {v0}, Lj/f;->s()V

    return-void
.end method

.method public a(Lj/L;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/d;->a:Lj/f;

    invoke-virtual {v0, p1}, Lj/f;->b(Lj/L;)V

    return-void
.end method

.method public a(Lj/P;Lj/P;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lj/d;->a:Lj/f;

    invoke-virtual {v0, p1, p2}, Lj/f;->a(Lj/P;Lj/P;)V

    return-void
.end method

.method public a(Lj/a/a/d;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lj/d;->a:Lj/f;

    invoke-virtual {v0, p1}, Lj/f;->a(Lj/a/a/d;)V

    return-void
.end method

.method public b(Lj/L;)Lj/P;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/d;->a:Lj/f;

    invoke-virtual {v0, p1}, Lj/f;->a(Lj/L;)Lj/P;

    move-result-object p1

    return-object p1
.end method
