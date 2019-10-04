.class public Lc/b/a/c/c/u$a;
.super Ljava/lang/Object;
.source "ModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/b/a/c/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/a/d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/c;Lc/b/a/c/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/a/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lc/b/a/c/c/u$a;-><init>(Lc/b/a/c/c;Ljava/util/List;Lc/b/a/c/a/d;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/c;Ljava/util/List;Lc/b/a/c/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Ljava/util/List<",
            "Lc/b/a/c/c;",
            ">;",
            "Lc/b/a/c/a/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/c;

    iput-object p1, p0, Lc/b/a/c/c/u$a;->a:Lc/b/a/c/c;

    .line 4
    invoke-static {p2}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lc/b/a/c/c/u$a;->b:Ljava/util/List;

    .line 5
    invoke-static {p3}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lc/b/a/c/a/d;

    iput-object p3, p0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    return-void
.end method
