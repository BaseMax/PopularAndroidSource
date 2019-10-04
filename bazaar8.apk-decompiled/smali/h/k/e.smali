.class public final Lh/k/e;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lh/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/j/d<",
        "Lh/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lh/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/c<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILh/f/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lh/f/a/c<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/k/e;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lh/k/e;->b:I

    iput p3, p0, Lh/k/e;->c:I

    iput-object p4, p0, Lh/k/e;->d:Lh/f/a/c;

    return-void
.end method

.method public static final synthetic a(Lh/k/e;)Lh/f/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/k/e;->d:Lh/f/a/c;

    return-object p0
.end method

.method public static final synthetic b(Lh/k/e;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/k/e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lh/k/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lh/k/e;->c:I

    return p0
.end method

.method public static final synthetic d(Lh/k/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lh/k/e;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lh/h/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/k/d;

    invoke-direct {v0, p0}, Lh/k/d;-><init>(Lh/k/e;)V

    return-object v0
.end method
