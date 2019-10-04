.class public Lb/y/a/u$b;
.super Ljava/lang/Object;
.source "GapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/y/a/u$b;->a:Z

    .line 2
    iput v0, p0, Lb/y/a/u$b;->b:I

    .line 3
    iput v0, p0, Lb/y/a/u$b;->c:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lb/y/a/u$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput v0, p0, Lb/y/a/u$b;->e:I

    return-void
.end method
