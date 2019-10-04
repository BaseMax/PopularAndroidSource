.class final Lme/a/a/a/a/a/d$1;
.super Lme/a/a/a/a/a/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/a/a/a/a/a/d;->a(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/a/a/a/a/a/d;


# direct methods
.method constructor <init>(Lme/a/a/a/a/a/d;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lme/a/a/a/a/a/d$1;->a:Lme/a/a/a/a/a/d;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lme/a/a/a/a/a/d$d;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;B)V

    return-void
.end method


# virtual methods
.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lme/a/a/a/a/a/d$1;->a:Lme/a/a/a/a/a/d;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lme/a/a/a/a/a/d;->c:Z

    .line 84
    invoke-super {p0, p1, p2}, Lme/a/a/a/a/a/d$d;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
