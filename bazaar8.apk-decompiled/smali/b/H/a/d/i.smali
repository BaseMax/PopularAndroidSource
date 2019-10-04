.class public final Lb/H/a/d/i;
.super Lb/H/a/d/j;
.source "StatusRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/H/a/d/j;->a(Lb/H/a/m;Ljava/lang/String;)Lb/H/a/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/H/a/d/j<",
        "Ljava/util/List<",
        "Landroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb/H/a/m;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/H/a/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/d/i;->b:Lb/H/a/m;

    iput-object p2, p0, Lb/H/a/d/i;->c:Ljava/lang/String;

    invoke-direct {p0}, Lb/H/a/d/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/H/a/d/i;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/H/a/d/i;->b:Lb/H/a/m;

    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v0

    iget-object v1, p0, Lb/H/a/d/i;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/H/a/c/p;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    sget-object v1, Lb/H/a/c/o;->b:Lb/c/a/c/a;

    invoke-interface {v1, v0}, Lb/c/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
