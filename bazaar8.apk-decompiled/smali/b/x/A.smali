.class public Lb/x/A;
.super Lb/y/a/N;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Lb/i/k/a;

.field public final h:Lb/i/k/a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb/y/a/N;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-super {p0}, Lb/y/a/N;->b()Lb/i/k/a;

    move-result-object v0

    iput-object v0, p0, Lb/x/A;->g:Lb/i/k/a;

    .line 3
    new-instance v0, Lb/x/z;

    invoke-direct {v0, p0}, Lb/x/z;-><init>(Lb/x/A;)V

    iput-object v0, p0, Lb/x/A;->h:Lb/i/k/a;

    .line 4
    iput-object p1, p0, Lb/x/A;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public b()Lb/i/k/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/A;->h:Lb/i/k/a;

    return-object v0
.end method
