.class public final Lh/j/m;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lh/f/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/j/o;->b(Lh/j/d;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lh/f/b/a/a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh/j/d;


# direct methods
.method public constructor <init>(Lh/j/d;)V
    .locals 0

    iput-object p1, p0, Lh/j/m;->a:Lh/j/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    iget-object v0, p0, Lh/j/m;->a:Lh/j/d;

    invoke-interface {v0}, Lh/j/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
