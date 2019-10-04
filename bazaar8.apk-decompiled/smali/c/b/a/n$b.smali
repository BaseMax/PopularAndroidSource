.class public Lc/b/a/n$b;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lc/b/a/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/b/a/d/p;


# direct methods
.method public constructor <init>(Lc/b/a/d/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n$b;->a:Lc/b/a/d/p;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lc/b/a/n$b;->a:Lc/b/a/d/p;

    invoke-virtual {p1}, Lc/b/a/d/p;->c()V

    :cond_0
    return-void
.end method
