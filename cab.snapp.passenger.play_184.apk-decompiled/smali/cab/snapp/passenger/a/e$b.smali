.class final Lcab/snapp/passenger/a/e$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0310

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/e$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method