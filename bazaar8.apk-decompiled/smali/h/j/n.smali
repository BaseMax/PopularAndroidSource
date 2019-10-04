.class public final Lh/j/n;
.super Ljava/lang/Object;
.source "_Sequences.kt"

# interfaces
.implements Lh/j/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/j/o;->a(Lh/j/d;Ljava/util/Comparator;)Lh/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/j/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh/j/d;

.field public final synthetic b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lh/j/d;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/j/d<",
            "+TT;>;",
            "Ljava/util/Comparator;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lh/j/n;->a:Lh/j/d;

    iput-object p2, p0, Lh/j/n;->b:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh/j/n;->a:Lh/j/d;

    invoke-static {v0}, Lh/j/o;->d(Lh/j/d;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lh/j/n;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lh/a/p;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
