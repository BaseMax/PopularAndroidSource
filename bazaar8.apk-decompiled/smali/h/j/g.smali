.class public final Lh/j/g;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lh/j/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/j/h;->b(Lh/f/a/c;)Lh/j/d;
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
.field public final synthetic a:Lh/f/a/c;


# direct methods
.method public constructor <init>(Lh/f/a/c;)V
    .locals 0

    iput-object p1, p0, Lh/j/g;->a:Lh/f/a/c;

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
    iget-object v0, p0, Lh/j/g;->a:Lh/f/a/c;

    invoke-static {v0}, Lh/j/h;->a(Lh/f/a/c;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
