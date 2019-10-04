.class public Lb/D/N;
.super Ljava/lang/Object;
.source "TransitionValuesMaps.java"


# instance fields
.field public final a:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/f<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    iput-object v0, p0, Lb/D/N;->a:Lb/f/b;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lb/D/N;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lb/f/f;

    invoke-direct {v0}, Lb/f/f;-><init>()V

    iput-object v0, p0, Lb/D/N;->c:Lb/f/f;

    .line 5
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    iput-object v0, p0, Lb/D/N;->d:Lb/f/b;

    return-void
.end method
