.class public final Lc/e/a/a/j/e/b$a;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lc/e/a/a/j/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/j$a;


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/e/b$a;->a:Lc/e/a/a/n/j$a;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/n/x;Lc/e/a/a/j/e/a/a;ILc/e/a/a/l/n;Lc/e/a/a/n/A;)Lc/e/a/a/j/e/c;
    .locals 7

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/e/b$a;->a:Lc/e/a/a/n/j$a;

    invoke-interface {v0}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object v6

    if-eqz p5, :cond_0

    .line 2
    invoke-interface {v6, p5}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    .line 3
    :cond_0
    new-instance p5, Lc/e/a/a/j/e/b;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lc/e/a/a/j/e/b;-><init>(Lc/e/a/a/n/x;Lc/e/a/a/j/e/a/a;ILc/e/a/a/l/n;Lc/e/a/a/n/j;)V

    return-object p5
.end method
