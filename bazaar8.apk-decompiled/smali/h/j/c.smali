.class public final Lh/j/c;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lh/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh/j/d<",
        "TT;>;"
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

.field public final b:Z

.field public final c:Lh/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/b<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/j/d;ZLh/f/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/j/d<",
            "+TT;>;Z",
            "Lh/f/a/b<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/j/c;->a:Lh/j/d;

    iput-boolean p2, p0, Lh/j/c;->b:Z

    iput-object p3, p0, Lh/j/c;->c:Lh/f/a/b;

    return-void
.end method

.method public static final synthetic a(Lh/j/c;)Lh/f/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/j/c;->c:Lh/f/a/b;

    return-object p0
.end method

.method public static final synthetic b(Lh/j/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lh/j/c;->b:Z

    return p0
.end method

.method public static final synthetic c(Lh/j/c;)Lh/j/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/j/c;->a:Lh/j/d;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/j/b;

    invoke-direct {v0, p0}, Lh/j/b;-><init>(Lh/j/c;)V

    return-object v0
.end method
