.class public Lb/y/a/V$a;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y/a/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "Lb/y/a/V$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Landroidx/recyclerview/widget/RecyclerView$f$c;

.field public d:Landroidx/recyclerview/widget/RecyclerView$f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/i/j/f;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lb/i/j/f;-><init>(I)V

    sput-object v0, Lb/y/a/V$a;->a:Lb/i/j/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 5
    :goto_0
    sget-object v0, Lb/y/a/V$a;->a:Lb/i/j/e;

    invoke-interface {v0}, Lb/i/j/e;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lb/y/a/V$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lb/y/a/V$a;->b:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/y/a/V$a;->c:Landroidx/recyclerview/widget/RecyclerView$f$c;

    .line 3
    iput-object v0, p0, Lb/y/a/V$a;->d:Landroidx/recyclerview/widget/RecyclerView$f$c;

    .line 4
    sget-object v0, Lb/y/a/V$a;->a:Lb/i/j/e;

    invoke-interface {v0, p0}, Lb/i/j/e;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Lb/y/a/V$a;
    .locals 1

    .line 1
    sget-object v0, Lb/y/a/V$a;->a:Lb/i/j/e;

    invoke-interface {v0}, Lb/i/j/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/y/a/V$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/y/a/V$a;

    invoke-direct {v0}, Lb/y/a/V$a;-><init>()V

    :cond_0
    return-object v0
.end method
