.class public Lf/a/a/a/b/d;
.super Ljava/lang/Object;
.source "PreCache.java"

# interfaces
.implements Lf/a/a/c/b/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/b/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/a/b/e;


# direct methods
.method public constructor <init>(Lf/a/a/a/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/b/d;->a:Lf/a/a/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lf/a/a/a/b/d;->a:Lf/a/a/a/b/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lf/a/a/a/b/e;->b(Lf/a/a/a/b/e;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/a/b/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/a/b/d;->a:Lf/a/a/a/b/e;

    invoke-static {v0, p1}, Lf/a/a/a/b/e;->a(Lf/a/a/a/b/e;Ljava/lang/Object;)V

    return-void
.end method
