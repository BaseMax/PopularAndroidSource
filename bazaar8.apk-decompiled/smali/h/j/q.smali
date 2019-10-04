.class public final Lh/j/q;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lh/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh/j/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lh/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/j/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lh/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/j/d;Lh/f/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/j/d<",
            "+TT;>;",
            "Lh/f/a/b<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/j/q;->a:Lh/j/d;

    iput-object p2, p0, Lh/j/q;->b:Lh/f/a/b;

    return-void
.end method

.method public static final synthetic a(Lh/j/q;)Lh/j/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/j/q;->a:Lh/j/d;

    return-object p0
.end method

.method public static final synthetic b(Lh/j/q;)Lh/f/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/j/q;->b:Lh/f/a/b;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/j/p;

    invoke-direct {v0, p0}, Lh/j/p;-><init>(Lh/j/q;)V

    return-object v0
.end method
